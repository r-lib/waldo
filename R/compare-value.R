compare_character <- function(x, y, x_path = "x", y_path = "y") {
  attributes(x) <- NULL
  attributes(y) <- NULL

  diff_element(x, y, x_path = x_path, y_path = y_path)
}

compare_numeric <- function(x,
                            y,
                            x_path = "x",
                            y_path = "y",
                            tolerance = .Machine$double.eps^0.5
                            ) {
  attributes(x) <- NULL
  attributes(y) <- NULL

  if (num_equal(x, y, tolerance)) {
    return(new_compare())
  }

  x_cmp <- num_format(x)
  y_cmp <- num_format(y)

  out <- diff_element(x_cmp, y_cmp, x_path = x_path, y_path = y_path, escape_string = FALSE)
  if (length(out) > 0) {
    return(out)
  }

  # x and y must be the same length, otherwise there would have been
  # either an addition or deletion above
  diff_element(
    x - y, rep(0, length(x)),
    x_path = glue("{x_path}-{y_path}"),
    y_path = "0",
    escape_string = FALSE
  )
}
