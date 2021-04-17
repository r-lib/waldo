compare_opts <- function(...,
                         tolerance = NULL,
                         max_diffs = if (in_ci()) Inf else 10,
                         ignore_srcref = TRUE,
                         ignore_attr = "waldo_opts",
                         ignore_encoding = TRUE,
                         ignore_function_env = FALSE,
                         ignore_formula_env = FALSE,
                         ignore_name_order = FALSE,
                         ignore_NULLs = FALSE,
                         ignore_private = character()
                         ) {

  base <- old_opts(...)

  waldo <- list(
    tolerance = tolerance,
    max_diffs = max_diffs,
    ignore_srcref = ignore_srcref,
    ignore_attr = ignore_attr,
    ignore_encoding = ignore_encoding,
    ignore_formula_env = ignore_formula_env,
    ignore_function_env = ignore_function_env,
    ignore_name_order = ignore_name_order,
    ignore_NULLs = ignore_NULLs,
    ignore_private = ignore_private
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

object_opts <- function(x) {
  attr(x, "waldo_opts")
}

merge_opts <- function(...) {
  allopts <- zap_nulls(list(...))
  purrr::reduce(allopts, utils::modifyList)
}
