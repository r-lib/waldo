# can control number of differences

    Code
      compare(x, y, max_diffs = 1)
    Output
      `old[[1]]`: "a"
      `new[[1]]`: "A"
      
      And 25 more differences ...

---

    Code
      compare(x, y, max_diffs = Inf)
    Output
      `old[[1]]`: "a"
      `new[[1]]`: "A"
      
      `old[[2]]`: "b"
      `new[[2]]`: "B"
      
      `old[[3]]`: "c"
      `new[[3]]`: "C"
      
      `old[[4]]`: "d"
      `new[[4]]`: "D"
      
      `old[[5]]`: "e"
      `new[[5]]`: "E"
      
      `old[[6]]`: "f"
      `new[[6]]`: "F"
      
      `old[[7]]`: "g"
      `new[[7]]`: "G"
      
      `old[[8]]`: "h"
      `new[[8]]`: "H"
      
      `old[[9]]`: "i"
      `new[[9]]`: "I"
      
      `old[[10]]`: "j"
      `new[[10]]`: "J"
      
      `old[[11]]`: "k"
      `new[[11]]`: "K"
      
      `old[[12]]`: "l"
      `new[[12]]`: "L"
      
      `old[[13]]`: "m"
      `new[[13]]`: "M"
      
      `old[[14]]`: "n"
      `new[[14]]`: "N"
      
      `old[[15]]`: "o"
      `new[[15]]`: "O"
      
      `old[[16]]`: "p"
      `new[[16]]`: "P"
      
      `old[[17]]`: "q"
      `new[[17]]`: "Q"
      
      `old[[18]]`: "r"
      `new[[18]]`: "R"
      
      `old[[19]]`: "s"
      `new[[19]]`: "S"
      
      `old[[20]]`: "t"
      `new[[20]]`: "T"
      
      `old[[21]]`: "u"
      `new[[21]]`: "U"
      
      `old[[22]]`: "v"
      `new[[22]]`: "V"
      
      `old[[23]]`: "w"
      `new[[23]]`: "W"
      
      `old[[24]]`: "x"
      `new[[24]]`: "X"
      
      `old[[25]]`: "y"
      `new[[25]]`: "Y"
      
      `old[[26]]`: "z"
      `new[[26]]`: "Z"

---

    Code
      compare(letters, LETTERS, max_diffs = 1)
    Output
      `old`: "a" and 25 more...
      `new`: "A" ...           

---

    Code
      compare(letters, LETTERS, max_diffs = 10)
    Output
      `old`: "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" and 16 more...
      `new`: "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" ...           

---

    Code
      compare(letters, LETTERS, max_diffs = 20)
    Output
           old | new               
       [1] "a" - "A" [1]           
       [2] "b" - "B" [2]           
       [3] "c" - "C" [3]           
       [4] "d" - "D" [4]           
       [5] "e" - "E" [5]           
       [6] "f" - "F" [6]           
       [7] "g" - "G" [7]           
       [8] "h" - "H" [8]           
       [9] "i" - "I" [9]           
      [10] "j" - "J" [10]          
      [11] "k" - "K" [11]          
      [12] "l" - "L" [12]          
      [13] "m" - "M" [13]          
      [14] "n" - "N" [14]          
      [15] "o" - "O" [15]          
      [16] "p" - "P" [16]          
      [17] "q" - "Q" [17]          
      [18] "r" - "R" [18]          
      [19] "s" - "S" [19]          
      [20] "t" - "T" [20]          
       ... ...   ... and 6 more ...

---

    Code
      compare(letters, LETTERS, max_diffs = Inf)
    Output
           old | new     
       [1] "a" - "A" [1] 
       [2] "b" - "B" [2] 
       [3] "c" - "C" [3] 
       [4] "d" - "D" [4] 
       [5] "e" - "E" [5] 
       [6] "f" - "F" [6] 
       [7] "g" - "G" [7] 
       [8] "h" - "H" [8] 
       [9] "i" - "I" [9] 
      [10] "j" - "J" [10]
      [11] "k" - "K" [11]
      [12] "l" - "L" [12]
      [13] "m" - "M" [13]
      [14] "n" - "N" [14]
      [15] "o" - "O" [15]
      [16] "p" - "P" [16]
      [17] "q" - "Q" [17]
      [18] "r" - "R" [18]
      [19] "s" - "S" [19]
      [20] "t" - "T" [20]
      [21] "u" - "U" [21]
      [22] "v" - "V" [22]
      [23] "w" - "W" [23]
      [24] "x" - "X" [24]
      [25] "y" - "Y" [25]
      [26] "z" - "Z" [26]

# can compare with `missing_arg()`

    Code
      compare(missing_arg(), missing_arg())
    Output
      v No differences
    Code
      compare(missing_arg(), sym("a"))
    Output
      `old` is absent
      `new` is a symbol
    Code
      compare(sym("a"), missing_arg())
    Output
      `old` is a symbol
      `new` is absent

# can choose to compare srcrefs

    Code
      f1 <- f2 <- (function() { })
      attr(f2, "srcref") <- "{  }"
      compare(f2, f1)
    Output
      v No differences
    Code
      compare(f2, f1, ignore_srcref = FALSE)
    Output
      `attr(old, 'srcref')` is a character vector ('{  }')
      `attr(new, 'srcref')` is an S3 object of class <srcref>, an integer vector

