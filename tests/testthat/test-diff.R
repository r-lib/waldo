test_that("nice line diffs", {
  verify_output(test_path("test-diff-line.txt"), {
    x1 <- c("A\nB\nC\n")
    y1 <- c("A\nb\nC\n")

    "Basic operations"
    diff_lines(x1, y1)
    diff_lines(x1, paste0(x1, "A"))
    diff_lines(paste0(x1, "A"), x1)

    "Context"
    diff_lines(paste0(x1, x1, x1), paste0(x1, y1, x1))
  })
})

test_that("nice word diffs", {
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
