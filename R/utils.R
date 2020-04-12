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

short_val <- function(x) {
  if (is.object(x) || !is_atomic(x)) {
    return("")
  }

  if (is.character(x)) {
    x <- encodeString(x, quote = "'")
  }

  if (length(x) > 5) {
    x <- c(x[1:5], "...")
  }

  paste0(" (", paste0(x, collapse = ", "), ")")
}

attrs <- function(x) {
  out <- attributes(x)
  if (is.data.frame(x)) {
    out$row.names <- .row_names_info(x, 0L)
  }

  first <- intersect(c("class", "names", "dim"), names(out))
  out[c(first, sort(setdiff(names(out), first)))]
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

is_numeric <- function(x) is_integer(x) || is_double(x)

in_ci <- function() {
  isTRUE(as.logical(Sys.getenv("CI", "FALSE")))
}

if (getRversion() < "3.3.0") {
  strrep <- function(x, times) {
    vapply(
      times,
      function(n) paste(rep(x, n), collapse = ""),
      FUN.VALUE = character(1)
    )
  }
}

left_align <- function(x) {
  nchar <- fansi::nchar_ctl(x)
  padding <- strrep(" ", max(nchar) - nchar)

  paste0(x, padding)
}

multiline <- function(x) any(grepl("\n", x))

default_tol <- function() .Machine$double.eps^0.5