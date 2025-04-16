test_that("xml2 proxy generates useful comparisons", {
  expect_snapshot({
    x1a <- xml2::read_xml("<a>1</a>")
    x1b <- xml2::read_xml("<a>1</a>")
    compare(x1a, x1b)

    x2 <- xml2::read_xml("<a>2</a>")
    compare(x1a, x2)
  })
})

test_that("POSIXlt comparison ignores balanced attribute", {
  # Simulate example from https://github.com/r-lib/waldo/issues/160
  x1 <- x2 <- as.POSIXlt("2009-08-03 12:01:59", tz = "UTC")
  attr(x1, "balanced") <- TRUE
  attr(x2, "balanced") <- NULL

  expect_length(compare(x1, x2), 0)
})

# don't Suggest RProtoBuf, so just mock the classes
test_that("RProtoBuf proxy works", {
  x1 <- x2 <- list(toString = function(x) 1)
  # strengthen confidence by ensuring toString() is compared
  x1$a <- 2
  x2$a <- 3
  proto_methods <-  c(
    "Message",
    "Descriptor",
    "EnumDescriptor",
    "FieldDescriptor",
    "ServiceDescriptor",
    "FileDescriptor",
    "EnumValueDescriptor",
    "MethodDescriptor"
  )
  for (method in proto_methods) {
    class(x1) <- class(x2) <- method
    expect_identical(x1, x2)
  }
})

test_that("Date, POSIXct proxies work", {
  expect_identical(.Date(1L), .Date(1.0))
  expect_identical(.POSIXct(1L), .POSIXct(1.0))
})
