num_equal <- function(x, y, tolerance = .Machine$double.eps ^ 0.5) {
  if (length(x) != length(y)) {
    return(FALSE)
  }

  if (any(is.na(x) != is.na(y))) {
    return(FALSE)
  }

  same <- is.na(x) | x == y
  if (is.null(tolerance)) {
    return(all(same))
  } else if (all(same)) {
    return(TRUE)
  }

  x_diff <- x[!same]
  y_diff <- y[!same]

  avg_diff <- mean(abs(x_diff - y_diff))
  avg_y <- abs(mean(y_diff))

  # compute relative difference when y is "large"
  if (avg_y > tolerance) {
    avg_diff <- avg_diff / avg_y
  }

  avg_diff < tolerance
}
