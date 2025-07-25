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

test_that("can ignore class attribute", {
  one_a <- structure(1, class = "a")
  one_b <- structure(1, class = "b")

  expect_length(compare(one_a, one_b, ignore_attr = "class"), 0)
  expect_length(compare(one_a, 1, ignore_attr = "class"), 0)

  expect_snapshot(compare(one_a, 1L, ignore_attr = "class"))
  expect_length(compare(one_a, 1L, ignore_attr = "class", tolerance = 1e-6), 0)
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
  expect_equal(
    compare_structure(x, as.numeric(x), opts = compare_opts(tolerance = 0)),
    character()
  )
  expect_equal(
    compare_structure(x, x + 1e-9, opts = compare_opts(tolerance = 1e-6)),
    character()
  )
})

test_that("can compare int64s", {
  int64_0 <- bit64::as.integer64(0)
  int64_1 <- bit64::as.integer64(1)
  expect_snapshot({
    compare(int64_1, int64_1)
    compare(int64_0, int64_1)
  })
})

test_that("can ignore numeric differences between int64 and other numbers", {
  int64_1 <- bit64::as.integer64(1)
  expect_snapshot({
    compare(1, int64_1)
    compare(1, int64_1, tolerance = 0)
    compare(1L, int64_1, tolerance = 0)
  })
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
    compare(list(a = "a", b = "b", c = "c"), list(a = "a", b = "b"))

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
    f4 <- function(x = 1, y = 2) {
      x + y
    }
    compare(f1, f4)

    "diff environment"
    environment(f1) <- base_env()
    environment(f2) <- global_env()
    compare(f1, f2)
  })
})

test_that("can choose to compare srcrefs", {
  f1 <- f2 <- function() {
    1 + 2
  }
  attr(f2, "srcref") <- NULL
  f3 <- function() {
    1 + 3
  }

  expect_snapshot({
    compare(f2, f1)
    compare(f2, f1, ignore_srcref = FALSE)
    "Different body"
    compare(f3, f1, ignore_srcref = FALSE)
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
    compare(factor("a"), "a")
    compare(factor("a"), globalenv())
    compare(factor("a"), as.Date("1970-01-02"))

    compare(
      structure(function() {}, class = "foo"),
      factor("a")
    )
  })
})

test_that("can compare base type with minimal S3 wrapper", {
  expect_snapshot({
    compare(1, structure(1, class = "foo"))
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

test_that("can distinguish S4 bit", {
  expect_snapshot({
    compare(1, asS4(1))
  })
})

test_that("can compare R6 objects", {
  expect_snapshot({
    goofy <- R6::R6Class(
      "goofy",
      public = list(
        initialize = function(x) self$x <- x,
        x = 10
      )
    )

    froofy <- R6::R6Class(
      "froofy",
      inherit = goofy,
      public = list(
        y = 10
      )
    )

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

test_that("can compare S7 objects", {
  skip_if_not_installed("S7")
  A <- S7::new_class(
    "A",
    properties = list(a = S7::class_numeric),
    package = "waldo"
  )
  B <- S7::new_class("B", parent = A, package = "waldo")

  expect_snapshot({
    "Non S7"
    compare(A(1), 1)
    compare(A(1), globalenv())
    compare(A(1), factor("x"))

    "S4"
    compare(A(1), A(1))
    compare(A(1), A(2))
    compare(A(1), B(1))

    "S7 with extra attributes"
    new <- old <- A(1)
    attr(new, "bar") <- 2
    compare(new, old)
  })
})

test_that("read-only S7 properties are ignored", {
  A <- S7::new_class(
    "A",
    properties = list(
      a = S7::class_numeric,
      b = S7::new_property(getter = function(self) sample(1e6, 1))
    ),
    package = "waldo"
  )

  expect_snapshot(compare(A(1), A(2)))
})

test_that("Named environments compare by reference", {
  expect_snapshot(
    {
      compare(baseenv(), globalenv())
      compare(baseenv(), new.env())
      compare(new.env(), baseenv())
    },
    transform = scrub_environment
  )
})
test_that("unnamed arguments compare by value", {
  expect_snapshot(
    {
      e1 <- new.env(parent = emptyenv())
      e2 <- new.env(parent = emptyenv())
      compare(e1, e2)

      e1$x <- 10
      e2$x <- 11
      compare(e1, e2)

      e2$x <- 10
      compare(e1, e2)
    },
    transform = scrub_environment
  )
})
test_that("compares parent envs", {
  expect_snapshot(
    {
      e1 <- new.env(parent = emptyenv())
      e1$x <- 1
      e2 <- new.env(parent = emptyenv())
      e2$x <- 2

      e3 <- new.env(parent = e1)
      e4 <- new.env(parent = e2)

      compare(e3, e4)
    },
    transform = scrub_environment
  )
})
test_that("don't get caught in endless loops", {
  expect_snapshot(
    {
      e1 <- new.env(parent = emptyenv())
      e2 <- new.env(parent = emptyenv())

      e1$x <- 10
      e1$y <- e1

      e2$x <- 10
      e2$y <- e1

      compare(e1, e2)

      e2$y <- e2
      compare(e1, e2)
    },
    transform = scrub_environment
  )
})
test_that("only shows paired env different once", {
  expect_snapshot(
    {
      e1 <- new.env(parent = emptyenv())
      e2 <- new.env(parent = emptyenv())
      e3 <- new.env(parent = emptyenv())
      e1$x <- 1
      e2$x <- 2
      e3$x <- 3

      compare(list(e1, e1, e1), list(e2, e2, e3))
    },
    transform = scrub_environment
  )
})
test_that("can compare classed environments", {
  e1 <- new.env(parent = emptyenv())
  class(e1) <- "foo"
  e2 <- new.env(parent = emptyenv())
  class(e2) <- "foo"

  expect_equal(compare(e1, e2), new_compare())
})

test_that("can compare CHARSXP", {
  skip_if(interactive())

  char1 <- readRDS(test_path("charsxp-1.rds"))
  char2 <- readRDS(test_path("charsxp-2.rds"))

  expect_snapshot({
    compare(char1, char2)
    compare(char1, "foo")
  })
})

test_that("differences in DOTSXP are ignored", {
  f <- function(...) {
    environment()
  }
  e <- f(1, 2, 3)
  expect_snapshot({
    compare(f(1), f(1, 2))
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
    .env = global_env()
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
    .env = global_env()
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

test_that("can opt out of string quoting", {
  expect_snapshot(
    compare(c("a", "b", "c"), c("a", "b", "d"), quote_strings = FALSE)
  )
})

test_that("can compare weakrefs", {
  x <- new_weakref(baseenv(), "x")
  y1 <- new_weakref(baseenv(), "y")
  y2 <- new_weakref(globalenv(), "y")
  
  expect_equal(compare_structure(x, x), character())
  expect_snapshot({
    compare(x, y1)
    compare(y1, y2)
  })
})
