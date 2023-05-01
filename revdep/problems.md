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
      
      [ FAIL 13 | WARN 9 | SKIP 76 | PASS 7565 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 123.4Mb
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

# baRcodeR

<details>

* Version: 0.1.7
* GitHub: https://github.com/ropensci/baRcodeR
* Source code: https://github.com/cran/baRcodeR
* Date/Publication: 2022-04-01 10:40:02 UTC
* Number of recursive dependencies: 81

Run `revdepcheck::cloud_details(, "baRcodeR")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘Using-baRcodeR.Rmd’ using rmarkdown
    Could not fetch https://raw.githubusercontent.com/yihanwu/baRcodeR/master/man/figures/Flowchart.png
    HttpExceptionRequest Request {
      host                 = "raw.githubusercontent.com"
      port                 = 443
      secure               = True
      requestHeaders       = []
      path                 = "/yihanwu/baRcodeR/master/man/figures/Flowchart.png"
      queryString          = ""
    ...
    --- failed re-building ‘Using-baRcodeR.Rmd’
    
    --- re-building ‘use-addin.Rmd’ using rmarkdown
    --- finished re-building ‘use-addin.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘Using-baRcodeR.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
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

# DLSSM

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/DLSSM
* Date/Publication: 2022-12-13 12:40:08 UTC
* Number of recursive dependencies: 52

Run `revdepcheck::cloud_details(, "DLSSM")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error in `dimnames(x) <- dn`: length of 'dimnames' [2] not equal to array extent
      Backtrace:
          ▆
       1. ├─testthat::expect_error(...) at test-DLSSM.R:19:2
       2. │ └─testthat:::expect_condition_matching(...)
       3. │   └─testthat:::quasi_capture(...)
       4. │     ├─testthat (local) .capture(...)
       5. │     │ └─base::withCallingHandlers(...)
       6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       7. └─DLSSM::Batched(formula2, data2, time = "t", S = 10)
       8.   └─base::`colnames<-`(`*tmp*`, value = c(var_names, time))
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 3 ]
      Error: Test failures
      Execution halted
    ```

# exDE

<details>

* Version: 1.0.0
* GitHub: https://github.com/dd-harp/exDE
* Source code: https://github.com/cran/exDE
* Date/Publication: 2022-11-18 10:00:04 UTC
* Number of recursive dependencies: 68

Run `revdepcheck::cloud_details(, "exDE")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected`: 238.37684957 22.07192311
      ── Failure ('test-equilibrium-RM-basic.R:121:3'): test equilibrium with RM adults (ODE), basic competition ──
      as.vector(out[2, params$Y_ix + 1]) (`actual`) not equal to as.vector(Y) (`expected`).
      
        `actual`: 71.0194405522 11.5953354469
      `expected`: 71.0194405527 11.5953389394
      ── Failure ('test-equilibrium-RM-basic.R:122:3'): test equilibrium with RM adults (ODE), basic competition ──
      as.vector(out[2, params$Z_ix + 1]) (`actual`) not equal to as.vector(Z) (`expected`).
      
        `actual`: 21.6871731 5.8128969
      `expected`: 21.6871733 5.8128979
      
      [ FAIL 5 | WARN 2 | SKIP 0 | PASS 46 ]
      Error: Test failures
      Execution halted
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

# gh

<details>

* Version: 1.4.0
* GitHub: https://github.com/r-lib/gh
* Source code: https://github.com/cran/gh
* Date/Publication: 2023-02-22 20:20:02 UTC
* Number of recursive dependencies: 67

Run `revdepcheck::cloud_details(, "gh")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error in `gh("GET /repos/{owner}/{repo}/contents/{path}", owner = "r-lib", 
          repo = "gh", path = "LICENSE", ref = "v1.2.0", ...)`: GitHub API error (403): API rate limit exceeded for 50.16.143.239. (But here's the good news: Authenticated requests get a higher rate limit. Check out the documentation for more details.)
      i Read more at <https://docs.github.com/rest/overview/resources-in-the-rest-api#rate-limiting>
      Backtrace:
          ▆
       1. └─gh (local) get_license() at test-print.R:13:2
       2.   └─gh::gh(...) at test-print.R:3:4
       3.     └─gh:::gh_make_request(req)
       4.       └─gh:::gh_error(resp, error_call = error_call)
       5.         └─cli::cli_abort(...)
       6.           └─rlang::abort(...)
      
      [ FAIL 3 | WARN 0 | SKIP 16 | PASS 116 ]
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

# ispdata

<details>

* Version: 1.1
* GitHub: NA
* Source code: https://github.com/cran/ispdata
* Date/Publication: 2023-02-10 11:50:02 UTC
* Number of recursive dependencies: 66

Run `revdepcheck::cloud_details(, "ispdata")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
          .Internal(readBin(con, what, n, size, signed, swap))
      })(structure(4L, class = c("url", "connection"), conn_id = <pointer: 0x1d7>), 
          raw(0), 131071L)`: cannot read from connection
      Backtrace:
          ▆
       1. ├─ispdata::monthly_stats(by = "cisp") at test-monthly_stats.R:3:0
       2. │ ├─janitor::clean_names(...)
       3. │ └─readr::read_csv2(...)
       4. │   └─vroom::vroom(...)
       5. │     └─vroom:::vroom_(...)
       6. └─base (local) `<fn>`(`<url>`, `<raw>`, 131071L)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 64 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.3Mb
      sub-directories of 1Mb or more:
        data   5.1Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 87 marked UTF-8 strings
    ```

# lightgbm

<details>

* Version: 3.3.5
* GitHub: https://github.com/Microsoft/LightGBM
* Source code: https://github.com/cran/lightgbm
* Date/Publication: 2023-01-16 19:00:07 UTC
* Number of recursive dependencies: 34

Run `revdepcheck::cloud_details(, "lightgbm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      71. Feature penalties work properly ('test_parameters.R:14:3') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      72. Feature penalties work properly ('test_parameters.R:14:3') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      73. Feature penalties work properly ('test_parameters.R:14:3') - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      ══ Failed ══════════════════════════════════════════════════════════════════════
      ── 1. Failure ('test_lgb.Booster.R:474:7'): Booster$eval() should work on a Data
      `eval_in_mem` not identical to `eval_from_file`.
      Objects equal but not identical
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 82.4Mb
      sub-directories of 1Mb or more:
        libs  81.8Mb
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

# OlinkAnalyze

<details>

* Version: 3.4.0
* GitHub: NA
* Source code: https://github.com/cran/OlinkAnalyze
* Date/Publication: 2023-04-26 20:22:29 UTC
* Number of recursive dependencies: 209

Run `revdepcheck::cloud_details(, "OlinkAnalyze")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • pca_plot/pca-basic-plotting.svg
      • pca_plot/pca-plot-color-by-treatment.svg
      • pca_plot/pca-plot-drop-assays-and-drop-samples.svg
      • pca_plot/pca-plot-internal-2.svg
      • pca_plot/pca-plot-internal-3.svg
      • pca_plot/pca-plot-internal-4.svg
      • pca_plot/pca-plot-internal.svg
      • pca_plot/pca-plot-label-outliers.svg
      • pca_plot/pca-plot-not-label-outliers.svg
      • pca_plot/pca-plot-panel-1.svg
      • pca_plot/pca-plot-panel-2.svg
      • pca_plot/pca-plot-with-loadings.svg
      • pca_plot/pca-plot.svg
      Error: Test failures
      Execution halted
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

# s2

<details>

* Version: 1.1.3
* GitHub: https://github.com/r-spatial/s2
* Source code: https://github.com/cran/s2
* Date/Publication: 2023-04-27 11:30:02 UTC
* Number of recursive dependencies: 35

Run `revdepcheck::cloud_details(, "s2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘area.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-s2-accessors.R:164:3'): s2_project() and s2_project_normalized() work ──
      s2_project_normalized(...) (`actual`) not equal to c(0, 0.25, 0.75, 1, NA_real_, NA_real_) (`expected`).
      
          actual              | expected               
      [1] 0.00000000000000000 | 0.00000000000000000 [1]
      [2] 0.25000000000000006 - 0.25000000000000000 [2]
      [3] 0.75000000000000000 | 0.75000000000000000 [3]
      [4] 1.00000000000000000 | 1.00000000000000000 [4]
      [5] NaN                 - NA                  [5]
      [6] NA                  | NA                  [6]
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1074 ]
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

# splot

<details>

* Version: 0.5.3
* GitHub: https://github.com/miserman/splot
* Source code: https://github.com/cran/splot
* Date/Publication: 2023-03-06 19:10:02 UTC
* Number of recursive dependencies: 50

Run `revdepcheck::cloud_details(, "splot")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      total time (seconds) 0.2020 2.0020
      mean time per run    0.0101 0.1001
      times the minimum    1.0000 9.9109
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 55 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure ('test-splot.color.R:23:3'): scale works ────────────────────────────
      all(initial == splot.color(1:5, shuffle = TRUE)) is not FALSE
      
      `actual`:   TRUE 
      `expected`: FALSE
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 55 ]
      Error: Test failures
      Execution halted
    ```

# ssdtools

<details>

* Version: 1.0.3
* GitHub: https://github.com/bcgov/ssdtools
* Source code: https://github.com/cran/ssdtools
* Date/Publication: 2023-04-12 09:20:02 UTC
* Number of recursive dependencies: 119

Run `revdepcheck::cloud_details(, "ssdtools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • ssd-plot/boron_cens_pred_ribbon.png
      • ssd-plot/boron_cens_pred_species.png
      • ssd-plot/boron_color.png
      • ssd-plot/boron_pred.png
      • ssd-plot/boron_pred_label.png
      • ssd-plot/boron_pred_ribbon.png
      • ssd-plot/boron_pred_shift_x.png
      • ssd-plot/boron_shape.png
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

