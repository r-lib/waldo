test_that("nice element diffs", {
  verify_output(test_path("test-diff-element.txt"), {
    "no difference"
    diff_element(c("a", "b"), c("a", "b"))

    "single change"
    diff_element(c("a", "b", "c"), c("a", "b"))
    diff_element(c("a", "b"), c("a", "b", "c"))
    diff_element(c("a", "B", "c"), c("a", "b", "c"))

    "multiple contexts"
    diff_element(
      c("a", "b", letters, "a", "b", "c", letters, "X"),
      c("a", "b", "c", letters, "a", "b", letters, "Y")
    )

    "truncation"
    diff_element(c("X", letters), letters)
    diff_element(c(letters, "X"), letters)
  })
})

test_that("check cascading fallbacks", {
  old <- Sys.getenv("CI")
  Sys.setenv(CI = "false")
  on.exit(Sys.setenv(CI = old))

  verify_output(test_path("test-diff-fallback.txt"), {
    "large diff"
    diff_element(letters, LETTERS, width = 60)
    diff_element(letters, LETTERS, width = 40)
    diff_element(letters, LETTERS, width = 20)

    "with context"
    x <- paste0("My favourite letter is ", letters)
    y <- "This is a sentence"
    diff_element(x, c(x, y))
    diff_element(x, c(x[1:10], y, x[11:26]))
    diff_element(c(x, y), x[-1])
  })
})
