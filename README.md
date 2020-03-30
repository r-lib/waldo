
<!-- README.md is generated from README.Rmd. Please edit that file -->

# waldo

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/r-lib/waldo/branch/master/graph/badge.svg)](https://codecov.io/gh/r-lib/waldo?branch=master)
[![R build
status](https://github.com/r-lib/waldo/workflows/R-CMD-check/badge.svg)](https://github.com/r-lib/waldo/actions)
<!-- badges: end -->

The goal of waldo is to find the differences between complex R objects,
particularly as needed for unit tests. `waldo::compare()` is inspired by
`all.equal()`, but takes additional care to generate actionable insights
by:

  - Displaying in-line diffs of atomic vectors.
  - Using R code (not a text description) to show where differences
    arise.
  - Comparing using names, rather than positions, where it makes sense.

<!--
## Installation

You can install the released version of waldo from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("waldo")
```
-->

## Example

``` r
library(waldo)
```

When comparing atomic vectors, `compare()` produces inline diffs (thanks
to [diffobj](https://github.com/brodieG/diffobj)) that show the key
differences, along with a little context

``` r
# change
compare(c("a", "b", "c"), c("a", "B", "c"))
#> x `x`: 'a' 'b'/'B' 'c'
# addition
compare(c("a", "b"), c("a", "b", "c"))
#> x `x`: 'a' 'b' +'c'
# deletion
compare(c("a", "b", "c"), c("a", "b"))
#> x `x`: 'a' 'b' -'c'

# long vector with small differences displays local context
compare(c("X", letters), c(letters, "X"))
#> x `x[1:4]`: -'X' 'a' 'b' 'c' ...
#> x `x[24:27]`: ... 'w' 'x' 'y' 'z' +'X'
```

(When run in the console, not in `.Rmd`, colour is used to make the
diffs easier to read)

When comparing more complex objects, `compare()` creates an executable
code path telling you where the differences lie:

``` r
compare(factor("x"), 1L)
#> x `levels(x)` should be absent, not a character vector ('x')
#> x `class(x)` should be absent, not a character vector ('factor')

df1 <- data.frame(x = 1:3, y = 3:1)
df2 <- tibble::tibble(y = 3:1, x = 1:3)
compare(df1, df2)
#> x `names(x)`: -'x' 'y' +'x'
#> x `class(x)`: +'tbl_df' +'tbl' 'data.frame'

x <- list(a = list(b = list(c = list(structure(1, e = 1)))))
y <- list(a = list(b = list(c = list(structure(1, e = "a")))))
compare(x, y)
#> x `attr(x$a$b$c[[1]], 'e')` should be a character vector ('a'), not a double vector (1)
```
