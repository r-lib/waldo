compare_vector <- function(x, y, paths = c("x", "y"), opts = compare_opts()) {
  # Early exit for numerics (except for) with format methods
  if (is_numeric(x) && num_equal(x, y, opts$tolerance)) {
    return()
  }

  if (!isTRUE(opts$ignore_attr) && is.object(x) && has_format_method(x)) {
    x_str <- format(x)
    y_str <- format(y)

    out <- compare_character(x_str, y_str, paths, max_diffs = opts$max_diffs)
    paths <- paste0("unclass(", paths, ")")
  } else {
    out <- character()
  }

  if (length(out) == 0) {
    out <- c(
      out,
      switch(
        typeof(x),
        integer = ,
        double = compare_numeric(
          x,
          y,
          paths,
          tolerance = opts$tolerance,
          max_diffs = opts$max_diffs
        ),
        complex = compare_complex(
          x,
          y,
          paths,
          tolerance = opts$tolerance,
          max_diffs = opts$max_diffs
        ),
        logical = compare_logical(x, y, paths, max_diffs = opts$max_diffs),
        raw = ,
        character = compare_character(
          x,
          y,
          paths,
          quote = if (opts$quote_strings) '"' else NULL,
          max_diffs = opts$max_diffs
        )
      )
    )
  }
  out
}

has_format_method <- function(x) {
  for (class in class(x)) {
    if (!is.null(utils::getS3method("format", class, optional = TRUE))) {
      return(TRUE)
    }
  }
  FALSE
}

compare_logical <- function(x, y, paths = c("x", "y"), max_diffs = Inf) {
  diff_element(
    encodeString(x),
    encodeString(y),
    paths,
    quote = NULL,
    max_diffs = max_diffs
  )
}

compare_character <- function(
  x,
  y,
  paths = c("x", "y"),
  quote = "\"",
  max_diffs = Inf
) {
  if (multiline(x) || multiline(y)) {
    x <- split_by_line(x)
    y <- split_by_line(y)

    opts <- compare_opts(max_diffs = max_diffs)

    if (length(x) == 1 && length(y) == 1) {
      new_compare(compare_by_line1(x, y, paths, opts))
    } else {
      new_compare(compare_by_line(x, y, paths, opts))
    }
  } else {
    diff_element(
      x,
      y,
      paths,
      quote = quote,
      max_diffs = max_diffs,
      is_string = TRUE
    )
  }
}

compare_numeric <- function(
  x,
  y,
  paths = c("x", "y"),
  tolerance = default_tol(),
  max_diffs = Inf
) {
  if (num_equal(x, y, tolerance)) {
    return(new_compare())
  }

  if (length(dim(x)) == 2 && identical(dim(x), dim(y))) {
    rows <- printed_rows(x, y, paths = paths)
    out <- diff_rows(rows, paths = paths, max_diffs = max_diffs)

    if (length(out) > 0) {
      return(out)
    }
  }

  if (length(x) == length(y)) {
    digits <- min_digits(x, y, tolerance)
    x_fmt <- num_exact(x, digits = digits)
    y_fmt <- num_exact(y, digits = digits)
  } else {
    # Not align, so need to find max number of digits
    x_fmt <- as.character(x)
    y_fmt <- as.character(y)
  }

  out <- diff_element(
    x_fmt,
    y_fmt,
    paths,
    quote = NULL,
    justify = "right",
    max_diffs = max_diffs
  )

  if (length(out) > 0) {
    out
  } else {
    glue::glue(
      "{paths[[1]]} != {paths[[2]]} but don't know how to show the difference"
    )
  }
}

compare_complex <- function(
  x,
  y,
  paths = c("x", "y"),
  tolerance = default_tol(),
  max_diffs = Inf
) {
  if (length(x) == length(y)) {
    c(
      compare_numeric(
        Re(x),
        Re(y),
        paths = paste0("Re(", paths, ")"),
        tolerance = tolerance,
        max_diffs = max_diffs
      ),
      compare_numeric(
        Im(x),
        Im(y),
        paths = paste0("Im(", paths, ")"),
        tolerance = tolerance,
        max_diffs = max_diffs
      )
    )
  } else {
    x_fmt <- format(x)
    y_fmt <- format(y)

    diff_element(
      x_fmt,
      y_fmt,
      paths,
      quote = NULL,
      justify = "right",
      max_diffs = max_diffs
    )
  }
}

# Helpers -----------------------------------------------------------------

num_exact <- function(x, digits = 6) {
  sprintf(paste0("%0.", digits, "f"), x)
}

# Minimal number of digits needed to show differences
min_digits <- function(x, y, tolerance = default_tol()) {
  if (is.integer(x) && is.integer(y)) {
    return(0L)
  }

  attributes(x) <- NULL
  attributes(y) <- NULL

  n <- digits(abs(x - y))
  if (!is.null(tolerance)) {
    n <- min(n, digits(tolerance))
  }

  as.integer(n) + 1L
}

# This looks ok:
# grid <- 10 ^ seq(0, -6, length.out = 1e3)
# plot(grid, sapply(grid, digits), log = "x")
digits <- function(x) {
  x <- x[!is.na(x) & x != 0]
  if (length(x) == 0) {
    return(0)
  }

  scale <- -log10(min(x))
  if (scale <= 0) {
    # Don't add digits if x > 1
    0L
  } else {
    # Need to first round roughly to avoid tiny FP differences
    ceiling(round(scale, digits = 2))
  }
}
