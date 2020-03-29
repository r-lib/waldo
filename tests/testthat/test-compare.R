test_that("same object has no differences", {
  x <- 1:10
  expect_equal(compare_structure(x, x), character())
})

test_that("attributes compare by name", {
  x <- structure(list(), a = "a", b = "b")
  y <- structure(list(), b = "b", a = "a")
  expect_equal(compare_structure(x, y), character())
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
  })
})

test_that("comparing functions gives useful diffs", {
  verify_output(test_path("test-compare-fun.txt"), {
    "equal"
    f1 <- function(x = 1, y = 2) {}
    f2 <- function(x = 1, y = 2) {}
    compare(f1, f2)

    "pritimives"
    compare(`[`, sum)
    compare(sum, prod)

    "diff formals + body"
    f3 <- function(x = 1, y = 1, z = 1) x + y
    compare(f1, f3)

    "diff environment"
    environment(f1) <- base_env()
    environment(f2) <- global_env()
    compare(f1, f2)
  })
})


test_that("comparing language objects gives useful diffs", {
  verify_output(test_path("test-compare-lang.txt"), {
    compare(quote(a), quote(b))
    compare(quote(a + b), quote(b + c))

    x <- y <- quote(foo(1:3))
    y[[2]] <- 1:3
    compare(x, y)
  })
})
