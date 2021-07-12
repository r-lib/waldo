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

  verify_output(test_path("test-compare-attr-1.txt"), {
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
  verify_output(test_path("test-compare-s3-weird.txt"), {
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

  verify_output(test_path("test-compare-chr.txt"), {
    compare(x, y)
    compare(x, y, ignore_encoding = FALSE)
  })
})

test_that("lists compare by name, where possible", {
  verify_output(test_path("test-compare-list.txt"), {
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

    "extra x/y with symbol #79"
    compare(list(sym("a")), list())
    compare(list(), list(sym("a")))
  })
})

test_that("can compare with `missing_arg()`", {
  compare(missing_arg(), sym("a"))
})


test_that("comparing functions gives useful diffs", {
  verify_output(test_path("test-compare-fun.txt"), {
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
  verify_output(test_path("test-compare-atomic.txt"), {
    compare(1:3, 10L + 1:3)
    compare(c(TRUE, FALSE, NA, TRUE), c(FALSE, FALSE, FALSE))
  })
})

test_that("can compare S3 objects", {
  verify_output(test_path("test-compare-s3.txt"), {
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

  verify_output(test_path("test-compare-s4.txt"), {
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
  verify_output(test_path("test-compare-r6.txt"), {
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
  verify_output(test_path("test-compare-lang.txt"), {
    compare(quote(a), quote(b))
    compare(quote(a + b), quote(b + c))

    x <- y <- quote(foo(1:3))
    y[[2]] <- 1:3
    compare(x, y)

    compare(expression(1, a, a + b), expression(1, a, a + b))
    compare(expression(1, a, a + b), expression(1, a, a + c))
  })
})
