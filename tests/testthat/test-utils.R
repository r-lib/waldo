test_that("as_map() leaves unnnamed components alone", {
  expect_equal(as_map(c(c = 5, 2, b = 3, 4, a = 1)), c(a = 1, 2, b = 3, 4, c = 5))
  expect_equal(as_map(c(c = 3, b = 2, a = 1)), c(a = 1, b = 2, c = 3))
  expect_equal(as_map(3:1), c(3:1))
})

test_that("as_map() strips NULLs", {
  expect_equal(as_map(list(a = 1, b = NULL)), list(a = 1))
})

test_that("friendly_type_of() uses single S4 class", {
  on.exit({removeClass("Foo1"); removeClass("Foo2")})
  Foo1 <- setClass("Foo1")
  Foo2 <- setClass("Foo2", contains = "Foo1")

  expect_equal(friendly_type_of(Foo2()), "an S4 object of class <Foo2>")
})
