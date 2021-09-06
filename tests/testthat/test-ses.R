test_that("can parse three main formats", {
  del <- ses(c("a", "b", "c"), c("a", "b"))
  expect_equal(del, ses_df(3, 3, "d", 2, 2))

  add <- ses(c("a", "b"), c("a", "b", "c"))
  expect_equal(add, ses_df(2, 2, "a", 3, 3))

  mod <- ses(c("a", "B", "c"), c("a", "b", "c"))
  expect_equal(mod, ses_df(2, 2, "c", 2, 2))
})

test_that("can parse multi-element changes", {
  del <- ses(c("a", "b", "c", "d"), c("a", "b"))
  expect_equal(del, ses_df(3, 4, "d", 2, 2))

  add <- ses(c("a", "b"), c("a", "b", "c", "d"))
  expect_equal(add, ses_df(2, 2, "a", 3, 4))
})

test_that("can parse large numbers", {
  del <- ses(c(letters,"x"), letters)
  expect_equal(del, ses_df(27, 27, "d", 26, 26))
})


test_that("ses_elementwise() matches seq() for exact matches", {
  expect_equal(
    ses_elementwise(letters[1:4], letters[1:4]),
    ses(letters[1:4], letters[1:4])
  )
  expect_equal(
    ses_elementwise(letters[1:4], letters[1:2]),
    ses(letters[1:4], letters[1:2])
  )
  expect_equal(
    ses_elementwise(letters[1:2], letters[1:4]),
    ses(letters[1:2], letters[1:4])
  )

})

test_that("ses_elementwise() matches seq() for missing values", {
  expect_equal(
    ses_elementwise(NA, TRUE),
    ses(NA, TRUE)
  )
  expect_equal(
    ses_elementwise(TRUE, NA),
    ses(TRUE, NA)
  )
  expect_equal(
    ses_elementwise(c(NA, TRUE), c(NA, FALSE)),
    ses(c(NA, TRUE), c(NA, FALSE))
  )
})
