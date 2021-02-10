compare_logical <- function(x, y, paths = c("x", "y"), max_diffs = Inf) {
  diff_element(
    encodeString(x), encodeString(y), paths,
    quote = NULL,
    max_diffs = max_diffs,
    elementwise = TRUE
  )
}

compare_character <- function(x, y, paths = c("x", "y"), quote = "\"", max_diffs = Inf) {
  if (multiline(x) || multiline(y)) {
    x <- split_by_line(x)
    y <- split_by_line(y)

    opts <- compare_opts(max_diffs = max_diffs)
    new_compare(compare_by_line(x, y, paths, opts))
  } else {
    diff_element(x, y, paths, quote = quote, max_diffs = max_diffs)
  }
}

compare_numeric <- function(x, y, paths = c("x", "y"), tolerance = default_tol(), max_diffs = Inf) {
  if (num_equal(x, y, tolerance)) {
    return(new_compare())
  }

  if (length(x) == length(y)) {
    digits <- min_digits(x, y)
    x_fmt <- num_exact(x, digits = digits)
    y_fmt <- num_exact(y, digits = digits)
  } else {
    # Not align, so need to find max number of digits
    x_fmt <- as.character(x)
    y_fmt <- as.character(y)
  }

  out <- diff_element(
    x_fmt, y_fmt, paths,
    quote = NULL,
    justify = "right",
    max_diffs = max_diffs
  )
  if (length(out) > 0) {
    out
  } else {
    glue::glue("{paths[[1]]} != {paths[[2]]} but don't know how to show the difference")
  }
}

# Helpers -----------------------------------------------------------------

num_exact <- function(x, digits = 6) {
  sprintf(paste0("%0.", digits, "f"), x)
}

# Minimal number of digits needed to show differences
min_digits <- function(x, y) {
  digits(abs(x - y))
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
