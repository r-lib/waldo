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
#' @section Controlling comparisons:
#'
#' There are two ways for an object (rather than the person calling `compare()`
#' or `expect_equal()` to control how it is compared to other objects.
#' First, if the object has an S3 class, you can provide a [compare_proxy()]
#' method that provides an alternative representation of the object; this is
#' particularly useful if important data is stored outside of R, e.g. in
#' an external pointer.
#'
#' Alternatively, you can attach an attribute called `"waldo_opts"` to your
#' object. This should be a list of compare options, using the same names
#' and possible values as the arguments to this function. This option
#' is ignored by default (`ignore_attr`) so that you can set the options in
#' the object that you control. (If you don't want to see the attributes
#' interactively, you could attach them in a [compare_proxy()] method.)
#'
#' Options supplied in this way also affect all the children. This means
#' options are applied in the following order, from lowest to highest
#' precedence:
#'
#' 1.  Defaults from `compare()`.
#' 1.  The `waldo_opts` for the parents of `x`.
#' 1.  The `waldo_opts` for the parents of `y`.
#' 1.  The `waldo_opts` for `x`.
#' 1.  The `waldo_opts` for `y`.
#' 1.  User-specified arguments to `compare()`.
#'
#' Use these techniques with care. If you accidentally cover up an important
#' difference you can create a confusing situation where `x` and `y` behave
#' differently but `compare()` reports no differences in the underlying objects.
#'
#' @param x,y Objects to compare. `x` is treated as the reference object
#'   so messages describe how `y` is different to `x`.
#' @param x_arg,y_arg Name of `x` and `y` arguments, used when generated paths
#'   to internal components. These default to "old" and "new" since it's
#'   most natural to supply the previous value then the new value.
#' @param ... A handful of other arguments are supported with a warning for
#'   backward comparability. These include:
#'
#'   * `all.equal()` arguments `checkNames` and `check.attributes`
#'   * `testthat::compare()` argument `tol`
#'
#'   All other arguments are ignored with a warning.
#' @param tolerance If non-`NULL`, used as threshold for ignoring small
#'   floating point difference when comparing numeric vectors. Using any
#'   non-`NULL` value will cause integer and double vectors to be compared
#'   based on their values, not their types, and will ignore the difference
#'   between `NaN` and `NA_real_`.
#'
#'   It uses the same algorithm as [all.equal()], i.e., first we generate
#'   `x_diff` and `y_diff` by subsetting `x` and `y` to look only locations
#'   with differences. Then we check that
#'   `mean(abs(x_diff - y_diff)) / mean(abs(y_diff))` (or just
#'   `mean(abs(x_diff - y_diff))` if `y_diff` is small) is less than
#'   `tolerance`.
#' @param max_diffs Control the maximum number of differences shown. The
#'   default shows 10 differences when run interactively and all differences
#'   when run in CI. Set `max_diffs = Inf` to see all differences.
#' @param ignore_srcref Ignore differences in function `srcref`s? `TRUE` by
#'   default since the `srcref` does not change the behaviour of a function,
#'   only its printed representation.
#' @param ignore_attr Ignore differences in specified attributes?
#'   Supply a character vector to ignore differences in named attributes.
#'   By default the `"waldo_opts"` attribute is listed in `ignore_attr` so
#'   that changes to it are not reported; if you customize `ignore_attr`, you
#'   will probably want to do this yourself.
#'
#'   For backward compatibility with `all.equal()`, you can also use `TRUE`,
#'   to all ignore differences in all attributes. This is not generally
#'   recommended as it is a blunt tool that will ignore many important
#'   functional differences.
#' @param ignore_function_env,ignore_formula_env Ignore the environments of
#'   functions and formulas, respectively? These are provided primarily for
#'   backward compatibility with `all.equal()` which always ignores these
#'   environments.
#' @param ignore_encoding Ignore string encoding? `TRUE` by default, because
#'   this is R's default behaviour. Use `FALSE` when specifically concerned
#'   with the encoding, not just the value of the string.
#' @param list_as_map Compare lists as if they are mappings between names and
#'   values. Concretely, this drops `NULL`s in both objects and sorts named
#'   components.
#' @param quote_strings Should strings be surrounded by quotes? If `FALSE`,
#'   only side-by-side and line-by-line comparisons will be used, and there's
#'   no way to distinguish between `NA` and `"NA"`.
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
#'
compare <- function(
  x,
  y,
  ...,
  x_arg = "old",
  y_arg = "new",
  tolerance = NULL,
  max_diffs = if (in_ci()) Inf else 10,
  ignore_srcref = TRUE,
  ignore_attr = "waldo_opts",
  ignore_encoding = TRUE,
  ignore_function_env = FALSE,
  ignore_formula_env = FALSE,
  list_as_map = FALSE,
  quote_strings = TRUE
) {
  check_string(x_arg)
  check_string(y_arg)
  check_number_decimal(tolerance, allow_null = TRUE, min = 0)
  check_number_whole(max_diffs, min = 1, allow_infinite = TRUE)
  check_bool(ignore_srcref)
  if (
    !isTRUE(ignore_attr) && !isFALSE(ignore_attr) && !is.character(ignore_attr)
  ) {
    stop_input_type(ignore_attr, "a TRUE, a FALSE, or a character vector")
  }
  check_bool(ignore_encoding)
  check_bool(ignore_function_env)
  check_bool(ignore_formula_env)
  check_bool(list_as_map)
  check_bool(quote_strings)

  opts <- compare_opts(
    ...,
    tolerance = tolerance,
    max_diffs = max_diffs,
    ignore_srcref = ignore_srcref,
    ignore_attr = ignore_attr,
    ignore_encoding = ignore_encoding,
    ignore_formula_env = ignore_formula_env,
    ignore_function_env = ignore_function_env,
    list_as_map = list_as_map,
    quote_strings = quote_strings
  )
  # Record options overridden by user
  opts$user_specified <- intersect(names(opts), names(match.call()))

  out <- compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
  new_compare(out, max_diffs)
}

compare_structure <- function(
  x,
  y,
  paths = c("x", "y"),
  opts = compare_opts()
) {
  if (!is_missing(x)) {
    proxy <- compare_proxy(x, paths[[1]])
    x <- proxy$object
    paths[[1]] <- proxy$path
  }
  if (!is_missing(y)) {
    proxy <- compare_proxy(y, paths[[2]])
    y <- proxy$object
    paths[[2]] <- proxy$path
  }

  opts <- merge_lists(
    opts,
    attr(x, "waldo_opts"),
    attr(y, "waldo_opts"),
    opts[opts$user_specified]
  )

  if (is_identical(x, y, opts)) {
    return(character())
  }

  # Compare type
  term <- compare_terminate(
    x,
    y,
    paths,
    tolerance = opts$tolerance,
    ignore_attr = opts$ignore_attr
  )
  if (length(term) > 0) {
    return(term)
  }

  if (is_list(x) && opts$list_as_map) {
    x <- as_map(x)
    y <- as_map(y)
  }

  out <- character()

  # Then length
  if ((is_list(x) || is_pairlist(x)) && length(x) != length(y)) {
    out <- c(out, should_be("length {length(x)}", "length {length(y)}"))
  }

  # Then attributes/slots
  if (isS4(x)) {
    out <- c(out, compare_character(is(x), is(y), glue::glue("is({paths})")))
    out <- c(out, compare_by_slot(x, y, paths, opts))

    # S4 objects can have attributes that are not slots
    out <- c(
      out,
      compare_by_attr(
        attrs(x, c(slotNames(x), "class")),
        attrs(y, c(slotNames(y), "class")),
        paths,
        opts
      )
    )
  } else if (is.object(x) && inherits(x, "S7_object")) {
    out <- c(
      out,
      compare_character(class(x), class(y), glue::glue("class({paths})"))
    )
    out <- c(out, compare_by_prop(x, y, paths, opts))

    # S7 objects can have attributes that are not slots
    out <- c(
      out,
      compare_by_attr(
        attrs(x, c(S7::prop_names(x), "class", "S7_class")),
        attrs(y, c(S7::prop_names(y), "class", "S7_class")),
        paths,
        opts
      )
    )
  } else if (!isTRUE(opts$ignore_attr)) {
    if (is_call(x) && opts$ignore_formula_env) {
      attr(x, ".Environment") <- NULL
      attr(y, ".Environment") <- NULL
    }

    if ((is_closure(x) || is_call(x)) && opts$ignore_srcref) {
      x <- zap_srcref(x)
      y <- zap_srcref(y)
    }

    if (compare_as_numeric(x, y, opts$tolerance)) {
      opts$ignore_attr <- union(opts$ignore_attr, "class")
    }

    out <- c(
      out,
      compare_by_attr(
        attrs(x, opts$ignore_attr),
        attrs(y, opts$ignore_attr),
        paths,
        opts
      )
    )
  }

  # Then contents
  if (is_list(x) || is_pairlist(x) || is.expression(x)) {
    if (is.data.frame(x) && is.data.frame(y)) {
      out <- c(out, compare_data_frame(x, y, paths, opts = opts))
    }

    x <- unclass(x)
    y <- unclass(y)

    ignore_names <- isTRUE(opts$ignore_attr) || "names" %in% opts$ignore_attr
    if (!ignore_names && is_dictionaryish(x) && is_dictionaryish(y)) {
      out <- c(out, compare_by_name(x, y, paths, opts))
    } else {
      out <- c(out, compare_by_pos(x, y, paths, opts))
    }
  } else if (is_environment(x)) {
    if (is_seen(list(x, y), opts$seen$envs)) {
      # Only report difference between pairs of environments once
      return(out)
    } else if (is_named_env(x) || is_named_env(y)) {
      # Compare by reference
      out <- c(out, should_be("<env:{env_label(x)}>", "<env:{env_label(y)}>"))
    } else {
      # Compare by value
      x_fields <- as.list.environment(x, all.names = TRUE)
      y_fields <- as.list.environment(y, all.names = TRUE)
      # Can't use as.list(sorted = TRUE), https://github.com/r-lib/waldo/issues/84
      if (length(x_fields) > 0) {
        x_fields <- x_fields[order(names(x_fields))]
      }
      if (length(y_fields) > 0) {
        y_fields <- y_fields[order(names(y_fields))]
      }

      if (env_has(x, ".__enclos_env__")) {
        # enclosing env of R6 methods is object env
        opts$ignore_function_env <- TRUE
        x_fields$.__enclos_env__ <- NULL
        y_fields$.__enclos_env__ <- NULL
      }

      opts$seen$envs <- c(opts$seen$envs, list(list(x, y)))
      out <- c(out, compare_structure(x_fields, y_fields, paths, opts = opts))
      out <- c(
        out,
        compare_structure(
          parent.env(x),
          parent.env(y),
          paste0("parent.env(", paths, ")"),
          opts = opts
        )
      )
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
      diff <- compare_character(
        deparse(x),
        deparse(y),
        paths,
        quote = "`",
        max_diffs = opts$max_diffs
      )
      if (length(diff) == 0) {
        # Fallback if deparse equal but AST different
        diff <- compare_structure(as.list(x), as.list(y), paths, opts = opts)
      }
      out <- c(out, diff)
    }
  } else if (is_atomic(x)) {
    if (is_character(x) && !opts$ignore_encoding) {
      out <- c(
        out,
        compare_character(
          Encoding(x),
          Encoding(y),
          glue::glue("Encoding({paths})"),
          max_diffs = opts$max_diffs
        )
      )
    }

    out <- c(out, compare_vector(x, y, paths = paths, opts = opts))
  } else if (typeof(x) == "externalptr") {
    x <- utils::capture.output(print(x))
    y <- utils::capture.output(print(y))
    out <- c(out, should_be("{x}", "{y}"))
  } else if (typeof(x) == "char") {
    x <- paste0("CHARSXP: ", deparse(x))
    y <- paste0("CHARSXP: ", deparse(y))
    out <- c(out, should_be("{x}", "{y}"))
  } else if (typeof(x) == "...") {
    # Unevaluated dots are unlikely to lead to any significant differences
    # in behaviour (they're usually captured incidentally) so we just
    # ignore
  } else if (typeof(x) == "weakref") {
    out <- c(out, compare_by_weakref(x, y, paths, opts = opts))
  } else if (!typeof(x) %in% c("S4", "object")) {
    abort(
      glue::glue("{paths[[1]]}: unsupported type '{typeof(x)}'"),
      call = NULL
    )
  }

  out
}

is_named_env <- function(x) {
  environmentName(x) != ""
}
is_seen <- function(x, envs) {
  for (env in envs) {
    if (identical(x, env)) {
      return(TRUE)
    }
  }
  FALSE
}

# Fast path for "identical" elements - in the long run we'd eliminate this
# by re-writing all of waldo in C, but this gives us a nice performance boost
# with for a relatively low cost in the meantime.
is_identical <- function(x, y, opts) {
  # These comparisons aren't 100% correct because they don't affect comparison
  # of character vectors/functions further down the tree. But I think that's
  # unlikely to have an impact in practice since they're opt-in.
  if (is_character(x) && is_character(y) && !opts$ignore_encoding) {
    identical(x, y) && identical(Encoding(x), Encoding(y))
  } else if (is_function(x) && is_function(y) && !opts$ignore_srcref) {
    identical(x, y) && identical(attr(x, "srcref"), attr(y, "srcref"))
  } else {
    identical(x, y)
  }
}

compare_terminate <- function(
  x,
  y,
  paths,
  tolerance = NULL,
  ignore_attr = FALSE
) {
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

  type_mismatch_msg <- should_be(
    "{type_x}{short_val(x)}",
    "{type_y}{short_val(y)}"
  )

  # missing needs to be treated here because `typeof(missing_arg())` is symbol
  if (is_missing(x) != is_missing(y)) {
    return(type_mismatch_msg)
  }

  if (typeof(x) == typeof(y)) {
    if (oo_type(x) == oo_type(y)) {
      return(character())
    }

    if (oo_type(x) %in% c("base", "S3") && oo_type(y) %in% c("base", "S3")) {
      return(character())
    }

    ignore_class <- isTRUE(ignore_attr) || "class" %in% ignore_attr
    if (ignore_class) {
      return(character())
    }
  }

  if (compare_as_numeric(x, y, tolerance)) {
    return(character())
  }

  # don't care about difference between builtin and special
  if (is_primitive(x) && is_primitive(y)) {
    return(should_be("`{deparse(x)}`", "`{deparse(y)}`"))
  }

  type_mismatch_msg
}

should_be <- function(x, y) {
  string <- paste0(
    "`{paths[[1]]}` is ",
    x,
    "\n",
    "`{paths[[2]]}` is ",
    y
  )
  glue::glue(string, .envir = caller_env(), .trim = FALSE)
}

# compare_each ------------------------------------------------------------

compare_by <- function(index_fun, extract_fun, path_fun) {
  function(x, y, paths, opts) {
    idx <- index_fun(x, y)
    if (length(idx) == 0) {
      return(character())
    }

    x_paths <- path_fun(paths[[1]], idx)
    y_paths <- path_fun(paths[[2]], idx)

    out <- character()
    for (i in seq_along(idx)) {
      out <- c(
        out,
        compare_structure(
          x = extract_fun(x, idx[[i]]),
          y = extract_fun(y, idx[[i]]),
          paths = c(x_paths[[i]], y_paths[[i]]),
          opts = opts
        )
      )
    }

    out
  }
}

index_name <- function(x, y) union(names(x), names(y))
extract_name <- function(x, i) {
  if (has_name(x, i)) .subset2(x, i) else missing_arg()
}
path_name <- function(path, i) glue::glue("{path}${i}")
compare_by_name <- compare_by(index_name, extract_name, path_name)

index_pos <- function(x, y) seq_len(max(length(x), length(y)))
extract_pos <- function(x, i) {
  if (i <= length(x)) .subset2(x, i) else missing_arg()
}
path_pos <- function(path, i) glue::glue("{path}[[{i}]]")
compare_by_pos <- compare_by(index_pos, extract_pos, path_pos)

path_line <- function(path, i) glue::glue("lines({path}[[{i}]])")
compare_by_line <- compare_by(index_pos, extract_pos, path_line)

path_line1 <- function(path, i) glue::glue("lines({path})")
compare_by_line1 <- compare_by(index_pos, extract_pos, path_line1)

path_attr <- function(path, i) {
  # from ?attributes, excluding row.names() because it's not a simple accessor
  funs <- c("comment", "class", "dim", "dimnames", "levels", "names", "tsp")
  ifelse(
    i %in% funs,
    glue::glue("{i}({path})"),
    glue::glue("attr({path}, '{i}')")
  )
}
compare_by_attr <- compare_by(index_name, extract_name, path_attr)

#' @importFrom methods slotNames .hasSlot slot is
index_slot <- function(x, y) union(slotNames(x), slotNames(y))
extract_slot <- function(x, i) if (.hasSlot(x, i)) slot(x, i) else missing_arg()
path_slot <- function(path, i) glue::glue("{path}@{i}")
compare_by_slot <- compare_by(index_slot, extract_slot, path_slot)

# We compare S7 based not on their properties (which might have getters/setters)
# but instead the underlying attributes that store any data. This might generate
# confusing messages (e.g. if obj@x <- 1 actually sets property y)
index_prop <- function(x, y) union(attr_names(x), attr_names(y))
extract_prop <- function(x, i) {
  if (S7::prop_exists(x, i)) S7::prop(x, i) else missing_arg()
}
path_prop <- function(path, i) glue::glue("{path}@{i}")
compare_by_prop <- compare_by(index_prop, extract_prop, path_prop)
attr_names <- function(x) names(attributes(x))
extract_fun <- function(x, i) switch(i, fn_body(x), fn_fmls(x), fn_env(x))
path_fun <- function(path, i) {
  fun <- unname(c("body", "formals", "environment")[i])
  glue::glue("{fun}({path})")
}
compare_by_fun <- compare_by(function(x, y) 1:3, extract_fun, path_fun)

index_weakref <- function(x, y) 1:2
extract_weakref <- function(x, i) switch(i, wref_key(x), wref_value(x))
path_weakref <- function(path, i) {
  fun <- unname(c("weakref_key", "weakref_value")[i])
  glue::glue("{fun}({path})")
}
compare_by_weakref <- compare_by(index_weakref, extract_weakref, path_weakref)
