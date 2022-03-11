# httr2

<details>

* Version: 0.1.1
* GitHub: https://github.com/r-lib/httr2
* Source code: https://github.com/cran/httr2
* Date/Publication: 2021-09-28 16:10:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "httr2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • Can't find envvar HTTR2_KEY (2)
      • On CRAN (31)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-resp-headers.R:25:3): can parse date header ───────────────────
      resp_date(resp) (`actual`) not equal to local_time("2016-07-18 16:06:06") (`expected`).
      
      `actual`:   "2016-07-18 16:06:00"
      `expected`: "2016-07-18 16:06:06"
      
      [ FAIL 1 | WARN 0 | SKIP 33 | PASS 277 ]
      Error: Test failures
      Execution halted
    ```

# insight

<details>

* Version: 0.16.0
* GitHub: https://github.com/easystats/insight
* Source code: https://github.com/cran/insight
* Date/Publication: 2022-02-17 00:50:06 UTC
* Number of recursive dependencies: 311

Run `cloud_details(, "insight")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • isFALSE(run_stan) is TRUE (5)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-htest.R:61:5): get_data.freedman ──────────────────────────────
      get_data(m) (`actual`) not equal to data.frame(...) (`expected`).
      
      `actual[[2]]`:   "A" "B" "A" "B" "A" "B"
      `expected[[2]]`: "1" "2" "1" "2" "1" "2"
      
      `actual[[3]]`:   "L" "L" "M" "M" "H" "H"
      `expected[[3]]`: "1" "1" "2" "2" "3" "3"
      
      [ FAIL 1 | WARN 7 | SKIP 10 | PASS 2166 ]
      Error: Test failures
      Execution halted
    ```

# lightgbm

<details>

* Version: 3.3.2
* GitHub: https://github.com/Microsoft/LightGBM
* Source code: https://github.com/cran/lightgbm
* Date/Publication: 2022-01-14 13:12:42 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "lightgbm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      71. Feature penalties work properly (test_parameters.R:14:3) - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      72. Feature penalties work properly (test_parameters.R:14:3) - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      73. Feature penalties work properly (test_parameters.R:14:3) - lgb.train: Found the following passed through '...': num_leaves, learning_rate, objective, feature_penalty, metric. These will be used, but in future releases of lightgbm, this warning will become an error. Add these to 'params' instead. See ?lgb.train for documentation on how to call this function.
      
      ══ Failed ══════════════════════════════════════════════════════════════════════
      ── 1. Failure (test_lgb.Booster.R:474:7): Booster$eval() should work on a Datase
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

# lvmisc

<details>

* Version: 0.1.1
* GitHub: https://github.com/verasls/lvmisc
* Source code: https://github.com/cran/lvmisc
* Date/Publication: 2021-04-05 15:20:02 UTC
* Number of recursive dependencies: 119

Run `cloud_details(, "lvmisc")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-percent_change.R:52:3): percent_change() works ────────────────
      `out` (`actual`) not equal to `expected` (`expected`).
      
          actual               | expected    
      [1] "0%"                 | "0%"     [1]
      [2] "0.499999999999989%" - "0.5%"   [2]
      [3] "5.00000000000001%"  - "5%"     [3]
      [4] "50%"                | "50%"    [4]
      [5] "100%"               | "100%"   [5]
      [6] "-0.5%"              | "-0.5%"  [6]
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 239 ]
      Error: Test failures
      Execution halted
    ```

# mark

<details>

* Version: 0.5.0
* GitHub: https://github.com/jmbarbone/mark
* Source code: https://github.com/cran/mark
* Date/Publication: 2022-03-09 09:20:08 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "mark")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
           actual             | expected         
       [1] "  0.000000 weeks" - "  0.000000" [1] 
       [2] " -1.428571 weeks" - " -1.428571" [2] 
       [3] " -2.857143 weeks" - " -2.857143" [3] 
       [4] " -4.285714 weeks" - " -4.285714" [4] 
       [5] " -5.714286 weeks" - " -5.714286" [5] 
       [6] " -7.142857 weeks" - " -7.142857" [6] 
       [7] " -8.571429 weeks" - " -8.571429" [7] 
       [8] "-10.000000 weeks" - "-10.000000" [8] 
       [9] "-11.428571 weeks" - "-11.428571" [9] 
      [10] "-12.857143 weeks" - "-12.857143" [10]
      
      [ FAIL 5 | WARN 0 | SKIP 9 | PASS 741 ]
      Error: Test failures
      Execution halted
    ```

# partition

<details>

* Version: 0.1.4
* GitHub: https://github.com/USCbiostats/partition
* Source code: https://github.com/cran/partition
* Date/Publication: 2021-10-05 04:20:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "partition")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       10.       └─testthat:::waldo_compare(...)
       11.         └─waldo::compare(x, y, ..., x_arg = x_arg, y_arg = y_arg)
       12.           └─waldo:::compare_structure(x, y, paths = c(x_arg, y_arg), opts = opts)
       13.             └─waldo:::compare_by_name(x, y, paths, opts)
       14.               └─waldo:::compare_structure(...)
       15.                 └─waldo:::compare_by_fun(x, y, paths, opts)
       16.                   └─waldo:::compare_structure(...)
       17.                     └─waldo:::compare_structure(x_fields, y_fields, paths, opts = opts)
       18.                       └─waldo:::compare_by_name(x, y, paths, opts)
       19.                         └─waldo:::compare_structure(...)
       20.                           └─rlang::abort(glue("{paths[[1]]}: unsupported type {typeof(x)}"))
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 161 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs   8.6Mb
    ```

# sdcLog

<details>

* Version: 0.4.0
* GitHub: https://github.com/matthiasgomolka/sdcLog
* Source code: https://github.com/cran/sdcLog
* Date/Publication: 2021-10-08 09:30:02 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "sdcLog")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(sdcLog)
      > 
      > test_check("sdcLog")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 175 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-sdc_model.R:138:3): dummies are handled correctly ─────────────
      sdc_model(sdc_model_DT, model_3, "id") (`actual`) not equal to `ref_3` (`expected`).
      
      `actual[[4]][[3]][[1]]`:   "S1" "S2"
      `expected[[4]][[3]][[1]]`: "M1" "M2"
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 175 ]
      Error: Test failures
      Execution halted
    ```

# supernova

<details>

* Version: 2.5.1
* GitHub: https://github.com/UCLATALL/supernova
* Source code: https://github.com/cran/supernova
* Date/Publication: 2022-01-27 17:50:02 UTC
* Number of recursive dependencies: 97

Run `cloud_details(, "supernova")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
          ▆
       1. ├─... %>% expect_s3_class("supernova_number") at test-number.R:63:2
       2. ├─testthat::expect_s3_class(., "supernova_number")
       3. │ └─testthat::quasi_label(enquo(object), arg = "object")
       4. │   └─rlang::eval_bare(expr, quo_get_env(quo))
       5. └─testthat::expect_equal(number(1)^number(1), 1^1, ignore_attr = TRUE)
      
      [ FAIL 8 | WARN 0 | SKIP 13 | PASS 258 ]
      Deleting unused snapshots:
      • pairwise/bonferroni-one-variable.svg
      • pairwise/multiple-plots-raceethnic.svg
      • pairwise/multiple-plots-sex-raceethnic.svg
      • pairwise/t-test-one-variable.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

# terrainr

<details>

* Version: 0.6.1
* GitHub: https://github.com/ropensci/terrainr
* Source code: https://github.com/cran/terrainr
* Date/Publication: 2022-02-10 16:00:02 UTC
* Number of recursive dependencies: 94

Run `cloud_details(, "terrainr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 18 | PASS 35 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (18)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-add_bbox_buffer.R:71:3): set_bbox_side_length works within 1% ──
      `rstr_bbox` (`actual`) not equal to sf::st_bbox(add_bbox_buffer(tmp_raster, sqrt((8000^2) * 2)/2)) (`expected`).
      
      `actual`:   "((-74.06166,44.01405),(-73.96156,44.08599))"
      `expected`: "((-74.06177,44.01397),(-73.96145,44.08607))"
      
      [ FAIL 1 | WARN 0 | SKIP 18 | PASS 35 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rgdal’
      All declared Imports should be used.
    ```

# TreeTools

<details>

* Version: 1.6.0
* GitHub: https://github.com/ms609/TreeTools
* Source code: https://github.com/cran/TreeTools
* Date/Publication: 2022-01-12 14:22:42 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "TreeTools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • On CRAN (5)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-tree_shape.R:55:3): Rooted tree shapes calculated ─────────────
      NRootedShapes(55) (`actual`) not equal to RootedTreeShape(BalancedTree(55)) (`expected`).
      
      `actual`:   "4210157426126929793"
      `expected`: "4210157426126929792"
      
      [ FAIL 1 | WARN 0 | SKIP 5 | PASS 2568 ]
      Deleting unused snapshots:
      • RoguePlot/rogueplot-trees2.svg
      • Support/labelsplits-names.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.8Mb
      sub-directories of 1Mb or more:
        libs   6.8Mb
    ```

