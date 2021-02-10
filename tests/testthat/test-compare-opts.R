test_that("all.equal arguments warned an preserved", {
  expect_warning(
    opts <- compare_opts(checkNames = FALSE),
    "checkNames"
  )
  expect_equal(opts$ignore_attr, TRUE)

  expect_warning(
    opts <- compare_opts(check.attributes = FALSE),
    "check.attributes"
  )
  expect_equal(opts$ignore_attr, TRUE)

  expect_warning(
    opts <- compare_opts(tol = 1),
    "tol"
  )
  expect_equal(opts$tolerance, 1)
})

test_that("other arguments are ignored with a warning", {
  expect_snapshot(compare(1, 1, 1))
  expect_snapshot(compare(1, 1, abc = 1))
  expect_snapshot(compare(1, 1, abc = 1, xyz = 2))
})
