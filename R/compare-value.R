compare_value <- function(x, y, path = "x", tolerance = .Machine$double.eps^0.5) {
  attributes(x) <- NULL
  attributes(y) <- NULL

  if (is.numeric(x)) {
    if (vector_equal_tol(x, y, tolerance)) {
      return(new_compare())
    }

    x_cmp <- num_format(x)
    y_cmp <- num_format(y)
  } else {
    x_cmp <- x
    y_cmp <- y
  }

  if (is.character(x)) {
    x_out <- encodeString(x, quote = "'")
  } else {
    x_out <- x
  }

  diff <- ses(x_cmp, y_cmp)
  if (nrow(diff) == 0) {
    if (is.numeric(x)) {
      xi <- seq_along(x)
      diff <- ses_df(xi, xi, "c", xi, xi)[x != y, , drop = FALSE]
      x <- num_format(y - x)
      y <- rep(0, length(x))
      path <- glue("\u0394{path}")
    } else {
      return(new_compare())
    }
  }

  diff$start <- pmax(diff$x1 - 3, 1)
  diff$end <- pmin(diff$x2 + 3, length(x))

  new_group <- c(TRUE, diff$start[-1] > diff$end[-nrow(diff)])
  group_id <- cumsum(new_group)
  lines <- split(diff, group_id)

  new_compare(map_chr(lines, continguous_diff, x = x, x_out, y = y, path = path))
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

vector_equal_tol <- function(x, y, tolerance = .Machine$double.eps ^ 0.5) {
  if (is.null(tolerance)) {
    identical(x, y)
  } else {
    if (length(x) != length(y)) {
      FALSE
    } else {
      missing <- (is.na(x) & is.na(y))
      close <- abs(x - y) < tolerance
      all(missing | close)
    }
  }
}
