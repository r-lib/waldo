num_equal <- function(x, y, tolerance = default_tol()) {
  if (length(x) != length(y)) {
    return(FALSE)
  }

  if (any(is.na(x) != is.na(y))) {
    return(FALSE)
  }
  if (is.null(tolerance) && any(is.nan(x) != is.nan(y))) {
    return(FALSE)
  }

  if (is_int64(x) || is_int64(y)) {
    if (can_int64(x) && can_int64(y)) {
      x <- bit64::as.integer64(x)
      y <- bit64::as.integer64(y)
    } else {
      cli::cli_abort(c(
        "No way to coerce to compatible numeric type.",
        i = "Try again without setting `tolerance`."
      ))
    }
  } else {
    attributes(x) <- NULL
    attributes(y) <- NULL
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
  avg_y <- mean(abs(y_diff))

  # compute relative difference when y is "large" but finite
  if (is.finite(avg_y) && avg_y > tolerance) {
    avg_diff <- avg_diff / avg_y
  }

  avg_diff < tolerance
}


can_int64 <- function(x) {
  if (is.integer(x) || inherits(x, "int64")) {
    return(TRUE)
  }

  in_range <- x >= -2^53 & x <= 2^53 - 1
  is_whole <- trunc(x) == x
  is_missing <- is.na(x)
  all((in_range & is_whole) | is_missing)
}
