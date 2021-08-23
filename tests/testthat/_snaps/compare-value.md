# character comparison

    Code
      # no difference
      compare_character(c("a", "b"), c("a", "b"))
    Output
      v No differences
    Code
      # single change
      compare_character(c("a", "b", "c"), c("a", "b"))
    Output
      `x`: "a" "b" "c"
      `y`: "a" "b"    
    Code
      compare_character(c("a", "b"), c("a", "b", "c"))
    Output
      `x`: "a" "b"    
      `y`: "a" "b" "c"
    Code
      compare_character(c("a", "B", "c"), c("a", "b", "c"))
    Output
      `x`: "a" "B" "c"
      `y`: "a" "b" "c"
    Code
      # multiple contexts
      compare_character(c("a", "b", letters, "a", "b", "c", letters, "X"), c("a", "b",
        "c", letters, "a", "b", letters, "Y"))
    Output
      `x[1:5]`: "a" "b"     "a" "b" "c"
      `y[1:6]`: "a" "b" "c" "a" "b" "c"
      
      `x[28:34]`: "z" "a" "b" "c" "a" "b" "c"
      `y[29:34]`: "z" "a" "b"     "a" "b" "c"
      
      `x[55:58]`: "x" "y" "z" "X"
      `y[55:58]`: "x" "y" "z" "Y"
    Code
      # truncation
      compare_character(c("X", letters), letters)
    Output
      `x[1:4]`: "X" "a" "b" "c"
      `y[1:3]`:     "a" "b" "c"
    Code
      compare_character(c(letters, "X"), letters)
    Output
      `x[24:27]`: "x" "y" "z" "X"
      `y[24:26]`: "x" "y" "z"    
    Code
      # large diff
      compare(letters, c(letters[1:20], "a"))
    Output
      `old[18:26]`: "r" "s" "t" "u" "v" "w" "x" "y" "z"
      `new[18:21]`: "r" "s" "t" "a"                    

# multiline comparison

    Code
      compare_character("A\nthe apple is red\nC\n", "A\nthe apple was red\nC\n")
    Output
      `lines(x)`: "A" "the apple is red"  "C" ""
      `lines(y)`: "A" "the apple was red" "C" ""
    Code
      compare_character("A\nthe apple is red and green\nC\n",
        "A\nthe apple is red\nC\n")
    Output
      `lines(x)`: "A" "the apple is red and green" "C" ""
      `lines(y)`: "A" "the apple is red"           "C" ""
    Code
      compare_character("A\nthe apple is red and green\nC\n",
        "A\nI like bananas\nC\n")
    Output
      `lines(x)`: "A" "the apple is red and green" "C" ""
      `lines(y)`: "A" "I like bananas"             "C" ""
    Code
      # trailing newlines are correctly compared
      compare("x\n", "x")
    Output
      `lines(old)`: "x" ""
      `lines(new)`: "x"   

# multi-element multi-line comparisons get indices

    Code
      compare(c("a", "b", "c\nd"), c("a", "b", "c\ne"))
    Output
      `lines(old[[3]])`: "c" "d"
      `lines(new[[3]])`: "c" "e"

# show elementwise differences of random permutations

    Code
      compare(letters[1:15], letters[c(14, 4, 12, 11, 13, 3, 10, 5, 1, 7, 9, 15, 6, 8,
        2)], max_diffs = Inf)
    Output
      `old`: "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o"
      `new`: "n" "d" "l" "k" "m" "c" "j" "e" "a" "g" "i" "o" "f" "h" "b"
    Code
      compare(letters[1:15], letters[c(3, 13, 6, 10, 11, 9, 4, 5, 15, 2, 12, 14, 8, 7,
        1)], max_diffs = Inf)
    Output
      `old`: "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o"
      `new`: "c" "m" "f" "j" "k" "i" "d" "e" "o" "b" "l" "n" "h" "g" "a"
    Code
      compare(letters[1:15], letters[c(12, 13, 1, 2, 5, 6, 11, 15, 10, 14, 9, 7, 3, 4,
        8)], max_diffs = Inf)
    Output
      `old`: "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o"
      `new`: "l" "m" "a" "b" "e" "f" "k" "o" "j" "n" "i" "g" "c" "d" "h"

# favour smart diff over elementwise when total length is the same

    Code
      compare(c(1, 2, 3, 4, 5), c(1, 2, 10, 3, 4, 5))
    Output
      `old`: 1 2    3 4 5
      `new`: 1 2 10 3 4 5
    Code
      compare(c(1, 2, 4, 5), c(1, 2, 3, 4, 5))
    Output
      `old`: 1 2   4 5
      `new`: 1 2 3 4 5

# numeric comparison

    Code
      # no difference
      compare_numeric(1:3, 1:3)
    Output
      v No differences
    Code
      compare_numeric(c(1, NA), c(1, NA))
    Output
      v No differences
    Code
      compare_numeric(c(NA, 1), c(1, NA))
    Output
      `x`: NA  1
      `y`:  1 NA
    Code
      # simple change
      compare_numeric(c(1, 2, 3), c(1, 2))
    Output
      `x`: 1 2 3
      `y`: 1 2  
    Code
      compare_numeric(c(1, 2), c(1, 2, 3))
    Output
      `x`: 1 2  
      `y`: 1 2 3
    Code
      compare_numeric(c(1, 10, 3), c(1, 2, 3))
    Output
      `x`: 1 10 3
      `y`: 1  2 3
    Code
      # equal length
      x <- c(1, 2, 3)
      compare_numeric(x, x + c(-1, 0, 1) * 0.001)
    Output
      `x`: 1.000 2.000 3.000
      `y`: 0.999 2.000 3.001
    Code
      compare_numeric(x, x + c(-1, 0, 1) * 1e-04)
    Output
      `x`: 1.0000 2.0000 3.0000
      `y`: 0.9999 2.0000 3.0001
    Code
      compare_numeric(x, x + c(-1, 0, 1) * 1e-05)
    Output
      `x`: 1.00000 2.00000 3.00000
      `y`: 0.99999 2.00000 3.00001
    Code
      compare_numeric(x, x + c(-1, 0, 1) * 1e-06)
    Output
      `x`: 1.000000 2.000000 3.000000
      `y`: 0.999999 2.000000 3.000001
    Code
      compare_numeric(x, x + c(-1, 0, 1) * 1e-07)
    Output
      `x`: 1.0000000 2.0000000 3.0000000
      `y`: 0.9999999 2.0000000 3.0000001
    Code
      compare_numeric(x, x + c(-1, 0, 1) * 1e-08)
    Output
      v No differences
    Code
      compare_numeric(x, x + c(-1, 0, 1) * 1e-08, tolerance = 0)
    Output
      `x`: 1.00000000 2.00000000 3.00000000
      `y`: 0.99999999 2.00000000 3.00000001
    Code
      compare_numeric(x, x + c(-1, 0, 1) * 1e-09, tolerance = 0)
    Output
      `x`: 1.000000000 2.000000000 3.000000000
      `y`: 0.999999999 2.000000000 3.000000001
    Code
      compare_numeric(x, x + c(-1, 0, 1) * 1e-10, tolerance = 0)
    Output
      `x`: 1.0000000000 2.0000000000 3.0000000000
      `y`: 0.9999999999 2.0000000000 3.0000000001
    Code
      # unequal length
      compare_numeric(c(1, 2, NA), c(1, 2 + 1e-07, NA, 3))
    Output
      `x[2:3]`: 2             
           `y`: 1 2.0000001  3

# numeric comparison works on factors

    Code
      f1 <- factor(c("a", "b", "c"))
      f2 <- factor(c("a", "c", "b"), c("a", "c", "b"))
      compare(f1, f2)
    Output
      `levels(old)`: "a" "b" "c"
      `levels(new)`: "a" "c" "b"
    Code
      f3 <- factor(c("a", "B", "c"))
      compare(f1, f3)
    Output
      `levels(old)`: "a" "b" "c"
      `levels(new)`: "B" "a" "c"
      
      `old`: 1 2 3
      `new`: 2 1 3

# shows row-by-row diff for numeric matrices

    Code
      x <- y <- matrix(1:4, nrow = 2)
      y[2, 2] <- 5L
      compare(x, y)
    Output
      old vs new
                 [,1] [,2]
        old[1, ]    1    3
      - old[2, ]    2    4
      + new[2, ]    2    5

# falls back to regular display if printed representation the same

    Code
      x <- y <- matrix(1:4, nrow = 2)
      y[2, 2] <- y[2, 2] + 1e-10
      compare(x, y)
    Output
      `old` is an integer vector (1, 2, 3, 4)
      `new` is a double vector (1, 2, 3, 4.0000000001)

# logical comparisons minimise extraneous diffs

    Code
      compare_logical(x1, x2)
    Output
      `x[1:4]`: TRUE  TRUE TRUE TRUE
      `y[1:4]`: FALSE TRUE TRUE TRUE
      
      `x[22:28]`: TRUE TRUE TRUE TRUE  TRUE TRUE TRUE
      `y[22:28]`: TRUE TRUE TRUE FALSE TRUE TRUE TRUE
      
      `x[47:50]`: TRUE TRUE TRUE TRUE 
      `y[47:50]`: TRUE TRUE TRUE FALSE

---

    Code
      compare_logical(x3, x4)
    Output
      `x[1:3]`:       TRUE FALSE TRUE
      `y[1:4]`: FALSE TRUE FALSE TRUE
      
      `x[48:50]`: FALSE TRUE FALSE     
      `y[49:52]`: FALSE TRUE FALSE TRUE

