compare_character <- function(x, y, paths = c("x", "y")) {
  attributes(x) <- NULL
  attributes(y) <- NULL

  if (multiline(x) || multiline(y)) {
    x <- strsplit(x, "\n")
    y <- strsplit(y, "\n")

    new_compare(compare_by_line(x, y, paths, compare_opts()))
  } else {
    diff_element(x, y, paths)
  }
}

compare_numeric <- function(x, y, paths = c("x", "y"), tolerance = default_tol()) {
  attributes(x) <- NULL
  attributes(y) <- NULL

  if (num_equal(x, y, tolerance)) {
    return(new_compare())
  }

  out <- diff_element(num_format(x), num_format(y), paths, escape_string = FALSE)
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
    escape_string = FALSE
  )
}

num_format <- function(x, digits = 6) {
  format(x, trim = TRUE, digits = digits, scientific = 3, drop0trailing = TRUE)
}

num_exact <- function(x, digits = 6) {
  sprintf(paste0("%.", digits, "f"), x)
}
