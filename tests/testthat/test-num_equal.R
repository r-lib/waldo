test_that("num_equal returns early", {
  expect_equal(num_equal(1, 1:2), FALSE)
  expect_equal(num_equal(1, 2, NULL), FALSE)
  expect_equal(num_equal(1, 1), TRUE)
  expect_equal(num_equal(1, NA), FALSE)
  expect_equal(num_equal(c(1, NA), c(1, NA)), TRUE)
})

test_that("tolerance is relative", {
  expect_equal(num_equal(1000, 1001, tolerance = 1e-3), TRUE)
  expect_equal(num_equal(1000, 1002, tolerance = 1e-3), FALSE)
})

test_that("tolerance is absolute for small values", {
  expect_equal(num_equal(0, 0.0009, tolerance = 0.0010), TRUE)
  expect_equal(num_equal(0, 0.0010, tolerance = 0.0010), FALSE)
})

test_that("tolerance works the same way for negative values", {
  expect_equal(num_equal(4, 4 + 2 * .Machine$double.eps ^ 0.5), TRUE)
  expect_equal(num_equal(-4, -4 - 2 * .Machine$double.eps ^ 0.5), TRUE)
})

test_that("infinite values are handled properly", {
  expect_equal(num_equal(1, Inf), FALSE)
  expect_equal(num_equal(1, Inf, tolerance = 1.e-8), FALSE)
  expect_equal(num_equal(Inf, Inf), TRUE)
  expect_equal(num_equal(Inf, Inf, tolerance = 1.e-8), TRUE)
  expect_equal(num_equal(-Inf, Inf), FALSE)
  expect_equal(num_equal(-Inf, Inf, tolerance = 1.e-8), FALSE)
})
