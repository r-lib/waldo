compare_value <- function(x, y, path = "x") {
  attributes(x) <- NULL
  attributes(y) <- NULL

  diff <- ses(x, y)
  if (nrow(diff) == 0) {
    return(character())
  }

  start <- max(min(diff$x1) - 3, 1)
  end <- min(max(diff$x2) + 3, length(x))

  # TODO: iterate over rows of diff, filling missing pieces
  out <- character(end - start + 1)
  for (i in seq_along(out)) {
    xi <- start + i - 1
    in_diff <- diff$x1 >= xi & diff$x2 <= xi
    if (!any(in_diff)) {
      out[[i]] <- x[[xi]]
    } else {
      row <- diff[in_diff, ]
      if (nrow(row) > 1) {
        abort("Unexpected ses")
      }

      yi <- row$y1 + (xi - row$x1)
      out[[i]] <- switch(row$t,
        a = change_add(y[[yi]]),
        c = change_modify(x[[xi]], y[[yi]]),
        d = change_delete(x[[xi]])
      )
    }
  }

  if (start != 1) {
    out <- c(paste0("...[", start, "] "), out)
  }
  if (end != length(x)) {
    out <- c(out, " ...")
  }

  paste0("`", path, "`: ", paste0(out, collapse = " "))
}

change_add <- function(x) {
  paste0("+", x, "+")
}

change_modify <- function(x, y) {
  paste0("/", x, "/", y, "/")
}

change_delete <- function(x) {
  paste0("-", x, "-")
}
