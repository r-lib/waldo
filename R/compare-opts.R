compare_opts <- function(...,
                         tolerance = NULL,
                         ignore_srcref = TRUE,
                         ignore_attr = FALSE,
                         ignore_encoding = TRUE,
                         ignore_function_env = FALSE
                         ) {

  base <- old_opts(...)

  waldo <- list(
    tolerance = tolerance,
    ignore_srcref = ignore_srcref,
    ignore_attr = ignore_attr,
    ignore_encoding = ignore_encoding,
    ignore_function_env = ignore_function_env
  )

  utils::modifyList(waldo, base)
}

old_opts <- function(..., tol, check.attributes, checkNames) {
  out <- list()

  if (!missing(tol)) {
    warn("`tol` is deprecated; please use `tolerance` instead")
    out$tolerance <- tol
  }

  if (!missing(check.attributes)) {
    warn("`check.attributes` is deprecated; please use `ignore_attr` instead")
    out$ignore_attr <- !check.attributes
  }

  if (!missing(checkNames)) {
    warn("`checkNames` no longer supported; please use `ignore_attr` instead")
    out$ignore_attr <- !checkNames
  }

  if (!missing(...)) {
    args <- names(substitute(alist(...))[-1])
    args2 <- encodeString(args, quote = "`")
    warn(paste0("Other arguments (", paste0(args2, collapse = ', '), ") ignored"))
  }

  out
}
