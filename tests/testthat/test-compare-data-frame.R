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

test_that("can set tolerance", {
  df1 <- data.frame(x = 1)
  df2 <- data.frame(x = 1.001)
  expect_length(compare(df1, df2, tolerance = 0.1), 0)
})

test_that("converts factors to strings", {
  df1 <- data.frame(x = factor(c("a", "b", "c")))
  df2 <- data.frame(x = factor(c("a", "b", "d")))

  expect_snapshot({
    compare(df1, df2)
  })
})

test_that("works when nrow(df) > option(max.print)", {
  expect_snapshot({
    withr::local_options("max.print" = 1)
    df1 <- data.frame(a = 1:2, b = 1:2)
    df2 <- data.frame(a = c(1, 3), b = 1:2)

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

  df$y <- list(1:10)
  expect_equal(compare_data_frame(df, data.frame()), NULL)
})
