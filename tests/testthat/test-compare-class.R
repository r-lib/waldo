test_that("can construct compare object", {
  x <- new_compare("Hi!")
  expect_s3_class(x, "waldo_compare")
})

test_that("print method covers main cases", {
  old <- Sys.getenv("CI")
  Sys.setenv(CI = "false")
  on.exit(Sys.setenv(CI = old))

  expect_snapshot({
    new_compare()

    new_compare(letters[1:3])

    new_compare(letters[1:11])
  })
})
