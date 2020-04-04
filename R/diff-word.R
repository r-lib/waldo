diff_words <- function(x, y, path = ".") {
  x <- words(x)
  y <- words(y)

  diff <- ses(x, y)
  if (nrow(diff) == 0) {
    return(character())
  }

  chunks <- diff_split(diff, length(x))
  new_compare(map_chr(chunks, continguous_word_diff, x = x, y = y, path = path))
}

continguous_word_diff <- function(diff, x, y, path) {
  n <- nrow(diff)
  start <- diff$start[[1]]
  end <- diff$end[[n]]

  out <- character()
  idx <- start
  for (i in seq_len(n)) {
    row <- diff[i, , drop = FALSE]
    if (idx < row$x1) {
      out <- c(out, x[idx:(row$x1 - 1)])
    }

    x_i <- row$x1:row$x2
    y_i <- row$y1:row$y2

    out <- c(out, switch(row$t,
      a = c(x[x_i], word_add(y[y_i])),
      c = c(word_delete(x[x_i]), word_add(y[y_i])),
      d = word_delete(x[x_i])
    ))
    idx <- row$x2 + 1
  }

  if (idx <= end) {
    out <- c(out, x[idx:end])
  }

  if (start != 1 || end != length(x)) {
    if (start != 1) {
      out <- c("...", out)
    }
    if (end != length(x)) {
      out <- c(out, "...")
    }
    path <- glue("words({path}, {start}:{end})")
  }

  paste0("`", path, "`: ", paste0(out, collapse = " "))
}

word_add <- function(x) {
  cli::col_blue("{+", x, "+}")
}
word_delete <- function(x) {
  cli::col_yellow("[-", x, "-]")
}

words <- function(x) {
  strsplit(x, "\\s+")[[1]]
}
