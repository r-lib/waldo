
diff_align <- function(diff, x, y) {
  n <- nrow(diff)

  x_out <- character()
  y_out <- character()

  for (i in seq_len(n)) {
    row <- diff[i, , drop = FALSE]
    x_i <- seq2(row$x1, row$x2)
    y_i <- seq2(row$y1, row$y2)

    x_out <- c(x_out, switch(row$t,
      a = c(col_x(x[x_i]), NA[y_i]),
      c = col_c(x[x_i]),
      d = col_d(x[x_i]),
      x = col_x(x[x_i])
    ))
    y_out <- c(y_out, switch(row$t,
      a = col_a(y[y_i]),
      c = col_c(y[y_i]),
      d = c(col_x(y[y_i]), NA[x_i]),
      x = col_x(y[y_i]))
    )
  }

  # Ensure both contexts are same length
  if (length(x_out) != length(y_out)) {
    # TODO: need to figure out when to truncate from left vs right
    len <- min(length(x_out), length(y_out))
    x_out <- x_out[seq(length(x_out) - len + 1, length(x_out))]
    y_out <- y_out[seq(length(y_out) - len + 1, length(y_out))]
  }

  x_slice <- make_slice(x, diff$x1[[1]], diff$x2[[n]])
  y_slice <- make_slice(y, diff$y1[[1]], diff$y2[[n]])

  list(x = x_out, y = y_out, x_slice = x_slice, y_slice = y_slice)
}

# Only want to show slice if it's partial
make_slice <- function(x, first, last) {
  if (first <= 1 && last >= length(x)) {
    NULL
  } else {
    c(first, last)
  }
}

col_a <- function(x) ifelse(is.na(x), NA, cli::col_blue(x))
col_d <- function(x) ifelse(is.na(x), NA, cli::col_yellow(x))
col_c <- function(x) ifelse(is.na(x), NA, cli::col_green(x))
col_x <- function(x) ifelse(is.na(x), NA, cli::col_grey(x))


# values ------------------------------------------------------------------

diff_element <- function(x, y,
                         x_path = "x",
                         y_path = "y",
                         escape_string = TRUE,
                         width = getOption("width"),
                         ci = in_ci()) {
  if (escape_string) {
    x <- encodeString(x, quote = "\"")
    y <- encodeString(y, quote = "\"")
  }

  diff <- ses_context(x, y)
  if (length(diff) == 0) {
    return(new_compare())
  }

  align <- lapply(diff, diff_align, x = x, y = y)

  format <- lapply(align, format_diff_matrix,
    x_path = x_path,
    y_path = y_path,
    width = width,
    ci = ci
  )
  new_compare(unlist(format, recursive = FALSE))
}

format_diff_matrix <- function(alignment, x_path, y_path, width = getOption("width"), ci = in_ci()) {
  mat <- rbind(alignment$x, alignment$y)
  mat[is.na(mat)] <- ""

  n_trunc <- if (ci) 0 else ncol(mat) - 10

  # Label slices, if needed
  x_path_label <- label_path(x_path, alignment$x_slice)
  y_path_label <- label_path(y_path, alignment$y_slice)

  mat_out <- cbind(paste0("`", c(x_path_label, y_path_label), "`:"), mat)
  if (n_trunc > 0) {
    mat_out <- mat_out[, 1:11]
    mat_out <- cbind(mat_out, c(paste0("and ", n_trunc, " more..."), "..."))
  }
  out <- apply(mat_out, 2, pad, align = "left")
  rows <- apply(out, 1, paste, collapse = " ")

  if (fansi::nchar_ctl(rows[[1]]) <= width) {
    return(paste0(rows, collapse = "\n"))
  }

  # Too wide for top-and-bottom display, so try side-by-side
  if (is.null(alignment$slice)) {
    x_idx <- seq_len(ncol(mat))
    y_idx <- seq_len(ncol(mat))
  } else {
    x_idx <- seq(alignment$x_slice[[1]], alignment$x_slice[[2]])
    y_idx <- seq(alignment$y_slice[[1]], alignment$y_slice[[2]])
  }
  x_idx_out <- paste0("[", x_idx, "]")
  y_idx_out <- paste0("[", x_idx, "]")

  mat_out <- cbind(c(x_path, "|", y_path), rbind(mat[1, ], "|", mat[2, ]))
  if (n_trunc > 0) {
    mat_out <- mat_out[, 1:11]
    mat_out <- cbind(mat_out, c("...", "", "..."))
    x_idx_out <- c(x_idx_out[1:10], "...")
    y_idx_out <- c(y_idx_out[1:10], paste0("and ", n_trunc, " more ..."))
  }
  mat_out <- rbind(
    format(c("", x_idx_out), justify = "right"),
    mat_out,
    format(c("", y_idx_out), justify = "left")
  )

  out <- apply(mat_out, 1, pad, align = "left")
  rows <- apply(out, 1, paste, collapse = " ")

  if (fansi::nchar_ctl(rows[[1]]) <= width) {
    return(paste0(rows, collapse = "\n"))
  }

  paste0(
    x_path, "[[", x_idx, "]]: ", mat[1, ], "\n",
    y_path, "[[", y_idx, "]]: ", mat[2, ]
  )
}

label_path <- function(path, slice) {
  if (is.null(slice)) {
    path
  } else {
    paste0(path, "[", slice[[1]], ":", slice[[2]], "]")
  }
}
