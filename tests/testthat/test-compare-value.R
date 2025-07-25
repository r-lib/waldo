test_that("character comparison", {
  expect_snapshot({
    "no difference"
    compare_character(c("a", "b"), c("a", "b"))

    "single change"
    compare_character(c("a", "b", "c"), c("a", "b"))
    compare_character(c("a", "b"), c("a", "b", "c"))
    compare_character(c("a", "B", "c"), c("a", "b", "c"))

    "multiple contexts"
    compare_character(
      c("a", "b", letters, "a", "b", "c", letters, "X"),
      c("a", "b", "c", letters, "a", "b", letters, "Y")
    )

    "truncation"
    compare_character(c("X", letters), letters)
    compare_character(c(letters, "X"), letters)

    "large diff"
    compare(letters, c(letters[1:20], "a"))
  })
})

test_that("NA and 'NA' compare differently", {
  expect_snapshot(compare(NA_character_, "NA"))
})

test_that("multiline comparison", {
  expect_snapshot({
    compare_character("A\nthe apple is red\nC\n", "A\nthe apple was red\nC\n")
    compare_character(
      "A\nthe apple is red and green\nC\n",
      "A\nthe apple is red\nC\n"
    )
    compare_character(
      "A\nthe apple is red and green\nC\n",
      "A\nI like bananas\nC\n"
    )

    "trailing newlines are correctly compared"
    compare("x\n", "x")
  })
})

test_that("multi-element multi-line comparisons get indices", {
  expect_snapshot({
    compare(c("a", "b", "c\nd"), c("a", "b", "c\ne"))
  })
})

test_that("show elementwise differences of random permutations", {
  expect_snapshot({
    compare(
      letters[1:15],
      letters[c(14, 4, 12, 11, 13, 3, 10, 5, 1, 7, 9, 15, 6, 8, 2)],
      max_diffs = Inf
    )
    compare(
      letters[1:15],
      letters[c(3, 13, 6, 10, 11, 9, 4, 5, 15, 2, 12, 14, 8, 7, 1)],
      max_diffs = Inf
    )
    compare(
      letters[1:15],
      letters[c(12, 13, 1, 2, 5, 6, 11, 15, 10, 14, 9, 7, 3, 4, 8)],
      max_diffs = Inf
    )
  })
})

test_that("favour smart diff over elementwise when total length is the same", {
  expect_snapshot({
    compare(c(1, 2, 3, 4, 5), c(1, 2, 10, 3, 4, 5))
    compare(c(1, 2, 4, 5), c(1, 2, 3, 4, 5))
  })
})

test_that("numeric comparison", {
  expect_snapshot({
    "no difference"
    compare_numeric(1:3, 1:3)
    compare_numeric(c(1, NA), c(1, NA))
    compare_numeric(c(NA, 1), c(1, NA))

    "simple change"
    compare_numeric(c(1, 2, 3), c(1, 2))
    compare_numeric(c(1, 2), c(1, 2, 3))
    compare_numeric(c(1, 10, 3), c(1, 2, 3))

    "equal length"
    x <- c(1, 2, 3)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-3)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-4)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-5)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-6)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-7)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-8)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-8, tolerance = NULL)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-9, tolerance = NULL)
    compare_numeric(x, x + c(-1, 0, 1) * 1e-10, tolerance = NULL)

    "unequal length"
    compare_numeric(c(1, 2, NA), c(1, 2 + 1e-7, NA, 3))
  })
})

test_that("tolerance is used in display of differences", {
  x <- c(1, 2, 3)
  y <- x + c(1e-9, 1e-9, 1)

  expect_snapshot({
    compare_numeric(x, y)
    compare_numeric(x, y, tolerance = NULL)
  })
})

test_that("NAs are shown regardless of position", {
  expect_snapshot({
    compare(c(NA, 1, 2), c(1, 2))
    compare(c(1, NA, 2), c(1, 2))
    compare(c(1, 2, NA), c(1, 2))
  })
})

test_that("informative difference between NA and NaN when tolerance set", {
  expect_snapshot({
    compare_numeric(NA_real_, NaN)
    compare_numeric(NA_real_, NaN, tolerance = NULL)
  })
})

test_that("numeric comparison works on factors", {
  expect_snapshot({
    f1 <- factor(c("a", "b", "c"))
    f2 <- factor(c("a", "c", "b"), c("a", "c", "b"))
    compare(f1, f2)

    f3 <- factor(c("a", "B", "c"))
    compare(f1, f3)
  })
})

test_that("shows row-by-row diff for numeric matrices", {
  expect_snapshot({
    x <- y <- matrix(1:4, nrow = 2)
    y[2, 2] <- 5L
    compare(x, y)
  })
})

test_that("but not for arrays", {
  expect_snapshot({
    x <- y <- array(1:4, c(1, 2, 2))
    y[1, 2, 2] <- 5L
    compare(x, y)
  })
})

test_that("falls back to regular display if printed representation the same", {
  expect_snapshot({
    x <- y <- matrix(1:4, nrow = 2)
    y[2, 2] <- y[2, 2] + 1e-10
    compare(x, y)
  })
})

test_that("uses format method if available", {
  expect_snapshot({
    compare(structure(1, class = "Date"), structure(1.5, class = "Date"))
    compare(structure(1, class = "Date"), structure(100, class = "Date"))

    compare(.POSIXct(1, "UTC"), .POSIXct(2, "UTC"))
    compare(factor("a"), factor("b"))
    compare(ordered("a"), ordered("b"))
    compare(factor(c("a", "b")), factor(c("a", "b"), levels = c("b", "a")))
  })
})
test_that("ignore_attr never uses format method", {
  expect_snapshot({
    compare(.POSIXct(1, "UTC"), .POSIXct(2, "UTC"), ignore_attr = TRUE)
  })
})
test_that("don't use format if numeric & within tolerance", {
  dt <- as.POSIXct("2016-07-18 16:06:00", tz = "UTC")
  expect_snapshot({
    compare(dt, dt + 5)
    compare(dt, dt + 5, tolerance = 1e-8)
  })
})

test_that("can compare complex numbers", {
  expect_snapshot({
    compare(1:2 + 1i, 2 + 1i)
    compare(1:2 + 1i, 1:2 + 2i)
  })
})

test_that("logical comparisons minimise extraneous diffs", {
  x1 <- x2 <- rep(TRUE, 50)
  x2[c(1, 25, 50)] <- FALSE
  expect_snapshot(compare_logical(x1, x2))

  x3 <- rep(c(TRUE, FALSE), 25)
  x4 <- rep(c(FALSE, TRUE), 26)
  expect_snapshot(compare_logical(x3, x4))
})

test_that("min_digits correctly computed digits needed for comparison", {
  expect_equal(min_digits(-0.5, 0.5), 1)
  expect_equal(min_digits(-0.9090909, 0.9090909), 1)
  expect_equal(min_digits(0.21, 0.23), 3)
  expect_equal(min_digits(1.93, 1.92), 3)

  expect_equal(min_digits(1, 1.1), 2)
  expect_equal(min_digits(1, 1.01), 3)
  expect_equal(min_digits(1, 1.001), 4)
  expect_equal(min_digits(1, 1.0001), 5)
  expect_equal(min_digits(1, 1.00001), 6)
  expect_equal(min_digits(1, 1.000001), 7)
  expect_equal(min_digits(1, 1.0000001), 8)
  expect_equal(min_digits(1, 1.00000001), 9)
  expect_equal(min_digits(1, 1.000000001), 9)
  expect_equal(min_digits(1, 1.0000000001), 9)

  expect_equal(min_digits(1, 1.000000001, tolerance = NULL), 10)
  expect_equal(min_digits(1, 1.0000000001, tolerance = NULL), 11)
})
