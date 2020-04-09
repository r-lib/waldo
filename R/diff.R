diff_split <- function(diff, n, size = 3) {
  diff$start <- pmax(diff$x1 - size, 1)
  diff$end <- pmin(diff$x2 + size, n)

  new_group <- c(TRUE, diff$start[-1] > diff$end[-nrow(diff)])
  group_id <- cumsum(new_group)
  unname(split(diff, group_id))
}

diff_render <- function(diff, x, y, path, diff_a, diff_d, diff_c = NULL, diff_x = NULL, path_context, combine) {

  diff_c <- diff_c %||% function(x, y) c(diff_d(x), diff_a(y))
  diff_x <- diff_x %||% function(x) x

  n <- nrow(diff)
  start <- diff$start[[1]]
  end <- diff$end[[n]]

  out <- character()
  idx <- start
  for (i in seq_len(n)) {
    row <- diff[i, , drop = FALSE]
    if (idx < row$x1) {
      out <- c(out, diff_x(x[idx:(row$x1 - 1)]))
    }

    x_i <- row$x1:row$x2
    y_i <- row$y1:row$y2

    out <- c(out, switch(row$t,
      a = c(diff_x(x[x_i]), diff_a(y[y_i])),
      c = diff_c(x[x_i], y[y_i]),
      d = diff_d(x[x_i])
    ))
    idx <- row$x2 + 1
  }

  if (idx <= end) {
    out <- c(out, diff_x(x[idx:end]))
  }

  if (start != 1 || end != length(x)) {
    if (start != 1) {
      out <- c(diff_x("..."), out)
    }
    if (end != length(x)) {
      out <- c(out, diff_x("..."))
    }
    path <- path_context(path, start, end)
  }

  combine(paste0("`", path, "`"), out)
}

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
    idx <- seq_len(ncol(mat))
  } else {
    idx <- seq(alignment$slice[[1]], alignment$slice[[2]])
  }
  idx_out <- paste0("[", idx, "]")

  mat_out <- cbind(c(x_path, "|", y_path), rbind(mat[1, ], "|", mat[2, ]))
  if (n_trunc > 0) {
    mat_out <- mat_out[, 1:11]
    mat_out <- cbind(mat_out, c("...", "", paste0("and ", n_trunc, " more ...")))
    idx_out <- c(idx_out[1:10], "...")
  }
  mat_out <- rbind(format(c("", idx_out), justify = "right"), mat_out)

  out <- apply(mat_out, 1, pad, align = "left")
  rows <- apply(out, 1, paste, collapse = " ")

  if (fansi::nchar_ctl(rows[[1]]) <= width) {
    return(paste0(rows, collapse = "\n"))
  }

  paste0(
    x_path, "[", idx, "]: ", mat[1, ], "\n",
    y_path, ": ", strrep(" ", nchar(idx) + 2), mat[2, ]
  )
}

label_path <- function(path, slice) {
  if (is.null(slice)) {
    path
  } else {
    paste0(path, "[", slice[[1]], ":", slice[[2]], "]")
  }
}

# lines -------------------------------------------------------------------

diff_lines <- function(x, y, path = ".") {
  x <- lines(x)
  y <- lines(y)

  diff <- ses(x, y)
  if (nrow(diff) == 0) {
    return(character())
  }

  chunks <- diff_split(diff, length(x))
  out <- map_chr(chunks, diff_render, x = x, y = y, path = path,
    diff_a = function(x) cli::col_blue("  + ", x),
    diff_d = function(x) cli::col_yellow("  - ", x),
    diff_c = function(x, y) diff_inline(x, y),
    diff_x = function(x) cli::col_grey("    ", x),
    path_context = function(path, start, end) glue("lines({path}, {start}:{end})"),
    combine = function(path, diff) paste0(path, ":\n", paste0(diff, collapse = "\n"))
  )
  new_compare(out)
}

lines <- function(x) {
  strsplit(x, "\r?\n")[[1]]
}

diff_inline <- function(x, y, path = ".") {
  x_cmp <- words(x)
  y_cmp <- words(y)

  diff <- ses(x_cmp, y_cmp)


  if (nrow(diff) == 0 || nrow(diff) / length(x_cmp) > 0.25) {
    return(c(cli::col_yellow("  - ", x), cli::col_blue("  + ", y)))
  }

  chunks <- diff_split(diff, length(x_cmp), size = 7)

  left <- map_chr(chunks, diff_render, x = x_cmp, y = y_cmp, path = path,
    diff_a = function(x) "",
    diff_d = function(x) cli::col_yellow("[-", paste0(encodeString(x), collapse = ""), "-]"),
    path_context = function(path, start, end) "",
    combine = function(path, diff) paste0(diff, collapse = "")
  )
  right <- map_chr(chunks, diff_render, x = x_cmp, y = y_cmp, path = path,
    diff_a = function(x) cli::col_blue("{+", paste0(encodeString(x), collapse = ""), "+}"),
    diff_d = function(x) "",
    path_context = function(path, start, end) "",
    combine = function(path, diff) paste0(diff, collapse = "")
  )

  c(paste0("  - ", left), paste0("  + ", right))
}

# words -------------------------------------------------------------------

diff_words <- function(x, y, path = ".") {
  if (x == y) {
    return(character())
  }

  x_cmp <- words(x)
  y_cmp <- words(y)

  diff <- ses(x_cmp, y_cmp)
  if (nrow(diff) == 0) {
    return(diff_element(x, y, path, path))
  }

  chunks <- diff_split(diff, length(x_cmp), size = 7)
  out <- map_chr(chunks, diff_render, x = x_cmp, y = y_cmp, path = path,
    diff_a = function(x) cli::col_blue("{+", paste0(encodeString(x), collapse = ""), "+}"),
    diff_d = function(x) cli::col_yellow("[-", paste0(encodeString(x), collapse = ""), "-]"),
    path_context = function(path, start, end) glue("words({path}, {start}:{end})"),
    combine = function(path, diff) paste0(path, ": ", paste0(diff, collapse = ""))
  )
  new_compare(out)
}

words <- function(x) {
  strsplit(x, "(?=\\s+)", perl = TRUE)[[1]]
}
