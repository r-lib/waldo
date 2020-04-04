test_that("multiplication works", {
  verify_output(test_path("test-diff-word.txt"), {
    x <- "This is a long long sentence"
    y <- "This is a long sentence"
    diff_words(x, y)
    diff_words(y, x)

    x <- "This is a long sentence"
    y <- "This is a short sentence"
    diff_words(x, y)
  })
})
