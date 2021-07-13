#' Proxy for waldo comparison
#'
#' @description
#' Use this generic to override waldo's default comparison if you need to
#' override the defaults (typically because your object contains an external
#' pointer).
#'
#' waldo comes with methods for two common cases:
#'
#' * data.table: the `.internal.selfref` attribute is set to `NULL`. This is
#'   an external pointer that is used for performance optimisation, and
#'   doesn't affect the data.
#'
#' * `xml2::xml_node`: the underlying XML data is stored in memory in C,
#'   behind an external pointer, so the we best can do is to convert the
#'   object to a string.
#'
#' * Classes from the `RProtoBuf` package: like XML objects, these store
#'   data in memory in C++ and only expose string names to R. Fortunately,
#'   these have well-understood string representations that we can use for
#'   comparsions. See
#'   <https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.text_format>
#'
#' @param x An object.
#' @export
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

# RProtoBuf objects
#' @export
compare_proxy.Message <- function(x) {
  x$toString()
}

#' @export
compare_proxy.Descriptor <- function(x) {
  x$toString()
}

#' @export
compare_proxy.EnumDescriptor <- function(x) {
  x$toString()
}

#' @export
compare_proxy.FieldDescriptor <- function(x) {
  x$toString()
}

#' @export
compare_proxy.ServiceDescriptor <- function(x) {
  x$toString()
}

#' @export
compare_proxy.FileDescriptor <- function(x) {
  x$toString()
}

#' @export
compare_proxy.EnumValueDescriptor <- function(x) {
  x$toString()
}

#' @export
compare_proxy.MethodDescriptor <- function(x) {
  x$toString()
}
