test_that("informative diff for additions and deletions", {
  expect_snapshot({
    df <- data.frame(x = 1:5, y = 5:1)
    compare(df, unrowname(df[1:3, ]))
    compare(df, unrowname(df[c(1, 5, 2, 3, 4, 5), ]))
  })
})

test_that("informative diff for changes", {
  expect_snapshot({
    df1 <- data.frame(x = 1:3, y = 1, z = c("a", "b", "c"), stringsAsFactors = FALSE)
    df2 <- data.frame(x = c(1, 100, 3), y = 1, z = c("a", "B", "c"), stringsAsFactors = FALSE)
    compare(df1, df2)
  })
})

test_that("converts factors to strings", {
  df1 <- data.frame(x = factor(c("a", "b", "c")))
  df2 <- data.frame(x = factor(c("a", "b", "d")))

  expect_snapshot({
    compare(df1, df2)
  })
})

test_that("only used for appropriate data frames", {
  df <- data.frame(x = 1)

  expect_equal(compare_data_frame(df, df), NULL)
  expect_equal(compare_data_frame(df, data.frame()), NULL)
  expect_equal(compare_data_frame(df, data.frame(y = 1)), NULL)
  expect_equal(compare_data_frame(df, data.frame(x = FALSE)), NULL)
  expect_equal(compare_data_frame(df, data.frame(x = structure(1, a = 1))), NULL)

  expect_equal(compare_data_frame(data.frame(), data.frame()), NULL)
})
