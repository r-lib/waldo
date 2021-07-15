#' @examples
#' iris2<- iris
#' iris2[3,2] <- 17
#' iris2[3,5] <- "versicolor"
#' compare(iris, iris2)
compare_data_frame <- function(x, y, paths = c("x", "y"), opts = compare_opts()) {
  # Only show row diffs if columns are the same and there are rows
  if (!same_cols(x, y)) {
    return()
  }
  if (nrow(x) == 0 || nrow(y) == 0) {
    return()
  }

  cols <- format_cols(x, y)
  if (is.null(cols)) {
    return()
  }
  diff_rows(cols$x, cols$y, cols$header,
    paths = paths,
    max_diffs = opts$max_diffs
  )
}

# Make a character matrix of formatted cell values
format_cols <- function(x, y) {
  x <- factor_to_char(x)
  y <- factor_to_char(y)

  # If same length, drop identical columns
  if (nrow(x) == nrow(y)) {
    same <- vapply(seq_along(x), function(j) identical(x[[j]], y[[j]]), logical(1))
    x <- x[!same]
    y <- y[!same]
  }
  if (ncol(x) == 0) {
    return()
  }

  printed_lines(as.data.frame(x), as.data.frame(y), row.names = FALSE)
}

# join together two rectangles then print - this takes advantage of all the
# logic built into base R to get nice printing
printed_lines <- function(x, y, ...) {
  joint <- rbind(x, y)
  if (!is.data.frame(joint)) {
    rownames(joint) <- rep("", nrow(joint))
  }
  lines <- utils::capture.output(print(joint, ..., width = 500))

  row_idx <- c(seq_len(nrow(x)), seq_len(nrow(y)))
  names(lines) <- format(c("", paste0("[", row_idx, ", ]")), align = "right")

  list(
    header = lines[1],
    x = lines[2:(nrow(x) + 1)],
    y = lines[(nrow(x) + 2):length(lines)]
  )
}

same_cols <- function(x, y) {
  if (!identical(names(x), names(y))) {
    return(FALSE)
  }

  for (j in seq_along(x)) {
    if (!is.numeric(x[[j]]) || !is.numeric(y[[j]])) {
      if (!identical(typeof(x[[j]]), typeof(y[[j]]))) {
        return(FALSE)
      }
    }

    if (!identical(attributes(x[[j]]), attributes(y[[j]]))) {
      return(FALSE)
    }
  }

  TRUE
}

factor_to_char <- function(x) {
  is_factor <- vapply(x, is.factor, logical(1))
  x[is_factor] <- lapply(x[is_factor], as.character)
  x
}

unrowname <- function(x) {
  row.names(x) <- NULL
  x
}
