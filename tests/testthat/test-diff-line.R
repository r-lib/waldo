test_that("multiplication works", {
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
