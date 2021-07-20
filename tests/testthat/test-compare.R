test_that("same object has no differences", {
  x <- 1:10
  expect_equal(compare_structure(x, x), character())
})

test_that("attributes compare by name", {
  x <- structure(list(), a = "a", b = "b")
  y <- structure(list(), b = "b", a = "a")
  expect_equal(compare_structure(x, y), character())
})

test_that("unnnamed lists compare all positions", {
  x <- list(1, 2)
  y <- list(3, 4)

  expect_length(compare(x, y), 2)
})

test_that("can control number of differences", {
  x <- as.list(letters)
  y <- as.list(LETTERS)
  expect_snapshot(compare(x, y, max_diffs = 1))
  expect_snapshot(compare(x, y, max_diffs = Inf))

  expect_snapshot(compare(letters, LETTERS, max_diffs = 1))
  expect_snapshot(compare(letters, LETTERS, max_diffs = 10))
  expect_snapshot(compare(letters, LETTERS, max_diffs = 20))
  expect_snapshot(compare(letters, LETTERS, max_diffs = Inf))
})

test_that("can optionally ignore attributes", {
  opts <- compare_opts(ignore_attr = TRUE)

  x <- y <- 1:5
  attr(y, "a") <- "b"
  expect_equal(compare_structure(x, y, opts = opts), character())

  # Ignores class
  class(y) <- "foofy"
  expect_equal(compare_structure(x, y, opts = opts), character())

  # Ignores names
  x <- list(x = 1)
  y <- list(y = 1)
  expect_equal(compare_structure(x, y, opts = opts), character())
})

test_that("can optionally ignore selected attributes", {
  x <- y <- 1:5
  attr(y, "a") <- "b"
  attr(y, "b") <- "b"
  opts <- compare_opts(ignore_attr = c("a", "b"))
  expect_equal(compare_structure(x, y, opts = opts), character())

  expect_snapshot({
    compare(x, y, ignore_attr = "a")
  })

  # Ignores names
  x <- list(x = 1)
  y <- list(y = 1)
  opts <- compare_opts(ignore_attr = "names")
  expect_equal(compare_structure(x, y, opts = opts), character())
})

test_that("can optionally ignore function/formula envs", {
  f1a <- y ~ x
  f1b <- local(y ~ x)
  expect_equal(length(compare(f1a, f1b, ignore_formula_env = TRUE)), 0)

  f2a <- function(x) x + 1
  f2b <- local(function(x) x + 1)
  expect_equal(length(compare(f2a, f2b, ignore_function_env = TRUE)), 0)
})

test_that("don't strictly compare row names", {
  df1 <- df2 <- data.frame(x = 1:2)
  rownames(df2) <- 1:2
  expect_equal(compare_structure(df1, df2), character())
})

test_that("can ignore minor numeric differences", {
  x <- 1:3
  expect_equal(compare_structure(x, as.numeric(x), opts = compare_opts(tolerance = 0)), character())
  expect_equal(compare_structure(x, x + 1e-9, opts = compare_opts(tolerance = 1e-6)), character())
})

test_that("ignores S3 [[ methods", {
  expect_snapshot({
    x <- as.POSIXlt("2020-01-01")
    y <- as.POSIXlt("2020-01-02")
    compare(x, y)

    x <- package_version("1.0.0")
    y <- package_version("1.1.0")
    compare(x, y)
  })
})

test_that("can optionally compare encoding", {
  x <- c("fa\xE7ile", "fa\ue7ile")
  Encoding(x) <- c("latin1", "UTF-8")
  y <- rev(x)

  expect_snapshot({
    compare(x, y)
    compare(x, y, ignore_encoding = FALSE)
  })
})

test_that("lists compare by name, where possible", {
  expect_snapshot({
    "extra y"
    compare(list("a", "b"), list("a", "b", "c"))
    compare(list(a = "a", b = "b"), list(a = "a", b = "b", c = "c"))

    "extra x"
    compare(list("a", "b", "c"), list("a", "b"))
    compare(list(a = "a", b = "b", c = "c"), list(a = "a", b= "b"))

    "different order"
    compare(list(a = "a", b = "b"), list(b = "b", a = "a"))

    "invalid names uses position"
    compare(list(a = "a", "b"), list(a = "a", "c"))
    compare(list(a = "a", a = "b"), list(a = "a", a = "c"))
  })
})

test_that("can request lists treated as maps", {
  compare_map <- function(x, y) compare(x, y, list_as_map = TRUE)

  expect_equal(
    compare_map(list(x = 1, 2, y = 3), list(y = 3, 2, x = 1)),
    new_compare()
  )
  expect_equal(
    compare_map(list(x = 1, y = NULL, NULL), list(x = 1)),
    new_compare()
  )

  # But duplicated names are still reported
  expect_snapshot(
    compare_map(list(x = 1, y = 1, y = 2), list(x = 1, y = 1))
  )
})

test_that("can compare with `missing_arg()`", {
  expect_snapshot({
    compare(missing_arg(), missing_arg())
    compare(missing_arg(), sym("a"))
    compare(sym("a"), missing_arg())
  })

  expect_snapshot({
    "when in a list symbol #79"
    compare(list(sym("a")), list())
    compare(list(), list(sym("a")))
  })
})

test_that("comparing functions gives useful diffs", {
  expect_snapshot({
    "equal"
    f1 <- function(x = 1, y = 2) {}
    f2 <- function(x = 1, y = 2) {}
    compare(f1, f2)

    f2 <- source(test_path("f2.R"), local = TRUE, keep.source = TRUE)$value
    compare(f1, f2)

    "pritimives"
    compare(`[`, sum)
    compare(sum, prod)

    "diff formals"
    f3 <- function(x = 1, y = 1, z = 1) {}
    compare(f1, f3)

    "diff body"
    f4 <- function(x = 1, y = 2) { x + y }
    compare(f1, f4)
    compare(f1, f4, ignore_srcref = FALSE)

    "diff environment"
    environment(f1) <- base_env()
    environment(f2) <- global_env()
    compare(f1, f2)
  })
})

test_that("can choose to compare srcrefs", {
  expect_snapshot({
    f1 <- f2 <- function() {}
    attr(f2, "srcref") <- "{  }"

    compare(f2, f1)
    compare(f2, f1, ignore_srcref = FALSE)
  })
})

test_that("can compare atomic vectors", {
  expect_snapshot({
    compare(1:3, 10L + 1:3)
    compare(c(TRUE, FALSE, NA, TRUE), c(FALSE, FALSE, FALSE))
  })
})

test_that("can compare S3 objects", {
  expect_snapshot({
    compare(factor("a"), 1L)
    compare(factor("a"), globalenv())
    compare(factor("a"), as.Date("1970-01-02"))

    compare(
      structure(function() {}, class = "foo"),
      factor("a")
    )
  })
})

test_that("can compare S4 objects", {
  setClass("A", slots = c(x = "character"))
  setClass("B", contains = "A")

  expect_snapshot({
    "Non S4"
    compare(new("A", x = "1"), 1)
    compare(new("A", x = "1"), globalenv())
    compare(new("A", x = "1"), factor("x"))

    "S4"
    compare(new("A", x = "1"), new("A", x = "1"))
    compare(new("A", x = "1"), new("A", x = "2"))
    compare(new("A", x = "1"), new("B", x = "1"))

    "S4 with extra attributes"
    new <- old <- new("A", x = "1")
    attr(new, "bar") <- 2
    compare(new, old)
  })
})

test_that("can compare R6 objects", {
  expect_snapshot({
    goofy <- R6::R6Class("goofy", public = list(
      initialize = function(x) self$x <- x,
      x = 10
    ))

    froofy <- R6::R6Class("froofy", inherit = goofy, public = list(
      y = 10
    ))

    "Non R6"
    compare(goofy$new(1), 1)
    compare(goofy$new(1), globalenv())
    compare(goofy$new(1), factor("x"))

    "R6"
    compare(goofy$new(1), goofy$new(1))
    compare(goofy$new(1), goofy$new("a"))
    compare(goofy$new(1), froofy$new(1))
    # https://github.com/r-lib/waldo/issues/84
    compare(froofy$new(1), froofy$new(1)$clone())
  })
})

test_that("comparing language objects gives useful diffs", {
  expect_snapshot({
    compare(quote(a), quote(b))
    compare(quote(a + b), quote(b + c))

    x <- y <- quote(foo(1:3))
    y[[2]] <- 1:3
    compare(x, y)

    compare(expression(1, a, a + b), expression(1, a, a + b))
    compare(expression(1, a, a + b), expression(1, a, a + c))
  })
})

test_that("compare_proxy() can change type", {
  local_bindings(
    compare_proxy.foo = function(x, path) {
      list(object = 10, path = paste0("proxy(", path, ")"))
    },
    .env =  global_env()
  )
  expect_equal(
    compare(structure(1, class = "foo"), structure("x", class = "foo")),
    new_compare()
  )
})

test_that("compare_proxy() modifies path", {
  local_bindings(
    compare_proxy.foo = function(x, path) {
      list(object = list(x = x$x), path = paste0("proxy(", path, ")"))
    },
    .env =  global_env()
  )

  foo1 <- structure(list(x = 1), class = "foo")
  foo2 <- structure(list(x = 2), class = "foo")
  expect_snapshot(compare(foo1, foo2))
})

test_that("options have correct precedence", {
  x <- list(1)
  x_tolerant <- structure(x, waldo_opts = list(tolerance = 0))
  x_intolerant <- structure(x, waldo_opts = list(tolerance = NULL))
  y <- list(1L)
  y_tolerant <- structure(y, waldo_opts = list(tolerance = 0))
  y_intolerant <- structure(y, waldo_opts = list(tolerance = NULL))

  # Starts from global defaults
  expect_length(compare(x, y), 1)
  # Options beats nothing
  expect_length(compare(x, y_tolerant), 0)
  expect_length(compare(x_tolerant, y), 0)
  # y beats x
  expect_length(compare(x_intolerant, y_tolerant), 0)
  expect_length(compare(x_tolerant, y_intolerant), 1)
  # User supplied beats y
  expect_length(compare(x_intolerant, y_tolerant, tolerance = NULL), 1)
})

test_that("options inherited by children", {
  x <- structure(list(list(1)), waldo_opts = list(tolerance = 0))
  y <- list(list(1L))
  expect_length(compare(x, y), 0)
})
