test_that("multiplication works", {
  verify_output(test_path("test-compare-value-chr.txt"), {
    "no difference"
    compare_value(c("a", "b"), c("a", "b"))

    "single change"
    compare_value(c("a", "b", "c"), c("a", "b"))
    compare_value(c("a", "b"), c("a", "b", "c"))
    compare_value(c("a", "B", "c"), c("a", "b", "c"))

    "multiple contexts"
    compare_value(
      c("a", "b", letters, "a", "b", "c", letters, "X"),
      c("a", "b", "c", letters, "a", "b", letters, "Y")
    )

    "truncation"
    compare_value(c("X", letters), letters)
    compare_value(c(letters, "X"), letters)
  })
})
