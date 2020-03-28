compare <- function(x, y, path = "x") {
  out <- compare_rec(x, y, path = path)
  glue("* {out}")
}

compare_rec <- function(x, y, path = "x") {

  if (is_reference(x, y)) {
    return(character())
  }

  # exceptions:
  # * integer & double & !is.null(tolerance)
  # * atomic & absent | absent & atomic
  if (type_of(x) != type_of(y)) {
    return(glue("`{path}` should be {friendly_type_of(y)}, not {friendly_type_of(x)}"))
  }

  out <- character()

  x_attr <- attrs(x)
  y_attr <- attrs(y)
  if (!is.null(x_attr) || !is.null(y_attr)) {
    names <- union(names(x_attr), names(y_attr))
    out <- c(out, compare_list(x_attr, y_attr, names, attr_path(path, names)))
  }

  if (is_list(x)) {
    if (is_named(x) && is_named(y)) {
      idx <- union(names(x), names(y))
      path <- glue("{path}${idx}")
    } else {
      idx <- seq_len(max(length(x), length(y)))
      path <- glue("{path}[[{idx}]]")
    }
    out <- c(out, compare_list(x, y, idx, path))
  } else if (is_environment(x)) {
    out <- c(out,
      glue("`{path}` should be <environment:{env_label(y)}>, not <environment:{env_label(x)}`")
    )
  } else if (is_closure(x)) {
    out <- c(
      out,
      compare_rec(fn_body(x), fn_body(y), glue("body({path})")),
      compare_rec(fn_fmls(x), fn_fmls(y), glue("formals({path})")),
      compare_rec(fn_env(x), fn_env(y), glue("environment({path})"))
    )
  } else if (is_primitive(x)) {
    out <- c(out, glue("`{path}` should be `{deparse(y)}`, not `{deparse(x)}`"))
  } else if (is_symbol(x)) {
    out <- c(out, glue("`{path}` should be `{deparse(y)}`, not `{deparse(x)}`"))
  } else if (is_call(x)) {
    if (!identical(x, y)) {
      # compare deparse
      # if that's equal :shrug:
    }
  } else if (is_atomic(x)) {
    out <- c(out, compare_value(x, y, path))
  }

  out
}

compare_value <- function(x, y, path) {
  attributes(x) <- NULL
  attributes(y) <- NULL

  diff <- diffobj::ses(x, y)
  if (length(diff) > 0) {
    diff <- paste0(path, ": ", paste0(diff, collapse = " "))
  }
  diff
}

type_of <- function(x) {
  if (is_missing(x)) {
    "MISSING"
  } else {
    typeof(x)
  }
}
friendly_type_of <- function(x) {
  if (is_missing(x)) {
    "absent"
  } else {
    friendly_type(typeof(x))
  }
}

attrs <- function(x) {
  out <- attributes(x)
  out[["srcref"]] <- NULL
  if (is.data.frame(x)) {
    out$row.names <- .row_names_info(x, 0L)
  }
  out
}

compare_list <- function(x, y, idx, path) {
  out <- lapply(seq_along(idx), function(i) {
    compare_rec(list_extract(x, idx[[i]]), list_extract(y, idx[[i]]), path[[i]])
  })
  unlist(out, recursive = FALSE)
}

list_extract <- function(x, i) {
  if (is.integer(i)) {
    if (i > length(x)) {
      missing_arg()
    } else {
      x[[i]]
    }
  } else if (is.character(i)) {
    if (!has_name(x, i)) {
      missing_arg()
    } else {
      x[[i]]
    }
  }
}

attr_path <- function(path, attr) {
  # from ?attributes, excluding row.names() because it's not a simple accessor
  funs <- c("comment", "class", "dim", "dimnames", "levels", "names", "tsp")
  ifelse(attr %in% funs, glue("{attr}({path})"), glue("attr({path}, '{attr}')"))
}
