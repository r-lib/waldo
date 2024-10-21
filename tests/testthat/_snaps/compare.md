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

# can optionally ignore selected attributes

    Code
      compare(x, y, ignore_attr = "a")
    Output
      `attr(old, 'b')` is absent
      `attr(new, 'b')` is a character vector ('b')

# can ignore class attribute

    Code
      compare(one_a, 1L, ignore_attr = "class")
    Output
      `old` is an S3 object of class <a>, a double vector
      `new` is an integer vector (1)

# ignores S3 [[ methods

    Code
      x <- as.POSIXlt("2020-01-01")
      y <- as.POSIXlt("2020-01-02")
      compare(x, y)
    Output
      `old$mday`: 1
      `new$mday`: 2
      
      `old$wday`: 3
      `new$wday`: 4
      
      `old$yday`: 0
      `new$yday`: 1
    Code
      x <- package_version("1.0.0")
      y <- package_version("1.1.0")
      compare(x, y)
    Output
      `old[[1]]`: 1 0 0
      `new[[1]]`: 1 1 0

# can optionally compare encoding

    Code
      compare(x, y)
    Output
      v No differences
    Code
      compare(x, y, ignore_encoding = FALSE)
    Output
      `Encoding(old)`: "latin1" "UTF-8" 
      `Encoding(new)`: "UTF-8"  "latin1"

# lists compare by name, where possible

    Code
      # extra y
      compare(list("a", "b"), list("a", "b", "c"))
    Output
      `old` is length 2
      `new` is length 3
      
      `old[[3]]` is absent
      `new[[3]]` is a character vector ('c')
    Code
      compare(list(a = "a", b = "b"), list(a = "a", b = "b", c = "c"))
    Output
      `old` is length 2
      `new` is length 3
      
      `names(old)`: "a" "b"    
      `names(new)`: "a" "b" "c"
      
      `old$c` is absent
      `new$c` is a character vector ('c')
    Code
      # extra x
      compare(list("a", "b", "c"), list("a", "b"))
    Output
      `old` is length 3
      `new` is length 2
      
      `old[[3]]` is a character vector ('c')
      `new[[3]]` is absent
    Code
      compare(list(a = "a", b = "b", c = "c"), list(a = "a", b = "b"))
    Output
      `old` is length 3
      `new` is length 2
      
      `names(old)`: "a" "b" "c"
      `names(new)`: "a" "b"    
      
      `old$c` is a character vector ('c')
      `new$c` is absent
    Code
      # different order
      compare(list(a = "a", b = "b"), list(b = "b", a = "a"))
    Output
      `names(old)`: "a" "b"
      `names(new)`: "b" "a"
    Code
      # invalid names uses position
      compare(list(a = "a", "b"), list(a = "a", "c"))
    Output
      `old[[2]]`: "b"
      `new[[2]]`: "c"
    Code
      compare(list(a = "a", a = "b"), list(a = "a", a = "c"))
    Output
      `old[[2]]`: "b"
      `new[[2]]`: "c"

# can request lists treated as maps

    Code
      compare_map(list(x = 1, y = 1, y = 2), list(x = 1, y = 1))
    Output
      `old` is length 3
      `new` is length 2
      
      `names(old)`: "x" "y" "y"
      `names(new)`: "x" "y"    
      
      `old[[3]]` is a double vector (2)
      `new[[3]]` is absent

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

---

    Code
      # when in a list symbol #79
      compare(list(sym("a")), list())
    Output
      `old` is length 1
      `new` is length 0
      
      `old[[1]]` is a symbol
      `new[[1]]` is absent
    Code
      compare(list(), list(sym("a")))
    Output
      `old` is length 0
      `new` is length 1
      
      `old[[1]]` is absent
      `new[[1]]` is a symbol

# comparing functions gives useful diffs

    Code
      # equal
      f1 <- (function(x = 1, y = 2) { })
      f2 <- (function(x = 1, y = 2) { })
      compare(f1, f2)
    Output
      v No differences
    Code
      f2 <- source(test_path("f2.R"), local = TRUE, keep.source = TRUE)$value
      compare(f1, f2)
    Output
      v No differences
    Code
      # pritimives
      compare(`[`, sum)
    Output
      `old` is `.Primitive("[")`
      `new` is `.Primitive("sum")`
    Code
      compare(sum, prod)
    Output
      `old` is `.Primitive("sum")`
      `new` is `.Primitive("prod")`
    Code
      # diff formals
      f3 <- (function(x = 1, y = 1, z = 1) { })
      compare(f1, f3)
    Output
      `formals(old)` is length 2
      `formals(new)` is length 3
      
      `names(formals(old))`: "x" "y"    
      `names(formals(new))`: "x" "y" "z"
      
      `formals(old)$y`: 2
      `formals(new)$y`: 1
      
      `formals(old)$z` is absent
      `formals(new)$z` is a double vector (1)
    Code
      # diff body
      f4 <- (function(x = 1, y = 2) {
        x + y
      })
      compare(f1, f4)
    Output
      `body(old)`: `{` `}`            
      `body(new)`: `{` `    x + y` `}`
    Code
      # diff environment
      environment(f1) <- base_env()
      environment(f2) <- global_env()
      compare(f1, f2)
    Output
      `environment(old)` is <env:package:base>
      `environment(new)` is <env:global>

# can choose to compare srcrefs

    Code
      compare(f2, f1)
    Output
      v No differences
    Code
      compare(f2, f1, ignore_srcref = FALSE)
    Output
      `attr(old, 'srcref')` is absent
      `attr(new, 'srcref')` is an S3 object of class <srcref>, an integer vector
    Code
      # Different body
      compare(f3, f1, ignore_srcref = FALSE)
    Output
      `attr(old, 'srcref')`: 207  9 209 3  9 3 207 209
      `attr(new, 'srcref')`: 203 15 205 3 15 3 203 205
      
      `attr(body(old), 'srcref')[[1]]`: 207 20 207 20 20 20 207 207
      `attr(body(new), 'srcref')[[1]]`: 203 26 203 26 26 26 203 203
      
      `attr(body(old), 'srcref')[[2]]`: 208 5 208 9 5 9 208 208
      `attr(body(new), 'srcref')[[2]]`: 204 5 204 9 5 9 204 204
      
      `attr(body(old), 'wholeSrcref')`: 1 0 209 3 0 3 1 209
      `attr(body(new), 'wholeSrcref')`: 1 0 205 3 0 3 1 205
      
      `body(old)`: `{` `    1 + 3` `}`
      `body(new)`: `{` `    1 + 2` `}`

# can compare atomic vectors

    Code
      compare(1:3, 10L + 1:3)
    Output
      `old`:  1  2  3
      `new`: 11 12 13
    Code
      compare(c(TRUE, FALSE, NA, TRUE), c(FALSE, FALSE, FALSE))
    Output
      `old`: TRUE  FALSE <NA>  TRUE
      `new`: FALSE FALSE FALSE     

# can compare S3 objects

    Code
      compare(factor("a"), 1L)
    Output
      `old` is an S3 object of class <factor>, an integer vector
      `new` is an integer vector (1)
    Code
      compare(factor("a"), globalenv())
    Output
      `old` is an S3 object of class <factor>, an integer vector
      `new` is an environment
    Code
      compare(factor("a"), as.Date("1970-01-02"))
    Output
      `old` is an S3 object of class <factor>, an integer vector
      `new` is an S3 object of class <Date>, a double vector
    Code
      compare(structure(function() { }, class = "foo"), factor("a"))
    Output
      `old` is an S3 object of class <foo>, a function
      `new` is an S3 object of class <factor>, an integer vector

# can compare S4 objects

    Code
      # Non S4
      compare(new("A", x = "1"), 1)
    Output
      `old` is an S4 object of class <A>
      `new` is a double vector (1)
    Code
      compare(new("A", x = "1"), globalenv())
    Output
      `old` is an S4 object of class <A>
      `new` is an environment
    Code
      compare(new("A", x = "1"), factor("x"))
    Output
      `old` is an S4 object of class <A>
      `new` is an S3 object of class <factor>, an integer vector
    Code
      # S4
      compare(new("A", x = "1"), new("A", x = "1"))
    Output
      v No differences
    Code
      compare(new("A", x = "1"), new("A", x = "2"))
    Output
      `old@x`: "1"
      `new@x`: "2"
    Code
      compare(new("A", x = "1"), new("B", x = "1"))
    Output
      `is(old)`: "A"    
      `is(new)`: "B" "A"
    Code
      # S4 with extra attributes
      new <- old <- new("A", x = "1")
      attr(new, "bar") <- 2
      compare(new, old)
    Output
      `attr(old, 'bar')` is a double vector (2)
      `attr(new, 'bar')` is absent

# can compare R6 objects

    Code
      goofy <- R6::R6Class("goofy", public = list(initialize = function(x) self$x <-
      x, x = 10))
      froofy <- R6::R6Class("froofy", inherit = goofy, public = list(y = 10))
      # Non R6
      compare(goofy$new(1), 1)
    Output
      `old` is an R6 object of class <goofy>
      `new` is a double vector (1)
    Code
      compare(goofy$new(1), globalenv())
    Output
      `old` is an R6 object of class <goofy>
      `new` is an environment
    Code
      compare(goofy$new(1), factor("x"))
    Output
      `old` is an R6 object of class <goofy>
      `new` is an S3 object of class <factor>, an integer vector
    Code
      # R6
      compare(goofy$new(1), goofy$new(1))
    Output
      v No differences
    Code
      compare(goofy$new(1), goofy$new("a"))
    Output
      `old$x` is a double vector (1)
      `new$x` is a character vector ('a')
    Code
      compare(goofy$new(1), froofy$new(1))
    Output
      `class(old)`: "goofy"  "R6"        
      `class(new)`: "froofy" "goofy" "R6"
      
      `old` is length 3
      `new` is length 4
      
      `names(old)`: "clone" "initialize" "x"    
      `names(new)`: "clone" "initialize" "x" "y"
      
      `old$y` is absent
      `new$y` is a double vector (10)
    Code
      compare(froofy$new(1), froofy$new(1)$clone())
    Output
      v No differences

# Named environments compare by reference

    Code
      compare(baseenv(), globalenv())
    Output
      `old` is <env:package:base>
      `new` is <env:global>
    Code
      compare(baseenv(), new.env())
    Output
      `old` is <env:package:base>
      `new` is <env: 0x********>
    Code
      compare(new.env(), baseenv())
    Output
      `old` is <env: 0x********>
      `new` is <env:package:base>

# unnamed arguments compare by value

    Code
      e1 <- new.env(parent = emptyenv())
      e2 <- new.env(parent = emptyenv())
      compare(e1, e2)
    Output
      v No differences
    Code
      e1$x <- 10
      e2$x <- 11
      compare(e1, e2)
    Output
      `old$x`: 10
      `new$x`: 11
    Code
      e2$x <- 10
      compare(e1, e2)
    Output
      v No differences

# compares parent envs

    Code
      e1 <- new.env(parent = emptyenv())
      e1$x <- 1
      e2 <- new.env(parent = emptyenv())
      e2$x <- 2
      e3 <- new.env(parent = e1)
      e4 <- new.env(parent = e2)
      compare(e3, e4)
    Output
      `parent.env(old)$x`: 1
      `parent.env(new)$x`: 2

# don't get caught in endless loops

    Code
      e1 <- new.env(parent = emptyenv())
      e2 <- new.env(parent = emptyenv())
      e1$x <- 10
      e1$y <- e1
      e2$x <- 10
      e2$y <- e1
      compare(e1, e2)
    Output
      v No differences
    Code
      e2$y <- e2
      compare(e1, e2)
    Output
      v No differences

# only shows paired env different once

    Code
      e1 <- new.env(parent = emptyenv())
      e2 <- new.env(parent = emptyenv())
      e3 <- new.env(parent = emptyenv())
      e1$x <- 1
      e2$x <- 2
      e3$x <- 3
      compare(list(e1, e1, e1), list(e2, e2, e3))
    Output
      `old[[1]]$x`: 1
      `new[[1]]$x`: 2
      
      `old[[3]]$x`: 1
      `new[[3]]$x`: 3

# can compare CHARSXP

    Code
      compare(char1, char2)
    Output
      `old` is CHARSXP: foo
      `new` is CHARSXP: bar
    Code
      compare(char1, "foo")
    Output
      `old` is an internal string
      `new` is a character vector ('foo')

# differences in DOTSXP are ignored

    Code
      compare(f(1), f(1, 2))
    Output
      v No differences

# comparing language objects gives useful diffs

    Code
      compare(quote(a), quote(b))
    Output
      `old` is `a`
      `new` is `b`
    Code
      compare(quote(a + b), quote(b + c))
    Output
      `old`: `a + b`
      `new`: `b + c`
    Code
      x <- y <- quote(foo(1:3))
      y[[2]] <- 1:3
      compare(x, y)
    Output
      `old[[2]]` is a call
      `new[[2]]` is an integer vector (1, 2, 3)
    Code
      compare(expression(1, a, a + b), expression(1, a, a + b))
    Output
      v No differences
    Code
      compare(expression(1, a, a + b), expression(1, a, a + c))
    Output
      `old[[3]]`: `a + b`
      `new[[3]]`: `a + c`

# compare_proxy() modifies path

    Code
      compare(foo1, foo2)
    Output
      `proxy(old)$x`: 1
      `proxy(new)$x`: 2

# can opt out of string quoting

    Code
      compare(c("a", "b", "c"), c("a", "b", "d"), quote_strings = FALSE)
    Output
          old | new    
      [1] a   | a   [1]
      [2] b   | b   [2]
      [3] c   - d   [3]

