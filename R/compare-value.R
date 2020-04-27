compare_logical <- function(x, y, paths = c("x", "y")) {
  diff_element(encodeString(x), encodeString(y), paths, quote = NULL)
}

compare_character <- function(x, y, paths = c("x", "y"), quote = "\"") {
  if (multiline(x) || multiline(y)) {
    x <- strsplit(x, "\n")
    y <- strsplit(y, "\n")

    new_compare(compare_by_line(x, y, paths, compare_opts()))
  } else {
    diff_element(x, y, paths, quote = quote)
  }
}

compare_numeric <- function(x, y, paths = c("x", "y"), tolerance = default_tol()) {
  if (num_equal(x, y, tolerance)) {
    return(new_compare())
  }

  # format x and y together for consistency
  xy <- num_format(c(x, y))
  x_fmt <- xy[seq_along(x)]
  y_fmt <- xy[-seq_along(x)]

  out <- diff_element(x_fmt, y_fmt, paths, quote = NULL, justify = "right")
  if (length(out) > 0) {
    return(out)
  }

  # x and y must be the same length, otherwise there would have been
  # either an addition or deletion above
  min_diff <- min(abs(x - y)[x != y])
  digits <- max(ceiling(abs(log10(min_diff))))
  diff_element(
    num_exact(x, digits = digits),
    num_exact(y, digits = digits), paths,
    quote = NULL,
    justify = "right"
  )
}

# Helpers -----------------------------------------------------------------

num_format <- function(x, digits = 6) {
  format(x, trim = TRUE, digits = digits, scientific = 3)
}

num_exact <- function(x, digits = 6) {
  sprintf(paste0("%0.", digits, "f"), x)
}
