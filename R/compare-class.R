
new_compare <- function(x = character()) {
  stopifnot(is.character(x))
  structure(x, class = "waldo_compare")
}

#' @export
print.waldo_compare <- function(x, ...) {
  if (length(x) == 0) {
    cli::cat_bullet("No differences", bullet = "tick", bullet_col = "green")
  } else {
    if (length(x) > 10 && !in_ci()) {
      x <- c(x[1:10], glue("And {length(x) - 10} more differences ..."))
    }

    cat(paste0(x, collapse = "\n\n"), "\n", sep = "")
  }

  invisible(x)
}
