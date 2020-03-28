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
