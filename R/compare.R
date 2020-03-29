compare <- function(x, y, path = "x") {
  new_compare(compare_rec(x, y, path = path))
}

new_compare <- function(x) {
  stopifnot(is.character(x))
  structure(x, class = "waldo_compare")
}

#' @export
print.waldo_compare <- function(x, ...) {
  if (length(x) == 0) {
    cli::cat_bullet("No differences", bullet = "tick", bullet_col = "green")
  } else {
    if (length(x) > 10) {
      x <- c(x[1:10], "...")
    }

    cli::cat_bullet(x, bullet = "cross", bullet_col = "red")
  }

  invisible(x)
}

compare_rec <- function(x, y, path = "x") {

  if (is_reference(x, y)) {
    return(character())
  }

  # exceptions:
  # * integer & double & !is.null(tolerance)
  # * builtin and special
  if (type_of(x) != type_of(y)) {
    return(glue("`{path}` should be {friendly_type_of(y)}{short_val(y)}, not {friendly_type_of(x)}{short_val(x)}"))
  }

  out <- character()

  if (is_list(x) || is_pairlist(x)) {
    if (is_dictionaryish(x) && is_dictionaryish(y)) {
      idx <- union(names(x), names(y))
      paths <- glue("{path}${idx}")
    } else {
      idx <- seq_len(max(length(x), length(y)))
      paths <- glue("{path}[[{idx}]]")
    }
    out <- c(out, compare_list(x, y, idx, paths))
  } else if (is_environment(x)) {
    out <- c(out,
      glue("`{path}` should be <env:{env_label(y)}>, not <env:{env_label(x)}>`")
    )
  } else if (is_closure(x)) {
    x <- removeSource(x)
    y <- removeSource(y)
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
      diff <- compare_value(deparse(x), deparse(y), path)
      if (length(diff) == 0) {
        diff <- glue("`deparse({path})` equal, but AST non-identical")
      }
      out <- c(out, diff)
    }
  } else if (is_atomic(x)) {
    out <- c(out, compare_value(x, y, path))
  }

  x_attr <- attrs(x)
  y_attr <- attrs(y)
  if (!is.null(x_attr) || !is.null(y_attr)) {
    names <- union(names(x_attr), names(y_attr))
    out <- c(out, compare_list(x_attr, y_attr, names, attr_path(path, names)))
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
