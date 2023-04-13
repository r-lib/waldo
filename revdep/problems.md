# adaptr

<details>

* Version: 1.3.0
* GitHub: https://github.com/INCEPTdk/adaptr
* Source code: https://github.com/cran/adaptr
* Date/Publication: 2023-03-31 14:20:05 UTC
* Number of recursive dependencies: 76

Run `revdepcheck::cloud_details(, "adaptr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • plot_history/history-plot-binomial-multiple-pct-followed-n.svg
      • plot_history/history-plot-binomial-multiple-pct-total-n.svg
      • plot_history/history-plot-binomial-multiple-pct.svg
      • plot_history/history-plot-binomial-single-n-look.svg
      • plot_history/history-plot-binomial-single-pct-all-look.svg
      • plot_history/history-plot-binomial-single-pct-look.svg
      • plot_history/history-plot-binomial-single-prob-followed-n.svg
      • plot_history/history-plot-binomial-single-prob-total-n.svg
      • plot_history/history-plot-binomial-single-ratio-ys-all-look.svg
      • plot_history/history-plot-binomial-single-ratio-ys-look.svg
      • plot_metrics_ecdf/selected.svg
      • plot_metrics_ecdf/size-only.svg
      • plot_metrics_ecdf/superior.svg
      Error: Test failures
      Execution halted
    ```

# arrow

<details>

* Version: 11.0.0.3
* GitHub: https://github.com/apache/arrow
* Source code: https://github.com/cran/arrow
* Date/Publication: 2023-03-08 09:40:13 UTC
* Number of recursive dependencies: 77

Run `revdepcheck::cloud_details(, "arrow")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
        `actual$c3`: NaN NaN NaN
      `expected$c3`:  NA  NA  NA
      
        `actual$c6`: NaN 2 3
      `expected$c6`:  NA 2 3
      Backtrace:
          ▆
       1. └─arrow:::compare_dplyr_binding(...) at test-dplyr-funcs-conditional.R:420:2
       2.   └─arrow:::expect_equal(via_table, expected, ...) at tests/testthat/helper-expectation.R:101:2
       3.     └─testthat::expect_equal(...) at tests/testthat/helper-expectation.R:42:4
      
      [ FAIL 13 | WARN 10 | SKIP 76 | PASS 7565 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 123.3Mb
      sub-directories of 1Mb or more:
        R       4.2Mb
        libs  118.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

# audubon

<details>

* Version: 0.5.0
* GitHub: https://github.com/paithiov909/audubon
* Source code: https://github.com/cran/audubon
* Date/Publication: 2023-03-04 07:50:02 UTC
* Number of recursive dependencies: 65

Run `revdepcheck::cloud_details(, "audubon")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 36 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (6)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-strj-rewrite-and-normalize.R:3:3'): strj_rewrite works ───────
      strj_rewrite_as_def(c(NA_character_, "ⅠⅡⅢ", "123")) (`actual`) not equal to c("NA", "ⅠⅡⅢ", "123") (`expected`).
      
      `actual`:   NA   "ⅠⅡⅢ" "123"
      `expected`: "NA" "ⅠⅡⅢ" "123"
      
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 36 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 54582 marked UTF-8 strings
    ```

# bignum

<details>

* Version: 0.3.1
* GitHub: https://github.com/davidchall/bignum
* Source code: https://github.com/cran/bignum
* Date/Publication: 2023-04-02 21:10:02 UTC
* Number of recursive dependencies: 52

Run `revdepcheck::cloud_details(, "bignum")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─bignum (local) check_math(x, digamma) at test-vctrs-math.R:136:2
       2.   └─testthat::expect_equal(...) at test-vctrs-math.R:99:4
      ── Failure ('test-vctrs-math.R:136:3'): math returning float works ─────────────
      suppressWarnings(as.double(fun(bigfloat(x), ...))) (`actual`) not equal to suppressWarnings(fun(x, ...)) (`expected`).
      
        `actual`: 0.4227843350984671 0.9227843350984671 NA  NA
      `expected`: 0.4227843350984675 0.9227843350984675 NA NaN
      Backtrace:
          ▆
       1. └─bignum (local) check_math(x, digamma) at test-vctrs-math.R:136:2
       2.   └─testthat::expect_equal(...) at test-vctrs-math.R:103:4
      
      [ FAIL 2 | WARN 0 | SKIP 32 | PASS 497 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 14.4Mb
      sub-directories of 1Mb or more:
        libs  14.1Mb
    ```

# canaper

<details>

* Version: 1.0.0
* GitHub: https://github.com/ropensci/canaper
* Source code: https://github.com/cran/canaper
* Date/Publication: 2022-10-04 10:20:12 UTC
* Number of recursive dependencies: 174

Run `revdepcheck::cloud_details(, "canaper")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected`: NaN
      ── Failure ('test-utils.R:17:3'): counting lower values works ──────────────────
      count_lower(4, c(1:10, NA), na_rm = FALSE) (`actual`) not equal to NaN (`expected`).
      
        `actual`:  NA
      `expected`: NaN
      ── Failure ('test-utils.R:19:3'): counting lower values works ──────────────────
      count_lower(4, c(1:10, NaN), na_rm = FALSE) (`actual`) not equal to NaN (`expected`).
      
        `actual`:  NA
      `expected`: NaN
      
      [ FAIL 4 | WARN 0 | SKIP 3 | PASS 268 ]
      Error: Test failures
      Execution halted
    ```

# dplyr

<details>

* Version: 1.1.1
* GitHub: https://github.com/tidyverse/dplyr
* Source code: https://github.com/cran/dplyr
* Date/Publication: 2023-03-22 13:20:07 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::cloud_details(, "dplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-deprec-combine.R:193:3'): combine works with NA and complex (#2203) ──
      `works2` (`actual`) not equal to `expected_result` (`expected`).
      
        `Im(actual)`: 1 1 NA 1
      `Im(expected)`: 1 1  1 1
      ── Failure ('test-deprec-combine.R:203:3'): combine works with NA and complex (#2203) ──
      `works3` (`actual`) not equal to `expected_result` (`expected`).
      
        `Im(actual)`: 1 1 NA NA 1
      `Im(expected)`: 1 1  1  1 1
      
      [ FAIL 2 | WARN 0 | SKIP 324 | PASS 2799 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# exifr

<details>

* Version: 0.3.2
* GitHub: https://github.com/paleolimbot/exifr
* Source code: https://github.com/cran/exifr
* Date/Publication: 2021-03-20 20:40:20 UTC
* Number of recursive dependencies: 44

Run `revdepcheck::cloud_details(, "exifr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test_utils.R:21:3'): exiftool install works properly ────────────────
      Error in `curl::curl_download(install_url, download_file, quiet = quiet)`: Timeout was reached: [] Connection timed out after 10000 milliseconds
      Backtrace:
          ▆
       1. ├─testthat::expect_is(...) at test_utils.R:21:2
       2. │ └─testthat::quasi_label(enquo(object), label, arg = "object")
       3. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       4. └─exifr::configure_exiftool(...)
       5.   └─curl::curl_download(install_url, download_file, quiet = quiet)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 41 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# extras

<details>

* Version: 0.5.0
* GitHub: https://github.com/poissonconsulting/extras
* Source code: https://github.com/cran/extras
* Date/Publication: 2022-10-30 04:20:02 UTC
* Number of recursive dependencies: 61

Run `revdepcheck::cloud_details(, "extras")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      > 
      > test_check("extras")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1002 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-zscore.R:6:3'): zscore ───────────────────────────────────────
      zscore(c(0, 0)) (`actual`) not equal to NA_real_ (`expected`).
      
        `actual`: NaN
      `expected`:  NA
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1002 ]
      Error: Test failures
      Execution halted
    ```

# gcplyr

<details>

* Version: 1.1.0
* GitHub: https://github.com/mikeblazanin/gcplyr
* Source code: https://github.com/cran/gcplyr
* Date/Publication: 2023-02-03 10:32:31 UTC
* Number of recursive dependencies: 83

Run `revdepcheck::cloud_details(, "gcplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       [1] "NA"         - NA             [1]           
       [2] "NA"         - NA             [2]           
       [3] "NA"         - NA             [3]           
       [4] "NA"         - NA             [4]           
       [5] "NA"         - NA             [5]           
       [6] "a"          | "a"            [6]           
       [7] "NA"         - NA             [7]           
       [8] "NA"         - NA             [8]           
       [9] "NA"         - NA             [9]           
      [10] "hello"      | "hello"        [10]          
       ... ...            ...            and 6 more ...
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 170 ]
      Error: Test failures
      Execution halted
    ```

# geos

<details>

* Version: 0.2.2
* GitHub: https://github.com/paleolimbot/geos
* Source code: https://github.com/cran/geos
* Date/Publication: 2022-10-22 18:35:06 UTC
* Number of recursive dependencies: 44

Run `revdepcheck::cloud_details(, "geos")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • empty test (1)
      • identical(Sys.getenv("R_GEOS_TEST_WITH_KNOWN_LEAKS"), "true") is not TRUE (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-compat-wk.R:278:3'): coercion to wk::wkt, wk::wkb, wk::xy, and wk::xyz ──
      wk::as_xy(...) (`actual`) not equal to wk::xyz(0, 1, NA_real_) (`expected`).
      
        `actual$z`: NaN
      `expected$z`:  NA
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 588 ]
      Error: Test failures
      Execution halted
    ```

# gplsim

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/gplsim
* Date/Publication: 2023-02-11 16:50:02 UTC
* Number of recursive dependencies: 36

Run `revdepcheck::cloud_details(, "gplsim")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(gplsim)
      > 
      > test_check("gplsim")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 9 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-gplsim.r:22:3'): test the main functions (gplsim) with binary case ──
      as.vector(est_beta) (`actual`) not equal to `true.theta` (`expected`).
      
        `actual`: 0.75 0.51 0.43
      `expected`: 0.58 0.58 0.58
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 9 ]
      Error: Test failures
      Execution halted
    ```

# igraph

<details>

* Version: 1.4.2
* GitHub: https://github.com/igraph/rigraph
* Source code: https://github.com/cran/igraph
* Date/Publication: 2023-04-07 17:40:07 UTC
* Number of recursive dependencies: 71

Run `revdepcheck::cloud_details(, "igraph")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `x` (`actual`) not equal to `expected` (`expected`).
      
        `actual[8:20]`: 5 7 6  NA  NA  NA  NA  NA  NA  NA and 3 more...
      `expected[8:20]`: 5 7 6 NaN NaN NaN NaN NaN NaN NaN           ...
      Backtrace:
          ▆
       1. └─igraph:::expect_that(...) at test-graph.bfs.R:14:2
       2.   ├─base::suppressWarnings(condition(object)) at tests/testthat/helper.R:24:2
       3.   │ └─base::withCallingHandlers(...)
       4.   └─testthat (local) condition(object)
       5.     └─testthat::expect_equal(x, expected, ..., expected.label = label)
      
      [ FAIL 1 | WARN 0 | SKIP 17 | PASS 3678 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 22.7Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    1.2Mb
        help   1.4Mb
        libs  18.1Mb
    ```

# ijtiff

<details>

* Version: 2.3.0
* GitHub: https://github.com/ropensci/ijtiff
* Source code: https://github.com/cran/ijtiff
* Date/Publication: 2023-01-17 01:00:02 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::cloud_details(, "ijtiff")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure ('test-io.R:124:3'): Float (real-numbered) TIFF I/O works ───────────
      as.vector(in_tif) (`actual`) not equal to as.vector(a2345) (`expected`).
      
        `actual[6:12]`: 42 86 94 NaN 20 4 38
      `expected[6:12]`: 42 86 94  NA 20 4 38
      
      [ FAIL 1 | WARN 56 | SKIP 6 | PASS 93 ]
      Deleting unused snapshots:
      • graphics/r-logo-banana-red.svg
      • graphics/raster-grey-r-logo-blue-channel.svg
      • graphics/raster-grey-r-logo.svg
      • graphics/raster-r-logo-green-channel.svg
      • graphics/reduced-resolution-basic-r-logo.svg
      Error: Test failures
      Execution halted
    ```

# mark

<details>

* Version: 0.5.3
* GitHub: https://github.com/jmbarbone/mark
* Source code: https://github.com/cran/mark
* Date/Publication: 2022-10-16 13:20:02 UTC
* Number of recursive dependencies: 74

Run `revdepcheck::cloud_details(, "mark")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected[5:8]`: "them" ".011" "2020" "NA"
      ── Failure ('test-switch.R:34:3'): switch_in_case() works as expected ──────────
      `res` (`actual`) not equal to `exp` (`expected`).
      
      `actual`:   "a" "a" "NA" "e" "NA" "NA"
      `expected`: "a" "a" NA   "e" NA   NA  
      ── Failure ('test-switch.R:58:3'): switch_in_case() handles evaluations ────────
      `res` (`actual`) not equal to `exp_res` (`expected`).
      
      `actual[2:8]`:   "a" "b" "b" "NA" "d" "d" "d"
      `expected[2:8]`: "a" "b" "b" NA   "d" "d" "d"
      
      [ FAIL 3 | WARN 0 | SKIP 11 | PASS 782 ]
      Error: Test failures
      Execution halted
    ```

# mlr3

<details>

* Version: 0.15.0
* GitHub: https://github.com/mlr-org/mlr3
* Source code: https://github.com/cran/mlr3
* Date/Publication: 2023-03-17 14:20:02 UTC
* Number of recursive dependencies: 55

Run `revdepcheck::cloud_details(, "mlr3")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test_errorhandling.R:72:3'): encapsulation / resample ─────────────
      unname(rr$aggregate(m)) (`actual`) not equal to NA_real_ (`expected`).
      
        `actual`: NaN
      `expected`:  NA
      ── Failure ('test_errorhandling.R:73:3'): encapsulation / resample ─────────────
      rr$score(msr("classif.ce"))$classif.ce (`actual`) not equal to rep(NA_real_, 3L) (`expected`).
      
        `actual`: NaN NaN NaN
      `expected`:  NA  NA  NA
      
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 12219 ]
      Error: Test failures
      Execution halted
    ```

# openxlsx2

<details>

* Version: 0.6
* GitHub: https://github.com/JanMarvin/openxlsx2
* Source code: https://github.com/cran/openxlsx2
* Date/Publication: 2023-04-02 09:30:02 UTC
* Number of recursive dependencies: 107

Run `revdepcheck::cloud_details(, "openxlsx2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      actual vs expected
                         Var3
        actual[1, ]      1.00
      - actual[2, ]        NA
      + expected[2, ]     NaN
        actual[3, ]      1.34
        actual[4, ]        NA
        actual[5, ]      1.56
      
        `actual[[2]][1:5]`: 1  NA 1 NA 2
      `expected[[2]][1:5]`: 1 NaN 1 NA 2
      
      [ FAIL 1 | WARN 0 | SKIP 19 | PASS 1188 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.8Mb
      sub-directories of 1Mb or more:
        doc       1.4Mb
        extdata   1.3Mb
        libs     12.2Mb
    ```

# PKNCA

<details>

* Version: 0.10.1
* GitHub: https://github.com/billdenney/pknca
* Source code: https://github.com/cran/PKNCA
* Date/Publication: 2023-01-11 10:23:28 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::cloud_details(, "PKNCA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("PKNCA")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1649 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-pk.calc.simple.R:254:3'): pk.calc.aucpext ────────────────────
      `v2` (`actual`) not equal to NA_real_ (`expected`).
      
        `actual`: NaN
      `expected`:  NA
      aucinf<=0 gives NA_real_ (not infinity)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1649 ]
      Error: Test failures
      Execution halted
    ```

# plantTracker

<details>

* Version: 1.0.1
* GitHub: https://github.com/aestears/plantTracker
* Source code: https://github.com/cran/plantTracker
* Date/Publication: 2023-01-11 10:20:08 UTC
* Number of recursive dependencies: 86

Run `revdepcheck::cloud_details(, "plantTracker")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ---- Species: Bouteloua rothrockii
      Note: Individuals in year 1927 have a value of 'NA' in the 'survives_tplus1' and 'size_tplus1' columns because 1927 is the last year of sampling in this quadrat.
      Note: The output data.frame from this function is shorter than your input data.frame because demographic data has been aggregated by genet. Because of this, some columns that were present in your input data.frame may no longer be present. If you don't want the output to be aggregated by genet, include the argument 'aggByGenet == FALSE' in your call to trackSpp().
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 480 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-getLambda.R:26:3'): lambda calcs. are correct ────────────────
      lambdas$absolute_basalArea_tplus1/lambdas$absolute_basalArea_t (`actual`) not equal to lambdas$lambda (`expected`).
      
        `actual[13:19]`: 1 7 2 NaN Inf 0 Inf
      `expected[13:19]`: 1 7 2  NA Inf 0 Inf
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 480 ]
      Error: Test failures
      Execution halted
    ```

# REDCapR

<details>

* Version: 1.1.0
* GitHub: https://github.com/OuhscBbmc/REDCapR
* Source code: https://github.com/cran/REDCapR
* Date/Publication: 2022-08-10 16:10:18 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::cloud_details(, "REDCapR")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘BasicREDCapROperations.Rmd’ using rmarkdown
    --- finished re-building ‘BasicREDCapROperations.Rmd’
    
    --- re-building ‘SecurityDatabase.Rmd’ using rmarkdown
    --- finished re-building ‘SecurityDatabase.Rmd’
    
    --- re-building ‘TroubleshootingApiCalls.Rmd’ using rmarkdown
    --- finished re-building ‘TroubleshootingApiCalls.Rmd’
    ...
    Quitting from lines 135-140 (workflow-read.Rmd) 
    Error: processing vignette 'workflow-read.Rmd' failed with diagnostics:
    Timeout was reached: [bbmc.ouhsc.edu] Connection timed out after 10000 milliseconds
    --- failed re-building ‘workflow-read.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘workflow-read.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# s2

<details>

* Version: 1.1.2
* GitHub: https://github.com/r-spatial/s2
* Source code: https://github.com/cran/s2
* Date/Publication: 2023-01-12 13:00:02 UTC
* Number of recursive dependencies: 33

Run `revdepcheck::cloud_details(, "s2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘area.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [4] 1.00000000000000000 | 1.00000000000000000 [4]
      [5] NaN                 - NA                  [5]
      [6] NA                  | NA                  [6]
      ── Failure ('test-s2-lnglat.R:13:3'): s2_lnglat objects can be created from and converted back to R objects ──
      as_s2_lnglat(s2_point(NA, NA, NA)) (`actual`) not identical to s2_lnglat(NaN, NaN) (`expected`).
      
        `actual$x`:  NA
      `expected$x`: NaN
      
        `actual$y`:  NA
      `expected$y`: NaN
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1071 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 66.4Mb
      sub-directories of 1Mb or more:
        libs  65.3Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘sf’
    ```

# ssdtools

<details>

* Version: 1.0.2
* GitHub: https://github.com/bcgov/ssdtools
* Source code: https://github.com/cran/ssdtools
* Date/Publication: 2022-05-14 23:50:02 UTC
* Number of recursive dependencies: 119

Run `revdepcheck::cloud_details(, "ssdtools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • ssd-plot/boron_breaks.png
      • ssd-plot/boron_cens_pred.png
      • ssd-plot/boron_cens_pred_ribbon.png
      • ssd-plot/boron_cens_pred_species.png
      • ssd-plot/boron_pred.png
      • ssd-plot/boron_pred_label.png
      • ssd-plot/boron_pred_ribbon.png
      • ssd-plot/boron_pred_shift_x.png
      • ssd-plot/missing_order.png
      • tidy/tidy.csv
      • weibull/hc_anona.csv
      • weibull/tidy.csv
      • weibull/tidy_anona.csv
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 23.9Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        help   1.0Mb
        libs  21.2Mb
    ```

# tidytable

<details>

* Version: 0.10.0
* GitHub: https://github.com/markfairbanks/tidytable
* Source code: https://github.com/cran/tidytable
* Date/Publication: 2023-03-10 00:10:02 UTC
* Number of recursive dependencies: 54

Run `revdepcheck::cloud_details(, "tidytable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected[2:5]`: 3 4 5 NaN
      ── Failure ('test-lag-lead.R:41:3'): lags. works on a vector ───────────────────
      `vec` (`actual`) not equal to c(NaN, 1, 2, 3, 4) (`expected`).
      
        `actual[1:4]`:  NA 1 2 3
      `expected[1:4]`: NaN 1 2 3
      ── Failure ('test-lag-lead.R:49:3'): leads. works on a vector ──────────────────
      `vec` (`actual`) not equal to c(2, 3, 4, 5, NaN) (`expected`).
      
        `actual[2:5]`: 3 4 5  NA
      `expected[2:5]`: 3 4 5 NaN
      
      [ FAIL 4 | WARN 496 | SKIP 0 | PASS 1449 ]
      Error: Test failures
      Execution halted
    ```

# tinytiger

<details>

* Version: 0.0.4
* GitHub: https://github.com/alarm-redist/tinytiger
* Source code: https://github.com/cran/tinytiger
* Date/Publication: 2022-08-27 13:40:02 UTC
* Number of recursive dependencies: 63

Run `revdepcheck::cloud_details(, "tinytiger")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Error ('test-primary_roads.R:2:3'): tt_primary_roads works ──────────────────
      Error in `value[[3L]](cond)`: HTTP error 503.
      Backtrace:
          ▆
       1. └─tinytiger:::maybe_304(tt_primary_roads()) at test-primary_roads.R:2:2
       2.   └─base::tryCatch(...) at tests/testthat/setup.R:5:2
       3.     └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       4.       └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       5.         └─value[[3L]](cond)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 41 ]
      Error: Test failures
      Execution halted
    ```

# TreeTools

<details>

* Version: 1.9.1
* GitHub: https://github.com/ms609/TreeTools
* Source code: https://github.com/cran/TreeTools
* Date/Publication: 2023-03-20 17:00:03 UTC
* Number of recursive dependencies: 76

Run `revdepcheck::cloud_details(, "TreeTools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
       5.         └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       6.           └─waldo:::compare_vector(x, y, paths = paths, opts = opts)
       7.             └─waldo:::compare_character(...)
       8.               └─waldo:::diff_element(...)
       9.                 └─base::encodeString(x, quote = quote)
      
      [ FAIL 3 | WARN 0 | SKIP 7 | PASS 3278 ]
      Deleting unused snapshots:
      • RoguePlot/rogueplot-trees2.svg
      • Support/labelsplits-nameless.svg
      • Support/labelsplits-names.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.9Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        libs   9.9Mb
    ```

# tukeyGH

<details>

* Version: 1.0.0
* GitHub: https://github.com/f-santi/tukeyGH
* Source code: https://github.com/cran/tukeyGH
* Date/Publication: 2021-04-10 08:10:02 UTC
* Number of recursive dependencies: 36

Run `revdepcheck::cloud_details(, "tukeyGH")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       [1] 0.4537745593639739 - 0.4537745591502967 [1]            
       [2] 2.7684430548860126 - 2.7684430549406991 [2]            
       [3] 0.2838007072037158 - 0.2838007065386969 [3]            
       [4] 2.2397483538342748 - 2.2397483664661157 [4]            
       [5] 0.1501380880303070 - 0.1501380880133348 [5]            
       [6] 0.2036593397698254 - 0.2036593397350738 [6]            
       [7] 0.2342670108469560 - 0.2342670108480107 [7]            
       [8] 0.1339138910602141 - 0.1339139030066023 [8]            
       [9] 0.0908826046920154 - 0.0908826049098003 [9]            
      [10] 0.4150925761231412 - 0.4150925760518311 [10]           
       ... ...                  ...                and 90 more ...
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 62 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rdpack’
      All declared Imports should be used.
    ```

# vctrs

<details>

* Version: 0.6.1
* GitHub: https://github.com/r-lib/vctrs
* Source code: https://github.com/cran/vctrs
* Date/Publication: 2023-03-22 09:20:02 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::cloud_details(, "vctrs")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure ('test-type-bare.R:264:3'): Shaped NA casts work as expected ────────
      `actual` (vec_cast(mat(dbl(NA)), to_mat)) not equal to `expected` (`exp_mat`).
      
      Im(actual) vs Im(expected)
                          [,1]
      - Im(actual)[1, ]      0
      + Im(expected)[1, ]   NA
      Backtrace:
          ▆
       1. └─vctrs:::expect_equal(vec_cast(mat(dbl(NA)), to_mat), exp_mat) at test-type-bare.R:264:2
       2.   └─vctrs:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance) at tests/testthat/helper-vctrs.R:53:2
      
      [ FAIL 3 | WARN 0 | SKIP 307 | PASS 5259 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        libs   3.6Mb
    ```

# vroom

<details>

* Version: 1.6.1
* GitHub: https://github.com/tidyverse/vroom
* Source code: https://github.com/cran/vroom
* Date/Publication: 2023-01-22 21:00:01 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::cloud_details(, "vroom")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • Not working on CI (1)
      • On CRAN (10)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-vroom_write.R:302:3'): vroom_format() does not quote strings that start with the `na` string (#426) ──
      `output_roundtrip` (`actual`) not equal to `names_df` (`expected`).
      
      `actual$x`:   NA NA   "NATHAN" "JONAH"
      `expected$x`: NA "NA" "NATHAN" "JONAH"
      
      [ FAIL 1 | WARN 0 | SKIP 11 | PASS 1083 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 25.9Mb
      sub-directories of 1Mb or more:
        libs  24.4Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

