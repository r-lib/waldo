# xml2 proxy generates useful comparisons

    Code
      x1a <- xml2::read_xml("<a>1</a>")
      x1b <- xml2::read_xml("<a>1</a>")
      compare(x1a, x1b)
    Output
      v No differences
    Code
      x2 <- xml2::read_xml("<a>2</a>")
      compare(x1a, x2)
    Output
      lines(as.character(old)) vs lines(as.character(new))
        "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
      - "<a>1</a>"
      + "<a>2</a>"
        ""

