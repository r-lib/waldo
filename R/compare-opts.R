compare_opts <- function(
  ...,
  tolerance = NULL,
  max_diffs = if (in_ci()) Inf else 10,
  ignore_srcref = TRUE,
  ignore_attr = FALSE,
  ignore_encoding = TRUE,
  ignore_function_env = FALSE,
  ignore_formula_env = FALSE,
  list_as_map = FALSE,
  quote_strings = TRUE
) {
  base <- old_opts(...)

  seen <- new.env(parent = emptyenv())
  seen$envs <- list()

  waldo <- list(
    tolerance = tolerance,
    max_diffs = max_diffs,
    ignore_srcref = ignore_srcref,
    ignore_attr = ignore_attr,
    ignore_encoding = ignore_encoding,
    ignore_function_env = ignore_function_env,
    ignore_formula_env = ignore_formula_env,
    list_as_map = list_as_map,
    quote_strings = quote_strings,
    seen = seen
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
    args <- substitute(...())
    exprs <- vapply(args, expr_deparse, character(1))
    names <- names2(args)
    exprs <- ifelse(names == "", exprs, paste0(names, " = ", exprs))

    warn(paste0("Unused arguments (", paste0(exprs, collapse = ', '), ")"))
  }

  out
}
