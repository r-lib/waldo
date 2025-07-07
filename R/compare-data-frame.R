compare_data_frame <- function(
  x,
  y,
  paths = c("x", "y"),
  opts = compare_opts()
) {
  # Only show row diffs if columns are atomic, have same names and types and there are rows
  if (!all_atomic(x) || !all_atomic(y)) {
    return()
  }
  if (!same_cols(x, y)) {
    return()
  }
  if (nrow(x) == 0 || nrow(y) == 0) {
    return()
  }

  rows <- df_rows(x, y, paths = paths, tolerance = opts$tolerance)
  if (is.null(rows)) {
    return()
  }
  diff_rows(rows, paths = paths, max_diffs = opts$max_diffs)
}

diff_rows <- function(rows, paths = c("x", "y"), max_diffs = 10) {
  diffs <- ses_shortest(rows$x, rows$y)
  if (length(diffs) == 0) {
    return(new_compare())
  }

  # Align with diffs
  header <- paste0("  ", names(rows$header), cli::style_bold(rows$header))

  format <- lapply(diffs, function(diff) {
    path_label <- paste0(paths[[1]], " vs ", paths[[2]])

    lines <- line_by_line(rows$x, rows$y, diff, max_diffs = max_diffs)
    paste0(c(path_label, header, lines), collapse = "\n")
  })
  new_compare(unlist(format, recursive = FALSE))
}

# Make a character matrix of formatted cell values
df_rows <- function(x, y, paths = c("x", "y"), tolerance = NULL) {
  # If same length, drop identical columns
  if (nrow(x) == nrow(y)) {
    is_equal <- function(x, y) {
      if (is_numeric(x)) {
        num_equal(x, y, tolerance = tolerance)
      } else {
        identical(x, y)
      }
    }
    same <- vapply(
      seq_along(x),
      function(j) is_equal(x[[j]], y[[j]]),
      logical(1)
    )
    x <- x[!same]
    y <- y[!same]
  }
  if (ncol(x) == 0) {
    return()
  }

  printed_rows(x, y, paths = paths)
}

printed_rows <- function(x, y, paths = c("x", "y")) {
  joint <- rbind(x, y)
  if (!is.data.frame(joint)) {
    # i.e is a matrix
    joint <- as.data.frame(joint)
    names(joint) <- paste0("[,", format(seq_along(joint)), "]")
  }

  # A speedier implementation of print.data.frame
  cols <- lapply(joint, format)
  for (i in seq_along(cols)) {
    cols[[i]] <- format(c(names(joint)[[i]], cols[[i]]), justify = "right")
  }
  lines <- do.call(paste, cols)

  row_idx <- c(seq_len(nrow(x)), seq_len(nrow(y)))
  row_idx <- paste0(rep(paths, c(nrow(x), nrow(y))), "[", row_idx, ", ] ")
  names(lines) <- format(c("", row_idx), align = "right")

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

unrowname <- function(x) {
  row.names(x) <- NULL
  x
}

all_atomic <- function(x) {
  all(vapply(x, is_atomic, logical(1)))
}
