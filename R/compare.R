#' Show the difference between two objects
#'
#' @param old,new Pair of objects to compare. The first argument is taken
#'   to be the "old" value, and the second is the "new". This is effectively
#'   the opposite to [compare()].
#' @param ... Other arguments passed on to [compare()]
#' @export
#' @examples
#' x1 <- x2 <- list(x = 1, y = 2:10, z = letters)
#' x2$z <- letters[-13]
#' diff(x1, x2)
diff <- function(old, new, ...) {
  compare(old, new, ..., x_arg = "old", y_arg = "new")
}


#' Compare two objects
#'
#' @description
#' This compares two R objects, identifying the key differences. It:
#'
#' * Orders the differences from most important to least important.
#' * Displays the values of atomic vectors that are actually different.
#' * Carefully uses colour to emphasise changes (while still being readable
#'   when colour isn't available).
#' * Uses R code (not a text description) to show where differences arise.
#' * Where possible, it compares elements by name, rather than by position.
#' * Errs on the side of producing too much output, rather than too little.
#'
#' `compare()` is an alternative to [all.equal()].
#'
#' @param x,y Objects to compare. `y` is treated as the reference object
#'   so messages describe how `x` is different to `y`
#' @param x_arg,y_arg Name of `x` and `y` arguments, used when generated paths
#'   to internal components.
#' @param ... A handful of other arguments are supported with a warning for
#'   backward compatability. These include:
#'
#'   * `all.equal()` arguments `checkNames` and `check.attributes`
#'   * `testthat::compare()` argument `tol`
#'
#'   All other arguments are ignored with a warning.
#' @param tolerance If non-`NULL`, used as threshold for ignoring small
#'   floating point difference when comparing numeric vectors. Setting to
#'   any non-`NULL` value will cause integer and double vectors to be compared
#'   based on their values, rather than their types.
#'
#'   It uses the same algorithm as [all.equal()], i.e., first we generate
#'   `x_diff` and `y_diff` by subsetting `x` and `y` to look only locations
#'   with differences. Then we check that
#'   `mean(abs(x_diff - y_diff)) / mean(abs(y_diff))` (or just
#'   `mean(abs(x_diff - y_diff))` if `y_diff` is small) is less than
#'   `tolerance`.
#' @param ignore_srcref Ignore differences in function `srcref`s? `TRUE` by
#'   default since the `srcref` does not change the behaviour of a function,
#'   only its printed representation.
#' @param ignore_attr Ignore all differences in attributes? Only provided
#'   for backward compatibility with `all.equal()`. Using `TRUE` is not
#'   generally recommended because it will ignore many important functional
#'   differences.
#' @param ignore_function_env,ignore_formula_env Ignore the environments of
#'   functions and formulas, respectively? These are provided primarily for
#'   backward compatibility with `all.equal()` which always ignores these
#'   environments.
#' @param ignore_encoding Ignore string encoding? `TRUE` by default, because
#'   this is R's default behaviour. Use `FALSE` when specifically concerned
#'   with the encoding, not just the value of the string.
#' @returns A character vector with class "waldo_compare". If there are no
#'   differences it will have length 0; otherwise each element contains the
#'   description of a single difference.
#' @export
#' @examples
#' # Thanks to diffobj package comparison of atomic vectors shows differences
#' # with a little context
#' compare(letters, c("z", letters[-26]))
#' compare(c(1, 2, 3), c(1, 3))
#' compare(c(1, 2, 3), c(1, 3, 4, 5))
#' compare(c(1, 2, 3), c(1, 2, 5))
#'
#' # More complex objects are traversed, stopping only when the types are
#' # different
#' compare(
#'   list(x = list(y = list(structure(1, z = 2)))),
#'   list(x = list(y = list(structure(1, z = "a"))))
#' )
#'
#' # Where possible, recursive structures are compared by name
#' compare(iris, rev(iris))
#'
#' compare(list(x = "x", y = "y"), list(y = "y", x = "x"))
#' # Otherwise they're compared by position
#' compare(list("x", "y"), list("x", "z"))
#' compare(list(x = "x", x = "y"), list(x = "x", y = "z"))
compare <- function(x, y, ...,
                    x_arg = "x", y_arg = "y",
                    tolerance = NULL,
                    ignore_srcref = TRUE,
                    ignore_attr = FALSE,
                    ignore_encoding = TRUE,
                    ignore_function_env = FALSE,
                    ignore_formula_env = FALSE
                    ) {

  opts <- compare_opts(
    ...,
    tolerance = tolerance,
    ignore_srcref = ignore_srcref,
    ignore_attr = ignore_attr,
    ignore_encoding = ignore_encoding,
    ignore_formula_env = ignore_formula_env,
    ignore_function_env = ignore_function_env
  )
  out <- compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
  new_compare(out)
}


compare_structure <- function(x, y, paths = c("x", "y"), opts = compare_opts()) {
  if (is_reference(x, y)) {
    return(character())
  }

  # Compare type
  term <- compare_terminate(x, y, paths,
    tolerance = opts$tolerance,
    ignore_attr = opts$ignore_attr
  )
  if (length(term) > 0) {
    return(term)
  }

  x <- compare_proxy(x)
  y <- compare_proxy(y)

  out <- character()

  # Then length
  if ((is_list(x) || is_pairlist(x)) && length(x) != length(y)) {
    out <- c(out, should_be("length {length(x)}", "length {length(y)}"))
  }

  # Then attributes/slots
  if (isS4(x)) {
    out <- c(out, compare_character(is(x), is(y), glue("is({paths})")))
    out <- c(out, compare_by_slot(x, y, paths, opts))
  } else if (!opts$ignore_attr) {
    if (is_call(x) && opts$ignore_formula_env) {
      attr(x, ".Environment") <- NULL
      attr(y, ".Environment") <- NULL
    }

    if ((is_closure(x) || is_call(x)) && opts$ignore_srcref) {
      x <- remove_source(x)
      y <- remove_source(y)
    }

    out <- c(out, compare_by_attr(attrs(x), attrs(y), paths, opts))
  }

  # Then contents
  if (is_list(x) || is_pairlist(x) || is.expression(x)) {
    x <- unclass(x)
    y <- unclass(y)

    if (!opts$ignore_attr && is_dictionaryish(x) && is_dictionaryish(y)) {
      out <- c(out, compare_by_name(x, y, paths, opts))
    } else {
      out <- c(out, compare_by_pos(x, y, paths, opts))
    }
  } else if (is_environment(x)) {
    if (env_has(x, ".__enclos_env__")) {
      # enclosing env of methods is object env
      opts$ignore_function_env <- TRUE
      x_fields <- as.list(x, sorted = TRUE)
      y_fields <- as.list(y, sorted = TRUE)
      x_fields$.__enclos_env__ <- NULL
      y_fields$.__enclos_env__ <- NULL

      out <- c(out, compare_structure(x_fields, y_fields, paths, opts = opts))
    } else {
      out <- c(out, should_be("<env:{env_label(x)}>", "<env:{env_label(y)}>"))
    }
  } else if (is_closure(x)) {
    if (opts$ignore_function_env) {
      environment(x) <- emptyenv()
      environment(y) <- emptyenv()
    }

    out <- c(out, compare_by_fun(x, y, paths, opts))
  } else if (is_primitive(x)) {
    out <- c(out, should_be("`{deparse(x)}`", "`{deparse(y)}`"))
  } else if (is_symbol(x)) {
    out <- c(out, should_be("`{deparse(x)}`", "`{deparse(y)}`"))
  } else if (is_call(x)) {
    attributes(x) <- NULL
    attributes(y) <- NULL

    if (!identical(x, y)) {
      diff <- compare_character(deparse(x), deparse(y), paths, quote = "`")
      if (length(diff) == 0) {
        diff <- glue("`deparse({paths[[1]]})` equals `deparse({paths[[2]]})`, but AST non-identical")
      }
      out <- c(out, diff)
    }
  } else if (is_atomic(x)) {
    if (is_character(x) && !opts$ignore_encoding) {
      out <- c(out, compare_character(Encoding(x), Encoding(y), glue("Encoding({paths})")))
    }
    attributes(x) <- NULL
    attributes(y) <- NULL

    out <- c(out, switch(typeof(x),
      integer = ,
      complex = ,
      double = compare_numeric(x, y, paths, tolerance = opts$tolerance),
      logical = compare_logical(x, y, paths),
      raw = ,
      character = compare_character(x, y, paths)
    ))
  } else if (typeof(x) == "externalptr") {
    x <- utils::capture.output(print(x))
    y <- utils::capture.output(print(y))
    out <- c(out, should_be("{x}", "{y}"))
  } else if (!isS4(x)) {
    abort(glue("{paths[[1]]}: unsupported type {typeof(x)}"))
  }

  out
}

compare_terminate <- function(x, y, paths,
                              tolerance = NULL,
                              ignore_attr = FALSE) {
  if (type_of(x) == type_of(y)) {
    return(character())
  }

  if (ignore_attr && (typeof(x) == typeof(y))) {
    return(character())
  }

  if (!is.null(tolerance) && is_numeric(x) && is_numeric(y)) {
    return(character())
  }

  # don't care about difference between builtin and special
  if (is_primitive(x) && is_primitive(y)) {
    return(should_be("`{deparse(x)}`", "`{deparse(y)}`"))
  }

  type_x <- friendly_type_of(x)
  type_y <- friendly_type_of(y)
  if (is_missing(x) && !is_missing(y)) {
    type_y <- col_d(type_y)
  } else if (!is_missing(x) && is_missing(y)) {
    type_x <- col_a(type_x)
  } else {
    type_x <- col_c(type_x)
    type_y <- col_c(type_y)
  }

  should_be("{type_x}{short_val(x)}", "{type_y}{short_val(y)}")
}

should_be <- function(x, y) {
  string <- paste0(
    "`{paths[[1]]}` is ", x, "\n",
    "`{paths[[2]]}` is ", y
  )
  glue(string, .envir = caller_env(), .trim = FALSE)
}

# compare_each ------------------------------------------------------------

compare_by <- function(index_fun, extract_fun, path_fun) {
  function(x, y, paths, opts) {
    idx <- index_fun(x, y)
    if (length(idx) == 0)
      return(character())

    x_paths <- path_fun(paths[[1]], idx)
    y_paths <- path_fun(paths[[2]], idx)

    out <- character()
    for (i in seq_along(idx)) {
      out <- c(out, compare_structure(
        x = extract_fun(x, idx[[i]]),
        y = extract_fun(y, idx[[i]]),
        paths = c(x_paths[[i]], y_paths[[i]]),
        opts = opts)
      )
    }

    out
  }
}

index_name <- function(x, y) union(names(x), names(y))
extract_name <- function(x, i) if (has_name(x, i)) .subset2(x, i) else missing_arg()
path_name <- function(path, i) glue("{path}${i}")
compare_by_name <- compare_by(index_name, extract_name, path_name)

index_pos <- function(x, y) seq_len(max(length(x), length(y)))
extract_pos <- function(x, i) if (i <= length(x)) .subset2(x, i) else missing_arg()
path_pos <- function(path, i) glue("{path}[[{i}]]")
compare_by_pos <- compare_by(index_pos, extract_pos, path_pos)

path_line <- function(path, i) glue("lines({path}[[{i}]])")
compare_by_line <- compare_by(index_pos, extract_pos, path_line)

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

extract_fun <- function(x, i) switch(i, fn_body(x), fn_fmls(x), fn_env(x))
path_fun <- function(path, i) {
  fun <- unname(c("body", "formals", "environment")[i])
  glue("{fun}({path})")
}
compare_by_fun <- compare_by(function(x, y) 1:3, extract_fun, path_fun)
