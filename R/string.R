
pad <- function(x, align = c("left", "right")) {
  align <- arg_match(align)

  nchar <- fansi::nchar_ctl(x)
  padding <- strrep(" ", max(nchar) - nchar)

  switch(align,
    left = paste0(x, padding),
    right = paste0(padding, x)
  )
}
