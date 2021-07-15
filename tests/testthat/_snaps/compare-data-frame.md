# informative diff for additions and deletions

    Code
      compare(df, unrowname(df[1:3, ]))
    Output
      `attr(old, 'row.names')`: 1 2 3 4 5
      `attr(new, 'row.names')`: 1 2 3    
      
      old vs new
         x y
         1 5
         2 4
         3 3
      -  4 2
      -  5 1
      
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
         1 5
      +  5 1
         2 4
         3 3
         4 2
      
      `old$x[1:4]`: 1   2 3 4
      `new$x[1:5]`: 1 5 2 3 4
      
      `old$y[1:4]`: 5   4 3 2
      `new$y[1:5]`: 5 1 4 3 2

# informative diff for changes

    Code
      compare(df1, df2)
    Output
      old vs new
           x z
           1 a
      -    2 b
      +  100 B
           3 c
      
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

