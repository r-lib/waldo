test_that("xml2 proxy generates useful comparisons", {
  expect_snapshot({
    x1a <- xml2::read_xml("<a>1</a>")
    x1b <- xml2::read_xml("<a>1</a>")
    compare(x1a, x1b)

    x2 <- xml2::read_xml("<a>2</a>")
    compare(x1a, x2)
  })
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
