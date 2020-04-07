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
  verify_output(test_path("test-diff-fallback.txt"), {
    diff_element(letters, LETTERS, width = 60)
    diff_element(letters, LETTERS, width = 40)
    diff_element(letters, LETTERS, width = 20)
  })
})

test_that("nice line diffs", {
  verify_output(test_path("test-diff-line.txt"), {
    x1 <- "A\nB\nC\n"
    y1 <- "A\nb\nC\n"

    "Basic operations"
    cat(diff_lines(x1, y1))
    cat(diff_lines(x1, paste0(x1, "A")))
    cat(diff_lines(paste0(x1, "A"), x1))

    "Context"
    cat(diff_lines(paste0(x1, x1, x1), paste0(x1, y1, x1)))

    "Lines with internal differences"
    cat(diff_lines("A\nthe apple is red\nC\n", "A\nthe apple was red\nC\n"))
    cat(diff_lines("A\nthe apple is red and green\nC\n", "A\nthe apple is red\nC\n"))
    cat(diff_lines("A\nthe apple is red and green\nC\n", "A\nI like bananas\nC\n"))
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

    "whitespace"
    diff_words("Hello world", "Hello\tworld")
    diff_words("Hello world", "Hello  world")
  })
})
