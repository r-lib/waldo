
new_compare <- function(x = character()) {
  stopifnot(is.character(x))
  structure(x, class = "waldo_compare")
}

#' @export
print.waldo_compare <- function(x, n = 10, ...) {
  stopifnot(is.numeric(n) && length(n) == 1 && n >= 1)
  if (length(x) == 0) {
    cli::cat_bullet("No differences", bullet = "tick", bullet_col = "green")
  } else {
    if (length(x) > n && !in_ci()) {
      x <- c(x[seq_len(n)], glue("And {length(x) - floor(n)} more differences ..."))
    }

    cat(paste0(x, collapse = "\n\n"), "\n", sep = "")
  }

  invisible(x)
}
