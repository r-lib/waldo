diff_lines <- function(x, y, path = ".") {
  x <- lines(x)
  y <- lines(y)

  diff <- ses(x, y)
  if (nrow(diff) == 0) {
    return(character())
  }

  chunks <- diff_split(diff, length(x))
  new_compare(map_chr(chunks, continguous_line_diff, x = x, y = y, path = path))
}

continguous_line_diff <- function(diff, x, y, path) {
  n <- nrow(diff)
  start <- diff$start[[1]]
  end <- diff$end[[n]]

  out <- character()
  idx <- start
  for (i in seq_len(n)) {
    row <- diff[i, , drop = FALSE]
    if (idx < row$x1) {
      out <- c(out, line_same(x[idx:(row$x1 - 1)]))
    }

    x_i <- row$x1:row$x2
    y_i <- row$y1:row$y2

    out <- c(out, switch(row$t,
      a = c(line_same(x[x_i]), line_add(y[y_i])),
      c = c(line_delete(x[x_i]), line_add(y[y_i])),
      d = line_delete(x[x_i])
    ))
    idx <- row$x2 + 1
  }

  if (idx <= end) {
    out <- c(out, line_same(x[idx:end]))
  }

  if (start != 1 || end != length(x)) {
    if (start != 1) {
      out <- c(line_same("..."), out)
    }
    if (end != length(x)) {
      out <- c(out, line_same("..."))
    }
    path <- glue("lines({path}, {start}:{end})")
  }

  paste0("`", path, "`:\n", paste0(out, collapse = "\n"))
}

line_same <- function(x) {
  cli::col_grey("    ", x)
}
line_add <- function(x) {
  cli::col_blue("  + ", x)
}
line_delete <- function(x) {
  cli::col_yellow("  - ", x)
}

lines <- function(x) {
  strsplit(x, "\r?\n")[[1]]
}
