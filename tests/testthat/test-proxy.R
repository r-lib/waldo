test_that("xml2 proxy generates useful comparisons", {
  expect_snapshot({
    x1a <- xml2::read_xml("<a>1</a>")
    x1b <- xml2::read_xml("<a>1</a>")
    compare(x1a, x1b)

    x2 <- xml2::read_xml("<a>2</a>")
    compare(x1a, x2)
  })
})
