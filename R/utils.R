
type_of <- function(x) {
  if (isS4(x)) {
    "S4"
  } else if (is_missing(x)) {
    "MISSING"
  } else if (inherits(x, "R6")) {
    "R6"
  } else {
    typeof(x)
  }
}
friendly_type_of <- function(x) {
  if (isS4(x)) {
    paste0("an S4 object of class <", class(x)[[1]], ">")
  } else if (is_missing(x)) {
    "absent"
  } else if (inherits(x, "R6")) {
    paste0("an R6 object of class <", class(x)[[1]], ">")
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

map_chr <- function(.x, .f, ...) {
  vapply(.x, .f, ..., FUN.VALUE = character(1), USE.NAMES = FALSE)
}

num_format <- function(x) {
  format(x, trim = TRUE, digits = 6, scientific = 3, drop0trailing = TRUE)
}


remove_source <- function(x) {
  if (is_closure(x)) {
    body(x) <- remove_source(body(x))
    x
  } else if (is_call(x)) {
    attr(x, "srcref") <- NULL
    attr(x, "wholeSrcref") <- NULL
    attr(x, "srcfile") <- NULL

    x[] <- lapply(x, remove_source)
    x
  } else {
    x
  }
}
