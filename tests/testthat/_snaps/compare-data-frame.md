# informative diff for additions and deletions

    Code
      df <- data.frame(x = 1:5, y = 5:1)
      compare(df, unrowname(df[1:3, ]))
    Output
      `attr(old, 'row.names')`: 1 2 3 4 5
      `attr(new, 'row.names')`: 1 2 3    
      
      old vs new
                 x y
        old[1, ] 1 5
        old[2, ] 2 4
        old[3, ] 3 3
      - old[4, ] 4 2
      - old[5, ] 5 1
      
      `old$x`: 1 2 3 4 5
      `new$x`: 1 2 3    
      
      `old$y`: 5 4 3 2 1
      `new$y`: 5 4 3    
    Code
      compare(df, unrowname(df[c(1, 5, 2, 3, 4, 5), ]))
    Output
      `attr(old, 'row.names')[3:5]`: 3 4 5  
      `attr(new, 'row.names')[3:6]`: 3 4 5 6
      
      old vs new
                 x y
        old[1, ] 1 5
      + new[2, ] 5 1
        old[2, ] 2 4
        old[3, ] 3 3
        old[4, ] 4 2
      
      `old$x[1:4]`: 1   2 3 4
      `new$x[1:5]`: 1 5 2 3 4
      
      `old$y[1:4]`: 5   4 3 2
      `new$y[1:5]`: 5 1 4 3 2

# informative diff for changes

    Code
      df1 <- data.frame(x = 1:3, y = 1, z = c("a", "b", "c"), stringsAsFactors = FALSE)
      df2 <- data.frame(x = c(1, 100, 3), y = 1, z = c("a", "B", "c"),
      stringsAsFactors = FALSE)
      compare(df1, df2)
    Output
      old vs new
                   x z
        old[1, ]   1 a
      - old[2, ]   2 b
      + new[2, ] 100 B
        old[3, ]   3 c
      
      `old$x` is an integer vector (1, 2, 3)
      `new$x` is a double vector (1, 100, 3)
      
      `old$z`: "a" "b" "c"
      `new$z`: "a" "B" "c"

# converts factors to strings

    Code
      compare(df1, df2)
    Output
      `levels(old$x)`: "a" "b" "c"
      `levels(new$x)`: "a" "b" "d"

# works when nrow(df) > option(max.print)

    Code
      withr::local_options(max.print = 1)
      df1 <- data.frame(a = 1:2, b = 1:2)
      df2 <- data.frame(a = c(1, 3), b = 1:2)
      compare(df1, df2)
    Output
      old vs new
                 a
        old[1, ] 1
      - old[2, ] 2
      + new[2, ] 3
      
      `old$a` is an integer vector (1, 2)
      `new$a` is a double vector (1, 3)

