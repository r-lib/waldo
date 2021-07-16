test_that("paired diffs", {
  expect_snapshot({
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

    "zero length"
    diff_element(letters[1:10], character())
    diff_element(character(), letters[1:10])
  })
})

test_that("side-by-side diffs", {
  expect_snapshot({
    x <- c("a", "a")
    diff_element(c(x, "a", "b", "c"), c(x, "a", "b"), width = 20)
    diff_element(c(x, "a", "b"), c(x, "a", "b", "c"), width = 20)
    diff_element(c(x, "a", "B", "c"), c(x, "a", "b", "c"), width = 20)

    "context"
    diff_element(c(letters, "a", "b"), c(letters, "a", "b", "c"), width = 20)
  })
})

test_that("element-wise diffs", {
  expect_snapshot({
    diff_element(c("a", "b", "c", "d"), c("a", "b"), width = 10)
    diff_element(c("a", "b"), c("a", "b", "c", "d"), width = 10)
    diff_element(c("a", "B", "C", "d"), c("a", "b", "c", "d"), width = 10)

    "context"
    diff_element(c(letters, "a", "b"), c(letters, "a", "b", "c"), width = 10)
  })
})

test_that("only interleave if change has equal number of lines", {
  expect_snapshot({
    x <- letters # to anchor diffs
    diff_element(c(x, 1:2, x), c(x, -(1:2), x), width = 10)
    diff_element(c(x, 1:3, x), c(x, -(1:2), x), width = 10)
    diff_element(c(x, 1:2, x), c(x, -(1:3), x), width = 10)
  })
})
