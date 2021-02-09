oo_type <- function(x) {
  if (is.object(x)) {
    if (isS4(x)) {
      "S4"
    } else {
      if (inherits(x, "R6")) {
        "R6"
      } else {
        "S3"
      }
    }
  } else {
    "base"
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
      paste0(
        "an S3 object of class <", paste(class(x), collapse = "/"), ">, ",
        friendly_type(typeof(x))
      )
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

attrs <- function(x, ignore) {
  out <- attributes(x)
  names <- setdiff(names2(out), ignore)

  first <- intersect(c("class", "names", "dim"), names)
  rest <- sort(setdiff(names, first))
  out[c(first, rest)]
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

fansi_align <- function(x, width = NULL, justify = c("left", "right")) {
  justify <- arg_match(justify)

  nchar <- fansi::nchar_ctl(x)
  width <- width %||% max(nchar)
  padding <- strrep(" ", pmax(0, width - nchar))

  switch(justify,
    left = paste0(x, padding),
    right = paste0(padding, x)
  )
}

split_by_line <- function(x) {
  trailing_nl <- grepl("\n$", x)

  x <- strsplit(x, "\n")
  x[trailing_nl] <- lapply(x[trailing_nl], c, "")
  x
}

multiline <- function(x) any(grepl("\n", x))

default_tol <- function() .Machine$double.eps^0.5
