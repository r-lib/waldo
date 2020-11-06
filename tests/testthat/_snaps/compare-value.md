# logical comparison minimise extraneous diffs

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
      `x[1:4]`: TRUE FALSE TRUE FALSE
      `y[1:3]`:      FALSE TRUE FALSE
      
      `x[48:50]`: FALSE TRUE FALSE                
      `y[47:52]`: FALSE TRUE FALSE TRUE FALSE TRUE

