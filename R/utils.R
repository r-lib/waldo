
type_of <- function(x) {
  if (is_missing(x)) {
    return("MISSING")
  }

  if (!is.object(x)) {
    return(typeof(x))
  }

  if (!isS4(x)) {
    if (inherits(x, "R6")) {
      "R6"
    } else {
      "S3"
    }
  } else {
    "S4"
  }
}

friendly_type_of <- function(x) {
  if (is_missing(x)) {
    return("absent")
  }

  if (!is.object(x)) {
    return(friendly_type(typeof(x)))
  }

  if (!isS4(x)) {
    if (inherits(x, "R6")) {
      klass <- paste(setdiff(class(x), "R6"), collapse = "/")
      paste0("an R6 object of class <", klass, ">")
    } else {
      paste0("an S3 object of class <", paste(class(x), collapse = "/"), ">")
    }
  } else {
    paste0("an S4 object of class <", is(x), ">")
  }
}

attrs <- function(x) {
  out <- attributes(x)
  if (is.data.frame(x)) {
    out$row.names <- .row_names_info(x, 0L)
  }

  first <- intersect(c("class", "names", "dim"), names(out))
  out[c(first, setdiff(names(out), first))]
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

in_ci <- function() {
  isTRUE(as.logical(Sys.getenv("CI", "FALSE")))
}
