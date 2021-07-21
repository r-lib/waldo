# arkhe

<details>

* Version: 0.3.1
* GitHub: https://github.com/tesselle/arkhe
* Source code: https://github.com/cran/arkhe
* Date/Publication: 2021-05-14 10:12:12 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "arkhe")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        1. └─testthat::expect_equal(strati@.Data, layers, ignore_attr = TRUE) test-stratigraphy.R:37:2
        2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
        3.     └─testthat:::waldo_compare(...)
        4.       └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
        5.         └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
        6.           └─waldo:::compare_logical(x, y, paths, max_diffs = opts$max_diffs)
        7.             └─waldo:::diff_element(...)
        8.               └─waldo:::ses_shortest(x, y)
        9.                 └─waldo:::ses(x, y)
       10.                   └─diffobj::ses(x, y, warn = FALSE)
       11.                     └─diffobj:::diff_myers(...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 305 ]
      Error: Test failures
      Execution halted
    ```

# fastpos

<details>

* Version: 0.4.1
* GitHub: https://github.com/johannes-titz/fastpos
* Source code: https://github.com/cran/fastpos
* Date/Publication: 2020-09-29 08:50:08 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "fastpos")` for more info

</details>

## Newly broken

*   checking whether package ‘fastpos’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/fastpos/new/fastpos.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        error: lazy-load database '/opt/R/4.0.3/lib/R/library/grDevices/R/grDevices.rdb' is corrupt
      Error: package or namespace load failed for ‘graphics’ in get(Info[i, 1], envir = env):
       lazy-load database '/opt/R/4.0.3/lib/R/library/grDevices/R/grDevices.rdb' is corrupt
      During startup - Warning messages:
      1: In system("uname -a", intern = TRUE) :
        running command 'uname -a' had status 2
      2: package ‘utils’ in options("defaultPackages") was not found 
      Error: package or namespace load failed for ‘stats’ in get(Info[i, 1], envir = env):
       lazy-load database '/opt/R/4.0.3/lib/R/library/grDevices/R/grDevices.rdb' is corrupt
      During startup - Warning messages:
      1: package ‘grDevices’ in options("defaultPackages") was not found 
      2: In get(Info[i, 1], envir = env) : internal error -3 in R_decompress1
      3: package ‘graphics’ in options("defaultPackages") was not found 
      4: In get(Info[i, 1], envir = env) : internal error -3 in R_decompress1
      5: package ‘stats’ in options("defaultPackages") was not found 
    ```

## Installation

### Devel

```
* installing *source* package ‘fastpos’ ...
** package ‘fastpos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: RcppExports.o] Error 1
ERROR: compilation failed for package ‘fastpos’
* removing ‘/tmp/workdir/fastpos/new/fastpos.Rcheck/fastpos’


```
### CRAN

```
* installing *source* package ‘fastpos’ ...
** package ‘fastpos’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppArmadillo/include' -I'/opt/R/4.0.3/lib/R/site-library/RcppProgress/include' -I/usr/local/include  -fopenmp -fpic  -g -O2  -c rcpparma.cpp -o rcpparma.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o fastpos.so RcppExports.o rcpparma.o -fopenmp -llapack -lblas -lgfortran -lm -lquadmath -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/fastpos/old/fastpos.Rcheck/00LOCK-fastpos/00new/fastpos/libs
** R
** inst
...
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (fastpos)


```
# fiery

<details>

* Version: 1.1.3
* GitHub: https://github.com/thomasp85/fiery
* Source code: https://github.com/cran/fiery
* Date/Publication: 2020-12-15 22:50:06 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "fiery")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Error (test-loggers.R:39:5): switch logger works ────────────────────────────
      Error: invalid connection
      Backtrace:
          █
       1. └─testthat::expect_output(logger("info", "info test"), "info: info test") test-loggers.R:39:4
       2.   └─testthat:::quasi_capture(...)
       3.     └─testthat:::.capture(...)
       4.       └─testthat::capture_output_lines(code, print, width = width)
       5.         └─testthat:::eval_with_output(code, print = print, width = width)
       6.           ├─base::close(temp)
       7.           └─base::close.connection(temp)
      
      [ FAIL 2 | WARN 0 | SKIP 1 | PASS 252 ]
      Error: Test failures
      Execution halted
    ```

# httpuv

<details>

* Version: 1.6.1
* GitHub: https://github.com/rstudio/httpuv
* Source code: https://github.com/cran/httpuv
* Date/Publication: 2021-05-07 04:50:02 UTC
* Number of recursive dependencies: 38

Run `cloud_details(, "httpuv")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      •  (8)
      • On CRAN (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-http-parse.R:7:3): Large HTTP header values are preserved ───────
      Error: Failed to create server
      Backtrace:
          █
       1. └─httpuv::startServer(...) test-http-parse.R:7:2
       2.   └─WebServer$new(host, port, app, quiet)
       3.     └─httpuv:::initialize(...)
      
      [ FAIL 1 | WARN 0 | SKIP 9 | PASS 229 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 17.2Mb
      sub-directories of 1Mb or more:
        libs  16.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# ijtiff

<details>

* Version: 2.2.7
* GitHub: https://github.com/ropensci/ijtiff
* Source code: https://github.com/cran/ijtiff
* Date/Publication: 2021-06-28 07:00:06 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "ijtiff")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test-utils.R:20:3): tif_tags_reference() works ───────────────────────
      Error: unused argument (paths[[1]])
      Backtrace:
          █
       1. └─testthat::expect_equal(...) test-utils.R:20:2
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
       5.         └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       6.           └─waldo::compare_proxy(x, paths[[1]])
      
      [ FAIL 1 | WARN 110 | SKIP 3 | PASS 99 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘EBImage’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘EBImage’
    ```

# mcmcr

<details>

* Version: 0.5.0
* GitHub: https://github.com/poissonconsulting/mcmcr
* Source code: https://github.com/cran/mcmcr
* Date/Publication: 2021-02-11 16:10:02 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "mcmcr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(mcmcr)
      > 
      > test_check("mcmcr")
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-converged.R:32:3): converged.mcmcr ────────────────────────────
      converged(mcmcr_example, by = "parameter", as_df = TRUE) not identical to tibble::tibble(...).
      Attributes: < Component "row.names": Modes: character, numeric >
      Attributes: < Component "row.names": target is character, current is numeric >
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 419 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘generics’
      All declared Imports should be used.
    ```

# MoMPCA

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/MoMPCA
* Date/Publication: 2021-01-21 13:10:03 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "MoMPCA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
          █
       1. └─MoMPCA::mmpca_clust(...) test-mmpca_clust.R:11:0
       2.   └─`%dopar%`(...)
       3.     └─e$fun(obj, substitute(ex), parent.frame(), e$data)
       4.       └─parallel::clusterApplyLB(cl, argsList, evalWrapper)
       5.         └─parallel:::dynamicClusterApply(cl, fun, length(x), argfun)
       6.           └─parallel:::recvOneResult(cl)
       7.             ├─parallel:::recvOneData(cl)
       8.             └─parallel:::recvOneData.SOCKcluster(cl)
       9.               └─base::unserialize(socklist[[n]])
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 9 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 16 marked UTF-8 strings
    ```

# mortyr

<details>

* Version: 0.0.2
* GitHub: https://github.com/mikejohnpage/mortyr
* Source code: https://github.com/cran/mortyr
* Date/Publication: 2021-01-10 14:30:08 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "mortyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test_returned_data.R:1:1): (code run outside of `test_that()`) ───────
      Error: Maximum (10) redirects followed
      Backtrace:
          █
       1. └─mortyr::get_characters() test_returned_data.R:1:0
       2.   └─httr::GET("https://rickandmortyapi.com/api/character")
       3.     └─httr:::request_perform(req, hu$handle$handle)
       4.       ├─httr:::request_fetch(req$output, req$url, handle)
       5.       └─httr:::request_fetch.write_memory(req$output, req$url, handle)
       6.         └─curl::curl_fetch_memory(url, handle = handle)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# nombre

<details>

* Version: 0.3.0
* GitHub: https://github.com/rossellhayes/nombre
* Source code: https://github.com/cran/nombre
* Date/Publication: 2020-09-12 04:50:02 UTC
* Number of recursive dependencies: 43

Run `cloud_details(, "nombre")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Backtrace:
          █
       1. └─nombre:::expect_equal(collective(3), "all three") test-set_config.R:40:2
       2.   └─waldo::compare(...)
       3.     └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       4.       └─waldo:::compare_character(x, y, paths, max_diffs = opts$max_diffs)
       5.         └─waldo:::diff_element(x, y, paths, quote = quote, max_diffs = max_diffs)
       6.           └─waldo:::ses_shortest(x, y)
       7.             └─waldo:::ses(x, y)
       8.               └─diffobj::ses(x, y, warn = FALSE)
       9.                 └─diffobj:::diff_myers(...)
      
      [ FAIL 36 | WARN 0 | SKIP 0 | PASS 91 ]
      Error: Test failures
      Execution halted
    ```

# PL94171

<details>

* Version: 0.2.0
* GitHub: https://github.com/CoryMcCartan/PL94171
* Source code: https://github.com/cran/PL94171
* Date/Publication: 2021-06-15 15:00:02 UTC
* Number of recursive dependencies: 95

Run `cloud_details(, "PL94171")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error: unused argument (paths[[1]])
      Backtrace:
          █
       1. └─testthat::expect_equal(pl_ex, actual) test-read.R:4:2
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
       5.         └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       6.           └─waldo:::compare_by_name(x, y, paths, opts)
       7.             └─waldo:::compare_structure(...)
       8.               └─waldo::compare_proxy(x, paths[[1]])
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# readr

<details>

* Version: 2.0.0
* GitHub: https://github.com/tidyverse/readr
* Source code: https://github.com/cran/readr
* Date/Publication: 2021-07-20 08:10:02 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "readr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘first_edition.R’
    Running the tests in ‘tests/first_edition.R’ failed.
    Last 13 lines of output:
       6.           └─waldo::compare_proxy(x, paths[[1]])
      ── Error (test-write.R:125:3): write_csv can write to compressed files ─────────
      Error: unused argument (paths[[1]])
      Backtrace:
          █
       1. └─testthat::expect_equal(mt, read_csv(filename)) test-write.R:125:2
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
       5.         └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       6.           └─waldo::compare_proxy(x, paths[[1]])
      
      [ FAIL 4 | WARN 5 | SKIP 17 | PASS 733 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        libs   9.4Mb
    ```

# RNiftyReg

<details>

* Version: 2.7.0
* GitHub: https://github.com/jonclayden/RNiftyReg
* Source code: https://github.com/cran/RNiftyReg
* Date/Publication: 2020-09-12 05:51:01 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "RNiftyReg")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is 125.0Mb
      sub-directories of 1Mb or more:
        extdata    2.0Mb
        libs     122.8Mb
    ```

## Newly fixed

*   checking whether package ‘RNiftyReg’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/RNiftyReg/old/RNiftyReg.Rcheck/00install.out’ for details.
    ```

# sass

<details>

* Version: 0.4.0
* GitHub: https://github.com/rstudio/sass
* Source code: https://github.com/cran/sass
* Date/Publication: 2021-05-12 06:00:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "sass")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        4.       └─testthat:::waldo_compare(...)
        5.         └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
        6.           └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
        7.             └─waldo:::compare_character(x, y, paths, max_diffs = opts$max_diffs)
        8.               └─waldo:::diff_element(x, y, paths, quote = quote, max_diffs = max_diffs)
        9.                 └─waldo:::ses_shortest(x, y)
       10.                   └─waldo:::ses(x, y)
       11.                     └─diffobj::ses(x, y, warn = FALSE)
       12.                       └─diffobj:::diff_myers(...)
      
      [ FAIL 1 | WARN 1 | SKIP 4 | PASS 178 ]
      Deleting unused snapshots:
      * _snaps/font-objects/font-css
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs   3.4Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# supernova

<details>

* Version: 2.4.1
* GitHub: https://github.com/UCLATALL/supernova
* Source code: https://github.com/cran/supernova
* Date/Publication: 2021-05-29 05:30:02 UTC
* Number of recursive dependencies: 118

Run `cloud_details(, "supernova")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      - actual[7, ]     2.000  2.0000000 5.6470588 0.32000000 0.03499435
      + expected[7, ]   2.000  2.0000000 5.6600000 0.32000000 0.03500000
      - actual[8, ]     0.125  0.1250000 0.3529412 0.02857143 0.56348536
      + expected[8, ]   0.125  0.1250000 0.3500000 0.03000000 0.56500000
      - actual[9, ]     0.500  0.5000000 1.4117647 0.10526316 0.25774808
      + expected[9, ]   0.505  0.5000000 1.4200000 0.11000000 0.25600000
      - actual[10, ]    4.250  0.3541667        NA         NA         NA
      + expected[10, ]  4.255  0.3542000        NA         NA         NA
        actual[11, ]   10.000  0.6250000        NA         NA         NA
      - actual[12, ]   43.500  1.4032258        NA         NA         NA
      + expected[12, ] 43.500  1.4000000        NA         NA         NA
      
      [ FAIL 4 | WARN 0 | SKIP 11 | PASS 260 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘backports’ ‘methods’
      All declared Imports should be used.
    ```

# tidyndr

<details>

* Version: 0.1.0
* GitHub: https://github.com/stephenbalogun/tidyndr
* Source code: https://github.com/cran/tidyndr
* Date/Publication: 2021-03-23 19:40:03 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "tidyndr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       6.           └─waldo::compare_proxy(x, paths[[1]])
      ── Error (test-tx_vl_unsuppressed.R:2:3): tx_vl_unsuppressed works fine ────────
      Error: unused argument (paths[[1]])
      Backtrace:
          █
       1. └─testthat::expect_identical(...) test-tx_vl_unsuppressed.R:2:2
       2.   └─testthat:::expect_waldo_equal("identical", act, exp, info, ...)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
       5.         └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       6.           └─waldo::compare_proxy(x, paths[[1]])
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

# vistime

<details>

* Version: 1.2.1
* GitHub: https://github.com/shosaco/vistime
* Source code: https://github.com/cran/vistime
* Date/Publication: 2021-04-10 11:20:03 UTC
* Number of recursive dependencies: 98

Run `cloud_details(, "vistime")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error (test_set_colors.R:37:3): trim whitespaces ────────────────────────────
      Error: missing value where TRUE/FALSE needed
      Backtrace:
          █
       1. └─testthat::expect_equal(fixed, lapply(fixed, trimws), ignore_attr = T) test_set_colors.R:37:2
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
       5.         └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       6.           └─waldo:::compare_data_frame(x, y, paths, opts = opts)
      
      [ FAIL 1 | WARN 7 | SKIP 0 | PASS 113 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.2Mb
      sub-directories of 1Mb or more:
        doc   5.9Mb
    ```

# vroom

<details>

* Version: 1.5.3
* GitHub: https://github.com/r-lib/vroom
* Source code: https://github.com/cran/vroom
* Date/Publication: 2021-07-14 04:30:02 UTC
* Number of recursive dependencies: 89

Run `cloud_details(, "vroom")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       6.           └─waldo::compare_proxy(x, paths[[1]])
      ── Error (test-vroom_write.R:145:3): write_csv can write to compressed files ───
      Error: unused argument (paths[[1]])
      Backtrace:
          █
       1. └─testthat::expect_equal(vroom(filename, col_types = list()), mt) test-vroom_write.R:145:2
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
       5.         └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       6.           └─waldo::compare_proxy(x, paths[[1]])
      
      [ FAIL 96 | WARN 1 | SKIP 4 | PASS 368 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 24.4Mb
      sub-directories of 1Mb or more:
        libs  22.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

