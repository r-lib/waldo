#' Proxy for waldo comparison
#'
#' @description
#' Use this generic to override waldo's default comparison if you need to
#' override the defaults (typically because your object stores data in an
#' external pointer).
#'
#' waldo comes with methods for a few common cases:
#'
#' * data.table: the `.internal.selfref` and `index` attributes
#'   are set to `NULL`. Both attributes are used for performance optimisation, and
#'   don't affect the data.
#'
#' * `xml2::xml_node`: the underlying XML data is stored in memory in C,
#'   behind an external pointer, so the we best can do is to convert the
#'   object to a string.
#'
#' * Classes from the `RProtoBuf` package: like XML objects, these store
#'   data in memory in C++ and only expose string names to R. Fortunately,
#'   these have well-understood string representations that we can use for
#'   comparisons. See
#'   <https://protobuf.dev/reference/cpp/api-docs/google.protobuf.text_format/>
#'
#' @param x An object.
#' @param path Path
#' @return A list with two components:
#' * `object`: the modified object
#' * `path`: an updated path showing what modification was applied
#' @export
compare_proxy <- function(x, path = "x") {
  if (typeof(x) == "char") {
    return(list(object = x, path = path))
  }

  UseMethod("compare_proxy")
}

#' @export
compare_proxy.default <- function(x, path) {
  list(object = x, path = path)
}

#' @export
compare_proxy.data.table <- function(x, path) {
  attr(x, ".internal.selfref") <- NULL
  attr(x, "index") <- NULL
  list(object = x, path = path)
}

#' @export
compare_proxy.xml_node <- function(x, path) {
  list(object = as.character(x), path = paste0("as.character(", path, ")"))
}

#' @export
compare_proxy.Date <- compare_proxy.POSIXct <- function(x, path) {
  list(
    object = `storage.mode<-`(x, "numeric"),
    path = paste0("`storage.mode<-`(", path, ', "numeric")')
  )
}

#' @export
compare_proxy.POSIXlt <- function(x, path) {
  # From R 4.3: More experimentally, a ‘"POSIXlt"’ object may have an attribute
  # ‘"balanced"’ indicating if it is known to be filled or fully balanced.
  # This is a performance optimisation that waldo can ignore.
  attr(x, "balanced") <- NULL
  list(object = x, path = path)
}

# RProtoBuf objects -------------------------------------------------------
compare_protobuf <- function(x, path) {
  list(object = x$toString(), path = paste0(path, "$toString()"))
}
#' @export
compare_proxy.Message <- compare_protobuf
#' @export
compare_proxy.Descriptor <- compare_protobuf
#' @export
compare_proxy.EnumDescriptor <- compare_protobuf
#' @export
compare_proxy.FieldDescriptor <- compare_protobuf
#' @export
compare_proxy.ServiceDescriptor <- compare_protobuf
#' @export
compare_proxy.FileDescriptor <- compare_protobuf
#' @export
compare_proxy.EnumValueDescriptor <- compare_protobuf
#' @export
compare_proxy.MethodDescriptor <- compare_protobuf
