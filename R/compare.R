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
#' @param tolerance If non-`NULL`, used as threshold for ignoring small
#'   floating point difference when comparing numeric vectors. Setting to
#'   any non-`NULL` value will cause integer and double vectors to be compared
#'   based on their values, rather than their types.
#'
#'   It uses the same algorithm as [all.equal()], i.e., first we generate
#'   `x_diff` and `y_diff` by subsetting `x` and `y` to look only locations
#'   with differences. Then we check that
#'   `mean(abs(x_diff - y_diff)) / mean(y_diff)` (or just
#'   `mean(abs(x_diff - y_diff))` if `y_diff` is small) is less than
#'   `tolerance`.
#' @param ignore_srcref Ignore differences in function `srcref`s? `TRUE` by
#'   default since the `srcref` does not change the behaviour of a function,
#'   only its printed representation.
#' @param ignore_attr Ignore all differences in attributes? Only provided
#'   for backward compatibility with `all.equal()`. Using `TRUE` is not
#'   generally recommended because it will ignore many important functional
#'   differences.
#' @param ignore_encoding Ignore string encoding? `TRUE` by default, because
#'   this is R's default behaviour. Use `FALSE` when specifically concerned
#'   with the encoding, not just the value of the string.
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
                    tolerance = NULL,
                    ignore_srcref = TRUE,
                    ignore_attr = FALSE,
                    ignore_encoding = TRUE) {

  opts <- compare_opts(
    tolerance = tolerance,
    ignore_srcref = ignore_srcref,
    ignore_attr = ignore_attr,
    ignore_encoding = ignore_encoding
  )
  out <- compare_structure(x, y, path = x_arg, opts = opts)
  new_compare(out)
}

new_compare <- function(x = character()) {
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

compare_opts <- function(tolerance = NULL,
                         ignore_srcref = TRUE,
                         ignore_attr = FALSE,
                         ignore_encoding = TRUE,
                         ignore_function_env = FALSE
                         ) {
  list(
    tolerance = tolerance,
    ignore_srcref = ignore_srcref,
    ignore_attr = ignore_attr,
    ignore_encoding = ignore_encoding,
    ignore_function_env = ignore_function_env
  )
}

compare_structure <- function(x, y, path = "x", opts = compare_opts()) {
  if (is_reference(x, y)) {
    return(character())
  }

  term <- compare_terminate(x, y, path = path, tolerance = opts$tolerance)
  if (length(term) > 0) {
    return(term)
  }

  out <- character()

  if (is_list(x) || is_pairlist(x)) {
    if (is_dictionaryish(x) && is_dictionaryish(y)) {
      out <- c(out, compare_by_name(x, y, path, opts))
    } else {
      out <- c(out, compare_by_pos(x, y, path, opts))
    }
  } else if (is_environment(x)) {
    if (env_has(x, ".__enclos_env__")) {
      # enclosing env of methods is object env
      opts$ignore_function_env <- TRUE
      x_fields <- as.list(x, sort = TRUE)
      y_fields <- as.list(y, sort = TRUE)
      x_fields$.__enclos_env__ <- NULL
      y_fields$.__enclos_env__ <- NULL

      out <- c(out, compare_structure(x_fields, y_fields, path = path, opts = opts))
    } else {
      out <- c(out, should_be("<env:{env_label(y)}>", "<env:{env_label(x)}>`"))
    }
  } else if (is_closure(x)) {
    if (opts$ignore_srcref) {
      x <- remove_source(x)
      y <- remove_source(y)
    }
    if (opts$ignore_function_env) {
      environment(x) <- emptyenv()
      environment(y) <- emptyenv()
    }

    out <- c(out, compare_by_fun(x, y, path, opts))
  } else if (is_primitive(x)) {
    out <- c(out, should_be("`{deparse(y)}`", "`{deparse(x)}`"))
  } else if (is_symbol(x)) {
    out <- c(out, should_be("`{deparse(y)}`", "`{deparse(x)}`"))
  } else if (is_call(x)) {
    if (!identical(x, y)) {
      diff <- compare_character(deparse(x), deparse(y), path)
      if (length(diff) == 0) {
        diff <- glue("`deparse({path})` equal, but AST non-identical")
      }
      out <- c(out, diff)
    }
  } else if (is_atomic(x)) {

    if (is_character(x) && !opts$ignore_encoding) {
      out <- c(out, compare_character(Encoding(x), Encoding(y), glue("Encoding({path})")))
    }

    out <- c(out, switch(typeof(x),
      integer = ,
      complex = ,
      double = compare_numeric(x, y, path = path, tolerance = opts$tolerance),
      logical = ,
      raw = ,
      character = compare_character(x, y, path = path)
    ))
  }

  if (isS4(x)) {
    out <- c(out, compare_character(is(x), is(y), glue("is({path})")))
    out <- c(out, compare_by_slot(x, y, path, opts))
  } else if (!opts$ignore_attr) {
    out <- c(out, compare_by_attr(attrs(x), attrs(y), path, opts))
  }

  out
}

compare_terminate <- function(x, y, path, tolerance = NULL) {
  if (type_of(x) == type_of(y)) {
    return(character())
  }

  if (!is.null(tolerance) && is.numeric(x) && is.numeric(y)) {
    return(character())
  }

  # don't care about difference between builtin and special
  if (is_primitive(x) && is_primitive(y)) {
    return(should_be("`{deparse(y)}`", "`{deparse(x)}`"))
  }

  should_be("{friendly_type_of(y)}{short_val(y)}", "{friendly_type_of(x)}{short_val(x)}")
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

should_be <- function(this, that) {
  string <- paste0("`{path}` should be ", this, ", not ", that)
  glue(string, .envir = caller_env())
}

# compare_each ------------------------------------------------------------

compare_by <- function(index_fun, extract_fun, path_fun) {
  function(x, y, path, opts) {
    idx <- index_fun(x, y)
    if (length(idx) == 0)
      return(character())

    paths <- path_fun(path, idx)

    out <- character()
    for (i in seq_along(idx)) {
      out <- c(out, compare_structure(
        x = extract_fun(x, idx[[i]]),
        y = extract_fun(y, idx[[i]]),
        path = paths[[i]],
        opts = opts)
      )
    }

    out
  }
}
compare_by_fun <- compare_by(function(x, y) 1:3, extract_fun, path_fun)

index_name <- function(x, y) union(names(x), names(y))
extract_name <- function(x, i) if (has_name(x, i)) x[[i]] else missing_arg()
path_name <- function(path, i) glue("{path}${i}")
compare_by_name <- compare_by(index_name, extract_name, path_name)

index_pos <- function(x, y) max(length(x), length(y))
extract_pos <- function(x, i) if (i <= length(x)) x[[i]] else missing_arg()
path_pos <- function(path, i) glue("{path}[[{i}]]")
compare_by_pos <- compare_by(index_pos, extract_pos, path_pos)

path_attr <- function(path, i) {
  # from ?attributes, excluding row.names() because it's not a simple accessor
  funs <- c("comment", "class", "dim", "dimnames", "levels", "names", "tsp")
  ifelse(i %in% funs, glue("{i}({path})"), glue("attr({path}, '{i}')"))
}
compare_by_attr <- compare_by(index_name, extract_name, path_attr)

#' @importFrom methods slotNames .hasSlot slot is
index_slot <- function(x, y) union(slotNames(x), slotNames(y))
extract_slot <- function(x, i) if (.hasSlot(x, i)) slot(x, i) else missing_arg()
path_slot <- function(path, i) glue("{path}@{i}")
compare_by_slot <- compare_by(index_slot, extract_slot, path_slot)

index_fun <- function(x, y) 1:3
extract_fun <- function(x, i) switch(i, fn_body(x), fn_fmls(x), fn_env(x))
path_fun <- function(path, i) {
  fun <- unname(c("body", "formals", "environment")[i])
  glue("{fun}({path})")
}
