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
  expect_equal(num_equal(4, 4 + 2 * default_tol()), TRUE)
  expect_equal(num_equal(-4, -4 - 2 * default_tol()), TRUE)
})

test_that("infinite values are handled properly", {
  expect_equal(num_equal(1, Inf), FALSE)
  expect_equal(num_equal(1, Inf, tolerance = 1.e-8), FALSE)
  expect_equal(num_equal(Inf, Inf), TRUE)
  expect_equal(num_equal(Inf, Inf, tolerance = 1.e-8), TRUE)
  expect_equal(num_equal(-Inf, Inf), FALSE)
  expect_equal(num_equal(-Inf, Inf, tolerance = 1.e-8), FALSE)
})

test_that("NaN is equal to NA_real_ unless tolerance is NULL", {
  expect_true(num_equal(NaN, NA_real_))
  expect_false(num_equal(NaN, NA_real_, tolerance = NULL))
  expect_true(num_equal(NaN, NaN))
  expect_true(num_equal(NA_real_, NA_real_))
})

test_that("coerce large integers to doubles not int64", {
  expect_no_warning(num_equal(36893488147419103232, bit64::as.integer64(1)))
  expect_no_warning(num_equal(bit64::as.integer64(1), 36893488147419103232))

  expect_no_error(num_equal(NA, bit64::as.integer64(1)))
  expect_no_error(num_equal(bit64::as.integer64(1), NA))
})
