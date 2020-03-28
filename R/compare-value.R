compare_value <- function(x, y, path = "x") {
  attributes(x) <- NULL
  attributes(y) <- NULL

  if (is.character(x)) {
    x_out <- encodeString(x, quote = "'")
  } else {
    x_out <- x
  }

  diff <- ses(x, y)
  if (nrow(diff) == 0) {
    return(character())
  }

  diff$start <- pmax(diff$x1 - 3, 1)
  diff$end <- pmin(diff$x2 + 3, length(x))

  new_group <- c(TRUE, diff$start[-1] > diff$end[-nrow(diff)])
  group_id <- cumsum(new_group)
  lines <- split(diff, group_id)

  map_chr(lines, continguous_diff, x = x, x_out, y = y, path = path)
}

continguous_diff <- function(diff, x, x_out, y, path) {
  n <- nrow(diff)
  start <- diff$start[[1]]
  end <- diff$end[[n]]

  out <- character()
  idx <- start
  for (i in seq_len(n)) {
    row <- diff[i, , drop = FALSE]
    if (idx < row$x1) {
      out <- c(out, x_out[idx:(row$x1 - 1)])
    }

    x_i <- row$x1:row$x2
    y_i <- row$y1:row$y2

    out <- c(out, switch(row$t,
      a = c(x_out[x_i], change_add(y[y_i])),
      c = change_modify(x[x_i], y[y_i]),
      d = change_delete(x[x_i])
    ))
    idx <- row$x2 + 1
  }

  if (idx <= end) {
    out <- c(out, x_out[idx:end])
  }

  if (start != 1 || end != length(x)) {
    if (start != 1) {
      out <- c("...", out)
    }
    if (end != length(x)) {
      out <- c(out, "...")
    }
    path <- glue("{path}[{start}:{end}]")
  }

  out <- paste(out, collapse = " ")
  glue("`{path}`: {out}")
}

change_add <- function(x) {
  cli::col_blue("+", x, "+")
}

change_modify <- function(x, y) {
  paste0(cli::col_yellow("/", x), cli::col_green("/"), cli::col_blue(y, "/"))
}

change_delete <- function(x) {
  cli::col_yellow("-", x, "-")
}
