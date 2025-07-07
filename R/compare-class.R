new_compare <- function(x = character(), max_diffs = if (in_ci()) Inf else 10) {
  stopifnot(is.character(x))
  structure(x, max_diffs = max_diffs, class = "waldo_compare")
}

#' @export
print.waldo_compare <- function(x, n = attr(x, "max_diffs"), ...) {
  stopifnot(is.numeric(n) && length(n) == 1 && n >= 1)
  if (length(x) == 0) {
    cli::cat_bullet("No differences", bullet = "tick", bullet_col = "green")
  } else {
    if (length(x) > n) {
      x <- c(
        x[seq_len(n)],
        glue::glue("And {length(x) - floor(n)} more differences ...")
      )
    }

    cat(paste0(x, collapse = "\n\n"), "\n", sep = "")
  }

  invisible(x)
}
