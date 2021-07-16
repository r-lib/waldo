# paired diffs

    Code
      # no difference
      diff_element(c("a", "b"), c("a", "b"))
    Output
      v No differences
    Code
      # single change
      diff_element(c("a", "b", "c"), c("a", "b"))
    Output
      `x`: "a" "b" "c"
      `y`: "a" "b"    
    Code
      diff_element(c("a", "b"), c("a", "b", "c"))
    Output
      `x`: "a" "b"    
      `y`: "a" "b" "c"
    Code
      diff_element(c("a", "B", "c"), c("a", "b", "c"))
    Output
      `x`: "a" "B" "c"
      `y`: "a" "b" "c"
    Code
      # multiple contexts
      diff_element(c("a", "b", letters, "a", "b", "c", letters, "X"), c("a", "b", "c",
        letters, "a", "b", letters, "Y"))
    Output
      `x[1:5]`: "a" "b"     "a" "b" "c"
      `y[1:6]`: "a" "b" "c" "a" "b" "c"
      
      `x[28:34]`: "z" "a" "b" "c" "a" "b" "c"
      `y[29:34]`: "z" "a" "b"     "a" "b" "c"
      
      `x[55:58]`: "x" "y" "z" "X"
      `y[55:58]`: "x" "y" "z" "Y"
    Code
      # truncation
      diff_element(c("X", letters), letters)
    Output
      `x[1:4]`: "X" "a" "b" "c"
      `y[1:3]`:     "a" "b" "c"
    Code
      diff_element(c(letters, "X"), letters)
    Output
      `x[24:27]`: "x" "y" "z" "X"
      `y[24:26]`: "x" "y" "z"    
    Code
      # zero length
      diff_element(letters[1:10], character())
    Output
      `x`: "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"
      `y`:                                        
    Code
      diff_element(character(), letters[1:10])
    Output
      `x`:                                        
      `y`: "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"

# side-by-side diffs

    Code
      x <- c("a", "a")
      diff_element(c(x, "a", "b", "c"), c(x, "a", "b"), width = 20)
    Output
          x   | y      
      [2] "a" | "a" [2]
      [3] "a" | "a" [3]
      [4] "b" | "b" [4]
      [5] "c" -        
    Code
      diff_element(c(x, "a", "b"), c(x, "a", "b", "c"), width = 20)
    Output
          x   | y      
      [2] "a" | "a" [2]
      [3] "a" | "a" [3]
      [4] "b" | "b" [4]
              - "c" [5]
    Code
      diff_element(c(x, "a", "B", "c"), c(x, "a", "b", "c"), width = 20)
    Output
          x   | y      
      [1] "a" | "a" [1]
      [2] "a" | "a" [2]
      [3] "a" | "a" [3]
      [4] "B" - "b" [4]
      [5] "c" | "c" [5]
    Code
      # context
      diff_element(c(letters, "a", "b"), c(letters, "a", "b", "c"), width = 20)
    Output
           x   | y       
      [26] "z" | "z" [26]
      [27] "a" | "a" [27]
      [28] "b" | "b" [28]
               - "c" [29]

# element-wise diffs

    Code
      diff_element(c("a", "b", "c", "d"), c("a", "b"), width = 10)
    Output
      x vs y
        "a"
        "b"
      - "c"
      - "d"
    Code
      diff_element(c("a", "b"), c("a", "b", "c", "d"), width = 10)
    Output
      x vs y
        "a"
        "b"
      + "c"
      + "d"
    Code
      diff_element(c("a", "B", "C", "d"), c("a", "b", "c", "d"), width = 10)
    Output
      x vs y
        "a"
      - "B"
      + "b"
      - "C"
      + "c"
        "d"
    Code
      # context
      diff_element(c(letters, "a", "b"), c(letters, "a", "b", "c"), width = 10)
    Output
      x[26:28] vs y[26:29]
        "y"
        "z"
        "a"
        "b"
      + "c"

# only interleave if change has equal number of lines

    Code
      x <- letters
      diff_element(c(x, 1:2, x), c(x, -(1:2), x), width = 10)
    Output
      x[24:31] vs y[24:31]
        "x"
        "y"
        "z"
      - "1"
      + "-1"
      - "2"
      + "-2"
        "a"
        "b"
        "c"
    Code
      diff_element(c(x, 1:3, x), c(x, -(1:2), x), width = 10)
    Output
      x[24:32] vs y[24:31]
        "x"
        "y"
        "z"
      - "1"
      - "2"
      - "3"
      + "-1"
      + "-2"
        "a"
        "b"
        "c"
    Code
      diff_element(c(x, 1:2, x), c(x, -(1:3), x), width = 10)
    Output
      x[24:31] vs y[24:32]
        "x"
        "y"
        "z"
      - "1"
      - "2"
      + "-1"
      + "-2"
      + "-3"
        "a"
        "b"
        "c"

