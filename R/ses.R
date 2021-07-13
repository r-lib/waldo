# <https://www.gnu.org/software/diffutils/manual/diffutils.html#Detailed-Normal>
#
# * `lar`: Add the lines in range `r` of the second file
#   after line `l` of the first file.
# * `fct`: Replace the lines in range `f` of the first file
#   with lines in range `t` of the second file.
# * `rdl`: Delete the lines in range `r` from the first file; line `l` is
#  where they would have appeared in the second file had they not been deleted.
ses <- function(x, y) {
  if (is.character(x)) {
    x <- enc2utf8(x)
    y <- enc2utf8(y)
  }

  out <- diffobj::ses(x, y, warn = FALSE)
  out <- rematch2::re_match(out, paste0(
    "(?:(?<x1>\\d+),)?(?<x2>\\d+)",
    "(?<t>[acd])",
    "(?:(?<y1>\\d+),)?(?<y2>\\d+)"
  ))[1:5]

  out$x1 <- ifelse(out$x1 == "", out$x2, out$x1)
  out$y1 <- ifelse(out$y1 == "", out$y2, out$y1)

  out$x1 <- as.integer(out$x1)
  out$x2 <- as.integer(out$x2)
  out$y1 <- as.integer(out$y1)
  out$y2 <- as.integer(out$y2)

  out
}

ses_elementwise <- function(x, y) {
  n_x <- length(x)
  n_y <- length(y)
  n <- min(n_x, n_y)

  id <- seq_len(n)
  neq <- id[x[id] != y[id]]

  if (length(neq) == 0) {
    n_x <- length(x)
    n_y <- length(y)
    if (length(x) > length(y)) {
      return(ses_df(n_y + 1, n_x, "d", n_y, n_y))
    } else if (length(x) < length(y)) {
      return(ses_df(n_x, n_x, "a", n_x + 1, n_y))
    } else {
      return(ses_df(integer(), integer(), character(), integer(), integer()))
    }
  }

  new_group <- c(TRUE, neq[-1] - 1 != neq[-length(neq)])
  group_id <- cumsum(new_group)

  diffs <- unname(split(neq, group_id))

  x1 <- y1 <- vapply(diffs, function(x) x[[1]], integer(1))
  x2 <- y2 <- vapply(diffs, function(x) x[[length(x)]], integer(1))
  t <- rep("c", length(diffs))

  if (length(y) > length(x)) {
    y2[[length(diffs)]] <- n_y
  } else if (length(x) > length(y)) {
    x2[[length(diffs)]] <- n_x
  }

  ses_df(x1, x2, t, y1, y2)
}

ses_shortest <- function(x, y, size = 3) {
  ses1 <- ses(x, y)
  if (nrow(ses1) == 0) {
    return(list())
  }

  ses2 <- ses_elementwise(x, y)

  context1 <- ses_chunks(ses1, length(x), length(y), size = size)
  context2 <- ses_chunks(ses2, length(x), length(y), size = size)

  diff_length <- function(ses) ses$x2[nrow(ses)] - ses$x1[[1]] + 1
  diff1 <- sum(vapply(context1, diff_length, double(1)))
  diff2 <- sum(vapply(context2, diff_length, double(1)))

  if (diff1 < diff2) {
    context1
  } else {
    context2
  }
}

ses_chunks <- function(diff, n_x, n_y, size = 3) {
  # Compute context around each individual diff
  diff$x_start <- pmax(diff$x1 - size, 1)
  diff$x_end <- pmin(diff$x2 + size, n_x)
  diff$y_start <- pmax(diff$y1 - size, 1)
  diff$y_end <- pmin(diff$y2 + size, n_y)

  # Split up into non-contiguous chunks
  new_group <- c(TRUE, diff$x_start[-1] > diff$x_end[-nrow(diff)])
  group_id <- cumsum(new_group)
  diffs <- unname(split(diff, group_id))

  # Fill in rows that are the same in x and y
  lapply(diffs, diff_complete)
}


diff_complete <- function(diff) {
  n <- nrow(diff)

  diff$pos <- 1:n

  ctxt <- data.frame(
    pos = 1:(n + 1) - 0.5,
    x1 = c(diff$x_start[[1]], diff$x2 + 1),
    x2 = c(diff$x1 - 1, diff$x_end[[n]]),
    t = "x",
    y1 = c(diff$y_start[[1]], diff$y2 + 1),
    y2 = c(diff$y1 - 1, diff$y_end[[n]])
  )

  out <- rbind(diff[names(ctxt)], ctxt)

  # Interleave in correct order
  out <- out[order(out$pos), , drop = FALSE]
  out$pos <- NULL

  # Drop rows with no data
  needed <- (out$x2 - out$x1) >= 0 | (out$y2 - out$y1) >= 0
  out[needed, , drop = FALSE]
}

ses_df <- function(x1, x2, t, y1, y2) {
  tibble::tibble(x1 = x1, x2 = x2, t = t, y1 = y1, y2 = y2)
}
