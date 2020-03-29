#' Compare two objects
#'
#' @description
#' This function is an alternative to [all.equal()] that attempts to provide
#' a description of the differences that is more immediately understandable
#'
#' Main features:
#' * atomic vectors are diffed using diffobj package
#' * lists and attributes are compared by name where possible
#' * locations of differences are described using executable R code
#'
#' @param x,y Objects to compare. `y` is treated as the reference object
#'   so messages describe how `x` is different to `y`
#' @param x_arg Name of `x` argument, used when generated paths to internal
#'   components
#' @param ignore_srcref Ignore differences in function `srcref`s? `TRUE` by
#'   default since the `srcref` does not change the behaviour of a function,
#'   only its printed representation.
#' @param ignore_attr Ignore all differences in attributes? Only provided
#'   for backward compatibility with `all.equal()`. Using `TRUE` is not
#'   generally recommended because it will ignore many important functional
#'   differences.
#' @export
#' @examples
#' # Thanks to diffobj package comparison of atomic vectors shows differences
#' # with a little context
#' compare(letters, c("z", letters[-26]))
#'
#' # More complex objects are traversed, stopping only when the types are
#' # different
#' compare(
#'   list(x = list(y = list(structure(1, z = 2)))),
#'   list(x = list(y = list(structure(1, z = "a"))))
#' )
#'
#' # Where possible, recursive structures are compared by name
#' compare(list(x = "x", y = "y"), list(y = "y", x = "x"))
#' # Otherwise they're compared by position
#' compare(list("x", "y"), list("x", "z"))
#' compare(list(x = "x", x = "y"), list(x = "x", y = "z"))
compare <- function(x, y,
                    x_arg = "x",
                    ignore_srcref = TRUE,
                    ignore_attr = FALSE) {
  out <- compare_structure(x, y,
    path = x_arg,
    ignore_srcref = ignore_srcref,
    ignore_attr = ignore_attr
  )
  new_compare(out)
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

compare_structure <- function(x, y,
                              path = "x",
                              ignore_srcref = TRUE,
                              ignore_attr = FALSE) {

  if (is_reference(x, y)) {
    return(character())
  }

  # exceptions:
  # * integer & double & !is.null(tolerance)

  if (type_of(x) != type_of(y)) {
    # don't care about difference between builtin and special
    if (is_primitive(x) && is_primitive(y)) {
      out <- glue("`{path}` should be `{deparse(y)}`, not `{deparse(x)}`")
    } else {
      out <- glue("`{path}` should be {friendly_type_of(y)}{short_val(y)}, not {friendly_type_of(x)}{short_val(x)}")
    }
    return(out)
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
    out <- c(out, compare_list(x, y, idx, paths, ignore_srcref = ignore_srcref, ignore_attr = ignore_attr))
  } else if (is_environment(x)) {
    out <- c(out,
      glue("`{path}` should be <env:{env_label(y)}>, not <env:{env_label(x)}>`")
    )
  } else if (is_closure(x)) {
    if (ignore_srcref) {
      x <- utils::removeSource(x)
      y <- utils::removeSource(y)
    }

    x <- list(fn_body(x), fn_fmls(x), fn_env(x))
    y <- list(fn_body(y), fn_fmls(y), fn_env(y))
    paths <- c(
      glue("body({path})"),
      glue("formals({path})"),
      glue("environment({path})")
    )
    out <- c(out, compare_list(x, y, 1:3, paths, ignore_srcref = ignore_srcref, ignore_attr = ignore_attr))
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

  if (!ignore_attr) {
    x_attr <- attrs(x)
    y_attr <- attrs(y)
    if (!is.null(x_attr) || !is.null(y_attr)) {
      names <- union(names(x_attr), names(y_attr))
      out <- c(out, compare_list(x_attr, y_attr, names, attr_path(path, names), ignore_srcref = ignore_srcref, ignore_attr = ignore_attr))
    }
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

compare_list <- function(x, y, idx, path, ...) {
  out <- lapply(seq_along(idx), function(i) {
    compare_structure(list_extract(x, idx[[i]]), list_extract(y, idx[[i]]), path[[i]], ...)
  })
  unlist(out, recursive = FALSE)
}

