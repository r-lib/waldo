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
    return(glue("`{path}` should be {friendly_type_of(y)}{short_val(y)}, not {friendly_type_of(x)}{short_val(x)}"))
  }

  out <- character()

  x_attr <- attrs(x)
  y_attr <- attrs(y)
  if (!is.null(x_attr) || !is.null(y_attr)) {
    names <- union(names(x_attr), names(y_attr))
    out <- c(out, compare_list(x_attr, y_attr, names, attr_path(path, names)))
  }

  if (is_list(x)) {
    if (is_dictionaryish(x) && is_dictionaryish(y)) {
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


short_val <- function(x) {
  if (!is_atomic(x)) {
    return("")
  }

  if (is.character(x)) {
    x <- encodeString(x, quote = "'")
  }

  if (length(x) > 5) {
    x <- c(x[1:5], "...")
  }

  paste0(" (", paste0(x, collapse = ", "), ")")
}
