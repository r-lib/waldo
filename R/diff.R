diff_align <- function(diff, x, y) {
  n <- nrow(diff)

  x_out <- character()
  y_out <- character()
  x_idx <- integer()
  y_idx <- integer()

  for (i in seq_len(n)) {
    row <- diff[i, , drop = FALSE]
    x_i <- seq2(row$x1, row$x2)
    y_i <- seq2(row$y1, row$y2)

    # Sometimes (last row?) a change is really one change + many additions
    if (row$t == "c" && length(x_i) != length(y_i)) {
      m <- max(length(x_i), length(y_i))
      length(x_i) <- m
      length(y_i) <- m
    }

    x_out <- c(x_out, switch(row$t,
      a = col_x(extract(x, c(x_i, NA[y_i]))),
      c = col_c(extract(x, x_i)),
      d = col_d(extract(x, x_i)),
      x = col_x(extract(x, x_i))
    ))
    y_out <- c(y_out, switch(row$t,
      a = col_a(extract(y, y_i)),
      c = col_c(extract(y, y_i)),
      d = col_x(extract(y, c(y_i, NA[x_i]))),
      x = col_x(extract(y, y_i))
    ))

    x_idx <- c(x_idx, x_i[x_i != 0], if (row$t == "a") NA[y_i])
    y_idx <- c(y_idx, y_i[y_i != 0], if (row$t == "d") NA[x_i])
  }

  # Ensure both contexts are same length
  if (length(x_out) != length(y_out)) {
    # TODO: need to figure out when to truncate from left vs right
    len <- min(length(x_out), length(y_out))
    x_out <- x_out[seq(length(x_out) - len + 1, length(x_out))]
    y_out <- y_out[seq(length(y_out) - len + 1, length(y_out))]

    x_idx <- x_idx[seq(length(x_idx) - len + 1, length(x_idx))]
    y_idx <- y_idx[seq(length(y_idx) - len + 1, length(y_idx))]
  }

  x_slice <- make_slice(x, x_idx)
  y_slice <- make_slice(y, y_idx)

  list(
    x = x_out,
    y = y_out,
    x_slice = x_slice,
    y_slice = y_slice,
    x_idx = x_idx,
    y_idx = y_idx
  )
}

extract <- function(x, idx) {
  out <- x[idx]
  out[is.na(idx)] <- ""
  out
}

# Only want to show slice if it's partial
make_slice <- function(x, idx) {
  if (all(is.na(idx))) {
    return(NULL)
  }

  idx <- range(idx, na.rm = TRUE)
  if (idx[[1]] <= 1 && idx[[2]] >= length(x)) {
    NULL
  } else {
    idx
  }
}

col_a <- function(x) cli::col_blue(x)
col_d <- function(x) cli::col_yellow(x)
col_c <- function(x) cli::col_green(x)
col_x <- function(x) cli::col_grey(x)

# values ------------------------------------------------------------------

diff_element <- function(x, y, paths = c("x", "y"),
                         quote = "\"",
                         justify = "left",
                         max_diffs = 10,
                         width = getOption("width")) {

  # Must quote before comparison to ensure that "NA" and NA_character
  # have different representation
  if (!is.null(quote)) {
    x <- encodeString(x, quote = quote)
    y <- encodeString(y, quote = quote)
  }

  diff <- ses_shortest(x, y)
  if (length(diff) == 0) {
    return(new_compare())
  }

  format <- lapply(diff, format_diff_matrix,
    x = x,
    y = y,
    paths = paths,
    justify = justify,
    width = width,
    max_diffs = max_diffs
  )
  new_compare(unlist(format, recursive = FALSE))
}

format_diff_matrix <- function(diff, x, y, paths,
                               justify = "left",
                               width = getOption("width"),
                               max_diffs = 10) {
  alignment <- diff_align(diff, x, y)
  mat <- rbind(alignment$x, alignment$y)

  n <- min(ncol(mat), max_diffs)
  n_trunc <- ncol(mat) - n

  # Label slices, if needed
  x_path_label <- label_path(paths[[1]], alignment$x_slice)
  y_path_label <- label_path(paths[[2]], alignment$y_slice)

  # Paired lines ---------------------------------------------------------------
  mat_out <- cbind(paste0("`", c(x_path_label, y_path_label), "`:"), mat)
  if (n_trunc > 0) {
    mat_out <- mat_out[, seq_len(n + 1)]
    mat_out <- cbind(mat_out, c(paste0("and ", n_trunc, " more..."), "..."))
  }
  out <- apply(mat_out, 2, fansi_align, justify = justify)
  rows <- apply(out, 1, paste, collapse = " ")

  if (fansi::nchar_ctl(rows[[1]]) <= width) {
    return(paste0(rows, collapse = "\n"))
  }

  # Side-by-side ---------------------------------------------------------------
  x_idx_out <- label_idx(alignment$x_idx)
  y_idx_out <- label_idx(alignment$y_idx)
  idx_width <- max(nchar(x_idx_out), nchar(y_idx_out))

  divider <- ifelse(mat[1,] == mat[2, ], "|", "-")

  mat_out <- cbind(c(paths[[1]], "|", paths[[2]]), rbind(mat[1, ], divider, mat[2, ]))
  if (n_trunc > 0) {
    mat_out <- mat_out[, seq_len(n + 1)]
    mat_out <- cbind(mat_out, c("...", "", "..."))
    x_idx_out <- c(x_idx_out[seq_len(n)], "...")
    y_idx_out <- c(y_idx_out[seq_len(n)], paste0("and ", n_trunc, " more ..."))
  }
  mat_out <- rbind(
    format(c("", x_idx_out), justify = "right"),
    mat_out,
    format(c("", y_idx_out), justify = "left")
  )

  out <- apply(mat_out, 1, fansi_align, justify = "left")
  rows <- apply(out, 1, paste, collapse = " ")

  if (fansi::nchar_ctl(rows[[1]]) <= width) {
    return(paste0(rows, collapse = "\n"))
  }

  # Line-by-line ---------------------------------------------------------------
  lines <- line_by_line(x, y, diff, max_diffs = max_diffs)
  paste0(
    paste0(x_path_label, " vs ", y_path_label), "\n",
    paste0(lines, collapse = "\n")
  )
}

line_by_line <- function(x, y, diff, max_diffs = 10) {
  lines <- character()
  if (nrow(diff) == 0) {
    return(lines)
  }

  line_a <- function(x) if (length(x) > 0) col_a(paste0("+ ", names(x), x))
  line_d <- function(x) if (length(x) > 0) col_d(paste0("- ", names(x), x))
  line_x <- function(x) if (length(x) > 0) col_x(paste0("  ", names(x), x))

  diff_lengths <- cumsum(pmax(diff$x2 - diff$x1, diff$y2 - diff$y1) + 1)
  all_diff_lengths <- last(diff_lengths)
  if (all_diff_lengths > max_diffs) {
    diffs_ok <- which(stats::lag(diff_lengths, 0) <= max_diffs)

    if (length(diffs_ok) == 0) {
      diff_ok <- 0
      diff_length_partial <- max_diffs
    } else {
      diff_ok <- last(diffs_ok)
      diff_length_partial <- max_diffs - diff_lengths[[diff_ok]]
    }

    if (diff_length_partial > 0) {
      partial_diff <- diff[diff_ok + 1, ]
      partial_diff$x2 <- min(partial_diff$x2, partial_diff$x1 + diff_length_partial - 1)
      partial_diff$y2 <- min(partial_diff$y2, partial_diff$y1 + diff_length_partial - 1)
    } else {
      partial_diff <- NULL
    }
    diff <- rbind(diff[seq_len(diff_ok), ], partial_diff)

    n_trunc <- all_diff_lengths - max_diffs
  } else {
    n_trunc <- 0
  }

  for (i in seq_len(nrow(diff))) {
    row <- diff[i, , drop = FALSE]
    x_i <- seq2(row$x1, row$x2)
    y_i <- seq2(row$y1, row$y2)
    lines <- c(lines, switch(row$t,
      x = line_x(x[x_i]),
      a = c(line_x(x[x_i]), line_a(y[y_i])),
      c = interleave(line_d(x[x_i]), line_a(y[y_i])),
      d = line_d(x[x_i])
    ))
  }

  if (n_trunc > 0) {
    lines <- c(lines, paste0("and ", n_trunc, " more ..."))
  }

  lines
}

interleave <- function(x, y) {
  # Only interleave if same number of lines
  if (length(x) == length(y)) {
    ord <- c(seq_along(x), seq_along(y))
    c(x, y)[order(ord)]
  } else {
    c(x, y)
  }
}

label_path <- function(path, slice) {
  if (is.null(slice)) {
    path
  } else {
    paste0(path, "[", slice[[1]], ":", slice[[2]], "]")
  }
}

label_idx <- function(idx) {
  ifelse(is.na(idx), "", paste0("[", idx, "]"))
}

last <- function(x) {
  x[[length(x)]]
}
