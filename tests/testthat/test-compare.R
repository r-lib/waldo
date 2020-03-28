test_that("same object has no differences", {
  x <- 1:10
  expect_equal(compare_rec(x, x), character())
})

test_that("attributes compare by name", {
  x <- structure(list(), a = "a", b = "b")
  y <- structure(list(), b = "b", a = "a")
  expect_equal(compare_rec(x, y), character())
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

