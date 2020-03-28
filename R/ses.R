#' https://www.gnu.org/software/diffutils/manual/diffutils.html#Detailed-Normal
#'
#' * `lar`: Add the lines in range `r` of the second file
#'   after line `l` of the first file.
#' * `fct`: Replace the lines in range `f` of the first file
#'   with lines in range `t` of the second file.
#' * `rdl`: Delete the lines in range `r` from the first file; line `l` is
#'  where they would have appeared in the second file had they not been deleted.

ses <- function(x, y) {
  out <- diffobj::ses(x, y, max.diffs = 100)
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

ses_df <- function(x1, x2, t, y1, y2) {
  tibble::tibble(x1 = x1, x2 = x2, t = t, y1 = y1, y2 = y2)
}
