
type_of <- function(x) {
  if (is_missing(x)) {
    "MISSING"
  } else {
    typeof(x)
  }
}
friendly_type_of <- function(x) {
  if (is_missing(x)) {
    "absent"
  } else {
    friendly_type(typeof(x))
  }
}

attrs <- function(x) {
  out <- attributes(x)
  if (is.data.frame(x)) {
    out$row.names <- .row_names_info(x, 0L)
  }
  out
}

list_extract <- function(x, i) {
  if (is.integer(i)) {
    if (i > length(x)) {
      missing_arg()
    } else {
      x[[i]]
    }
  } else if (is.character(i)) {
    if (!has_name(x, i)) {
      missing_arg()
    } else {
      x[[i]]
    }
  }
}

attr_path <- function(path, attr) {
  # from ?attributes, excluding row.names() because it's not a simple accessor
  funs <- c("comment", "class", "dim", "dimnames", "levels", "names", "tsp")
  ifelse(attr %in% funs, glue("{attr}({path})"), glue("attr({path}, '{attr}')"))
}

map_chr <- function(.x, .f, ...) {
  vapply(.x, .f, ..., FUN.VALUE = character(1), USE.NAMES = FALSE)
}
