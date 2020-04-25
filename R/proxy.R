compare_proxy <- function(x) {
  UseMethod("compare_proxy")
}

#' @export
compare_proxy.default <- function(x) {
  x
}

#' @export
compare_proxy.data.table <- function(x) {
  attr(x, ".internal.selfref") <- NULL
  x
}

#' @export
compare_proxy.xml_node <- function(x) {
  as.character(x)
}

