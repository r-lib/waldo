#' @examples
#'
#' iris2<- iris
#' iris2[3,2] <- 17
#' iris2[3,5] <- "versicolor"
#' compare(iris, iris2)
#'
#' iris2 <- iris
#' iris2$Species <- as.character(iris$Species)
#' compare(iris, iris2)

compare_data_frame <- function(x, y, paths = c("x", "y"), opts = compare_opts()) {
  if (same_cols(x, y)) {
    x_view <- capture.output(print(as.data.frame(x)))
    y_view <- capture.output(print(as.data.frame(y)))

    diff_element(x_view, y_view, paths, quote = "", max_diffs = opts$max_diffs)
  } else {
    ignore_names <- isTRUE(opts$ignore_attr) || "names" %in% opts$ignore_attr
    if (!ignore_names) {
      compare_by_name(x, y, paths, opts)
    } else {
      compare_by_pos(x, y, paths, opts)
    }
  }
}

same_cols <- function(x, y) {
  if (!identical(names(x), names(y))) {
    return(FALSE)
  }

  # Implies same column types
  for (i in seq_along(x)) {
    if (!identical(typeof(x[[i]]), typeof(y[[i]]))) {
      return(FALSE)
    }

    if (!identical(attributes(x[[i]]), attributes(y[[i]]))) {
      return(FALSE)
    }
  }

  TRUE
}

