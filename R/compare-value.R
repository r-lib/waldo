compare_logical <- function(x, y, paths = c("x", "y")) {
  diff_element(encodeString(x), encodeString(y), paths, quote = NULL)
}

compare_character <- function(x, y, paths = c("x", "y"), quote = "\"") {
  if (multiline(x) || multiline(y)) {
    x <- split_by_line(x)
    y <- split_by_line(y)

    new_compare(compare_by_line(x, y, paths, compare_opts()))
  } else {
    diff_element(x, y, paths, quote = quote)
  }
}

compare_numeric <- function(x, y, paths = c("x", "y"), tolerance = default_tol()) {
  if (num_equal(x, y, tolerance)) {
    return(new_compare())
  }

  if (length(x) == length(y)) {
    # Probably aligned, so find minimal number of digits
    digits <- digits(abs(x - y)[x != y])
    x_fmt <- num_exact(x, digits = digits)
    y_fmt <- num_exact(y, digits = digits)
  } else {
    # Not align, so need to find max number of digits
    x_fmt <- as.character(x)
    y_fmt <- as.character(y)
  }

  out <- diff_element(x_fmt, y_fmt, paths, quote = NULL, justify = "right")
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

digits <- function(x) {
  x <- x[!is.na(x)]
  if (length(x) == 0) {
    return(0)
  }

  scale <- log10(min(x))
  if (scale >= 0) {
    # Don't add digits if x > 1
    0L
  } else {
    # Need FP buffer
    -trunc(scale - 1e-6)
  }
}
