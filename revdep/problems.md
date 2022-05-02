# academictwitteR

<details>

* Version: 0.3.1
* GitHub: https://github.com/cjbarrie/academictwitteR
* Source code: https://github.com/cran/academictwitteR
* Date/Publication: 2022-02-16 15:20:09 UTC
* Number of recursive dependencies: 87

Run `cloud_details(, "academictwitteR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$gear` is an integer vector (4, 4, 4, 3, 3, ...)
      `expected$gear` is a double vector (4, 4, 4, 3, 3, ...)
      
      `actual$carb` is an integer vector (4, 4, 1, 1, 2, ...)
      `expected$carb` is a double vector (4, 4, 1, 1, 2, ...)
      ── Failure (test-hydrate.R:7:3): Corner cases ──────────────────────────────────
      nrow(res) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 3 | WARN 0 | SKIP 77 | PASS 59 ]
      Error: Test failures
      Execution halted
    ```

# ACWR

<details>

* Version: 0.1.0
* GitHub: https://github.com/JorgeDelro/ACWR
* Source code: https://github.com/cran/ACWR
* Date/Publication: 2022-03-01 08:10:06 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "ACWR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(ACWR)
      > 
      > test_check("ACWR")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 21 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-ACWR.R:35:3): output of ACWR function ─────────────────────────
      ncol(result_ACWR) (`actual`) not equal to 14 (`expected`).
      
      `actual` is an integer vector (14)
      `expected` is a double vector (14)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 21 ]
      Error: Test failures
      Execution halted
    ```

# adace

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/adace
* Date/Publication: 2022-03-22 17:00:02 UTC
* Number of recursive dependencies: 39

Run `cloud_details(, "adace")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (6)
      ── Failure (test-adace_func.R:211:3): adace main function ──────────────────────
      length(fit3) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      ── Failure (test-adace_func.R:212:3): adace main function ──────────────────────
      length(fit4) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      
      [ FAIL 19 | WARN 0 | SKIP 0 | PASS 12 ]
      Error: Test failures
      Execution halted
    ```

# adea

<details>

* Version: 1.3.1
* GitHub: NA
* Source code: https://github.com/cran/adea
* Date/Publication: 2022-02-10 09:50:02 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "adea")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (6)
      ── Failure (testdatafile.R:42:5): data set tokyo_libraries ─────────────────────
      nrow(tokyo_libraries) (`actual`) not equal to 23 (`expected`).
      
      `actual` is an integer vector (23)
      `expected` is a double vector (23)
      ── Failure (testdatafile.R:43:5): data set tokyo_libraries ─────────────────────
      ncol(tokyo_libraries) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      
      [ FAIL 12 | WARN 0 | SKIP 1 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

# agvgd

<details>

* Version: 0.1.1
* GitHub: https://github.com/maialab/agvgd
* Source code: https://github.com/cran/agvgd
* Date/Publication: 2022-02-03 03:10:02 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "agvgd")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (0)
      ── Failure (test-poi_to_res.R:8:3): poi_to_res() ───────────────────────────────
      poi_to_res(alignment = m, poi = 1:3) (`actual`) not equal to `expected` (`expected`).
      
      `actual` is an integer vector (1, NA, 2)
      `expected` is a double vector (1, NA, 2)
      ── Failure (test-res_to_poi.R:8:3): res_to_poi() ───────────────────────────────
      res_to_poi(alignment = m, res = 1:3) (`actual`) not equal to `expected` (`expected`).
      
      `actual` is an integer vector (1, 3, 4)
      `expected` is a double vector (1, 3, 4)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 116 ]
      Error: Test failures
      Execution halted
    ```

# amp

<details>

* Version: 1.0.0
* GitHub: https://github.com/adam-s-elder/amp
* Source code: https://github.com/cran/amp
* Date/Publication: 2022-04-06 07:32:30 UTC
* Number of recursive dependencies: 87

Run `cloud_details(, "amp")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-test_output.R:8:3): Test returns expected value ───────────────
      length(tst_res$chosen_norm) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test-test_output.R:9:3): Test returns expected value ───────────────
      length(tst_res$test_st_eld) (`actual`) not equal to 20 (`expected`).
      
      `actual` is an integer vector (20)
      `expected` is a double vector (20)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 4 ]
      Error: Test failures
      Execution halted
    ```

# ampir

<details>

* Version: 1.1.0
* GitHub: https://github.com/Legana/ampir
* Source code: https://github.com/cran/ampir
* Date/Publication: 2021-06-29 07:10:05 UTC
* Number of recursive dependencies: 103

Run `cloud_details(, "ampir")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3, 3)
      ── Failure (test-predict-amps.R:179:3): predict_amps works when sequences contain a stop codon at the end ──
      dim(result) (`actual`) not equal to c(2, 3) (`expected`).
      
      `actual` is an integer vector (2, 3)
      `expected` is a double vector (2, 3)
      ── Failure (test-predict-amps.R:192:3): predict_amps works with multiple cores ──
      dim(result_1core) (`actual`) not equal to c(16, 3) (`expected`).
      
      `actual` is an integer vector (16, 3)
      `expected` is a double vector (16, 3)
      
      [ FAIL 28 | WARN 0 | SKIP 0 | PASS 55 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘kernlab’
      All declared Imports should be used.
    ```

# AMPLE

<details>

* Version: 1.0.0
* GitHub: https://github.com/PacificCommunity/ofp-sam-amped
* Source code: https://github.com/cran/AMPLE
* Date/Publication: 2021-11-10 14:00:05 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "AMPLE")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7, 33)
      ── Failure (test-Stock_class.R:14:5): intialization ────────────────────────────
      dim(stock[[f]]) (`actual`) not equal to c(niters, nyears) (`expected`).
      
      `actual` is an integer vector (7, 33)
      `expected` is a double vector (7, 33)
      ── Failure (test-Stock_class.R:14:5): intialization ────────────────────────────
      dim(stock[[f]]) (`actual`) not equal to c(niters, nyears) (`expected`).
      
      `actual` is an integer vector (7, 33)
      `expected` is a double vector (7, 33)
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 47 ]
      Error: Test failures
      Execution halted
    ```

# anthroplus

<details>

* Version: 0.9.0
* GitHub: NA
* Source code: https://github.com/cran/anthroplus
* Date/Publication: 2021-11-24 18:50:09 UTC
* Number of recursive dependencies: 41

Run `cloud_details(, "anthroplus")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0, 0, 0, 0, 0, ...)
      ── Failure (test-zscores.R:20:3): zscore references match from previous implementation ──
      result$fbfa (`actual`) not equal to data$fbfa (`expected`).
      
      `actual` is an integer vector (0, 0, 0, 0, 0, ...)
      `expected` is a double vector (0, 0, 0, 0, 0, ...)
      ── Failure (test-zscores.R:22:3): zscore references match from previous implementation ──
      result$fwfa (`actual`) not equal to data$fwfa (`expected`).
      
      `actual` is an integer vector (NA, NA, NA, NA, NA, ...)
      `expected` is a double vector (NA, NA, NA, NA, NA, ...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 80 ]
      Error: Test failures
      Execution halted
    ```

# archetyper

<details>

* Version: 0.1.0
* GitHub: https://github.com/mkorvink/archetyper
* Source code: https://github.com/cran/archetyper
* Date/Publication: 2021-03-17 14:00:05 UTC
* Number of recursive dependencies: 166

Run `cloud_details(, "archetyper")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (12)
      ── Failure (test-generate.R:83:3): test_project_creation_no_api ────────────────
      length(file_vect) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      ── Failure (test-generate.R:85:3): test_project_creation_no_api ────────────────
      length(r_file_vect) (`actual`) not equal to 11 (`expected`).
      
      `actual` is an integer vector (11)
      `expected` is a double vector (11)
      
      [ FAIL 10 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘bannerCommenter’ ‘config’ ‘feather’ ‘here’ ‘knitr’ ‘log4r’ ‘ps’
      ‘rmarkdown’ ‘skimr’ ‘snakecase’ ‘testthat’ ‘tidyverse’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# arkhe

<details>

* Version: 0.4.0
* GitHub: https://github.com/tesselle/arkhe
* Source code: https://github.com/cran/arkhe
* Date/Publication: 2021-09-18 14:20:02 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "arkhe")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-utilities.R:12:3): Count ──────────────────────────────────────
      `k` (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-utilities.R:21:3): Function composition ───────────────────────
      (sum %o% range)(1:5) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      
      [ FAIL 20 | WARN 0 | SKIP 1 | PASS 359 ]
      Error: Test failures
      Execution halted
    ```

# arrow

<details>

* Version: 7.0.0
* GitHub: https://github.com/apache/arrow
* Source code: https://github.com/cran/arrow
* Date/Publication: 2022-02-10 22:30:02 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "arrow")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─arrow:::expect_equal(sink$tell(), 0) at test-record-batch-reader.R:28:2
       2.   └─testthat::expect_equal(...) at tests/testthat/helper-expectation.R:42:4
      ── Failure (test-record-batch-reader.R:74:3): RecordBatchFileReader / Writer ───
      `object` (`actual`) not equal to `expected` (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      Backtrace:
          ▆
       1. └─arrow:::expect_equal(reader$num_record_batches, 3) at test-record-batch-reader.R:74:2
       2.   └─testthat::expect_equal(...) at tests/testthat/helper-expectation.R:42:4
      
      [ FAIL 110 | WARN 1 | SKIP 53 | PASS 6445 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 83.4Mb
      sub-directories of 1Mb or more:
        R      3.8Mb
        libs  78.4Mb
    ```

# aRtsy

<details>

* Version: 0.1.7
* GitHub: https://github.com/koenderks/aRtsy
* Source code: https://github.com/cran/aRtsy
* Date/Publication: 2022-04-10 21:32:37 UTC
* Number of recursive dependencies: 55

Run `cloud_details(, "aRtsy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(aRtsy)
      > 
      > test_check("aRtsy")
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 27 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-all-paintings.R:19:3): colorPalette() ─────────────────────────
      length(palette) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 1 | WARN 2 | SKIP 0 | PASS 27 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.2Mb
      sub-directories of 1Mb or more:
        libs  10.8Mb
    ```

# AssetAllocation

<details>

* Version: 1.0.0
* GitHub: https://github.com/rubetron/AssetAllocation
* Source code: https://github.com/cran/AssetAllocation
* Date/Publication: 2022-04-25 16:20:13 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "AssetAllocation")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(AssetAllocation)
      > 
      > test_check("AssetAllocation")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 10 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-check_output.R:12:3): daily_account_calc() returns a vector with the correct size ──
      length(output) (`actual`) not equal to 22 (`expected`).
      
      `actual` is an integer vector (22)
      `expected` is a double vector (22)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

# autothresholdr

<details>

* Version: 1.4.0
* GitHub: https://github.com/rorynolan/autothresholdr
* Source code: https://github.com/cran/autothresholdr
* Date/Publication: 2022-01-04 12:10:13 UTC
* Number of recursive dependencies: 100

Run `cloud_details(, "autothresholdr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (13)
      ── Failure (test-thresh.R:33:3): auto_thresh works ─────────────────────────────
      auto_thresh(img, "otsu", ignore_black = TRUE)[[1]] (`actual`) not equal to 22 (`expected`).
      
      `actual` is an integer vector (22)
      `expected` is a double vector (22)
      ── Failure (test-thresh.R:80:3): auto_thresh works ─────────────────────────────
      auto_thresh(img, "otsu", ignore_white = TRUE)[[1]] (`actual`) not equal to 13 (`expected`).
      
      `actual` is an integer vector (13)
      `expected` is a double vector (13)
      
      [ FAIL 16 | WARN 0 | SKIP 0 | PASS 65 ]
      Error: Test failures
      Execution halted
    ```

# avidaR

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/avidaR
* Date/Publication: 2022-04-08 09:12:32 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "avidaR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test_get_transcriptome_seq_from_transcriptome_id.R:31:3): get_transcriptome_seq_from_transcriptome_id ──
      nchar(found3$transcriptome_seq[1]) (`actual`) not equal to 1490 (`expected`).
      
      `actual` is an integer vector (1490)
      `expected` is a double vector (1490)
      ── Failure (test_set_access_options.R:12:3): set_access_options ────────────────
      triplestore$access_options()$protocol (`actual`) not equal to 12 (`expected`).
      
      `actual` is an integer vector (12)
      `expected` is a double vector (12)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 209 ]
      Error: Test failures
      Execution halted
    ```

# babelgene

<details>

* Version: 22.3
* GitHub: https://github.com/igordot/babelgene
* Source code: https://github.com/cran/babelgene
* Date/Publication: 2022-03-30 16:30:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "babelgene")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (19)
      ── Failure (test-functions.R:130:3): species basics ────────────────────────────
      nrow(spm) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-functions.R:133:3): species basics ────────────────────────────
      nrow(spr) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 18 | WARN 0 | SKIP 0 | PASS 43 ]
      Error: Test failures
      Execution halted
    ```

# babsim.hospital

<details>

* Version: 11.8.4
* GitHub: NA
* Source code: https://github.com/cran/babsim.hospital
* Date/Publication: 2021-11-10 23:10:06 UTC
* Number of recursive dependencies: 181

Run `cloud_details(, "babsim.hospital")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test.trajectories.R:19:3): scenario from ex2 in the babsim.hospital-vignette: everybody is sent home, no beds required ──
      nrow(resources) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test.spot.R:27:3): check that babsim function works with spot ──────
      resTest$count (`actual`) not equal to `n` (`expected`).
      
      `actual` is an integer vector (30)
      `expected` is a double vector (30)
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 156 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 64209 marked UTF-8 strings
    ```

# bambooHR

<details>

* Version: 0.1.0
* GitHub: https://github.com/MangoTheCat/bambooHR
* Source code: https://github.com/cran/bambooHR
* Date/Publication: 2022-03-15 18:40:06 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "bambooHR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-get_time_off_types.R:9:5): get time off types works ───────────
      nrow(types) (`actual`) not equal to 17 (`expected`).
      
      `actual` is an integer vector (17)
      `expected` is a double vector (17)
      ── Failure (test-get_whos_out.R:9:5): get who's out works ──────────────────────
      nrow(wo) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 22 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘fs’ ‘testthat’
      All declared Imports should be used.
    ```

# basecamb

<details>

* Version: 1.1.0
* GitHub: https://github.com/codeblue-team/basecamb
* Source code: https://github.com/cran/basecamb
* Date/Publication: 2022-02-06 21:00:05 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "basecamb")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5, 5, 5, 5, 5)
      ── Failure (test_filter_nth_entry.R:13:3): filter_nth_entry filters appointments correctly ──
      filter_nth_entry(data, "ID", "encounter", reverse_order = TRUE)[["value"]] (`actual`) not equal to rep(6, 5) (`expected`).
      
      `actual` is an integer vector (6, 6, 6, 6, 6)
      `expected` is a double vector (6, 6, 6, 6, 6)
      ── Failure (test_filter_nth_entry.R:14:3): filter_nth_entry filters appointments correctly ──
      filter_nth_entry(data, "ID", "date")[["value"]] (`actual`) not equal to rep(6, 5) (`expected`).
      
      `actual` is an integer vector (6, 6, 6, 6, 6)
      `expected` is a double vector (6, 6, 6, 6, 6)
      
      [ FAIL 10 | WARN 0 | SKIP 0 | PASS 62 ]
      Error: Test failures
      Execution halted
    ```

# baskexact

<details>

* Version: 0.1.0
* GitHub: https://github.com/lbau7/baskexact
* Source code: https://github.com/cran/baskexact
* Date/Publication: 2021-09-15 18:40:05 UTC
* Number of recursive dependencies: 45

Run `cloud_details(, "baskexact")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(baskexact)
      > 
      > test_check("baskexact")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 106 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-helper.R:6:3): get_crit works ─────────────────────────────────
      `crit` (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 106 ]
      Error: Test failures
      Execution halted
    ```

# bayesnec

<details>

* Version: 2.0.2.4
* GitHub: https://github.com/open-aims/bayesnec
* Source code: https://github.com/cran/bayesnec
* Date/Publication: 2022-04-21 11:20:06 UTC
* Number of recursive dependencies: 132

Run `cloud_details(, "bayesnec")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-nsec.R:60:3): works for bayesmanecfit ─────────────────────────
      length(nsec1) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-nsec.R:72:3): posterior passes correctly ──────────────────────
      length(nsec3) (`actual`) not equal to 100 (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      
      [ FAIL 33 | WARN 0 | SKIP 0 | PASS 373 ]
      Error: Test failures
      Execution halted
    ```

# bayestestR

<details>

* Version: 0.12.1
* GitHub: https://github.com/easystats/bayestestR
* Source code: https://github.com/cran/bayestestR
* Date/Publication: 2022-05-02 07:40:03 UTC
* Number of recursive dependencies: 204

Run `cloud_details(, "bayestestR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-spi.R:8:5): spi ───────────────────────────────────────────────
      nchar(capture.output(print(spi(distribution_normal(1000))))) (`actual`) not equal to 22 (`expected`).
      
      `actual` is an integer vector (22)
      `expected` is a double vector (22)
      ── Failure (test-spi.R:9:5): spi ───────────────────────────────────────────────
      length(...) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 59 | WARN 0 | SKIP 13 | PASS 149 ]
      Error: Test failures
      Execution halted
    ```

# bbotk

<details>

* Version: 0.5.2
* GitHub: https://github.com/mlr-org/bbotk
* Source code: https://github.com/cran/bbotk
* Date/Publication: 2022-04-04 13:10:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "bbotk")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test_TerminatorPerfReached.R:7:3): TerminatorPerfReached works ─────
      sum(a$data$y < 0.2) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_TerminatorStagnation.R:8:3): TerminatorStagnation works ───────
      a$n_evals (`actual`) not equal to 11 (`expected`).
      
      `actual` is an integer vector (11)
      `expected` is a double vector (11)
      
      [ FAIL 33 | WARN 0 | SKIP 1 | PASS 721 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘mlr3’
    ```

# beyondWhittle

<details>

* Version: 1.1.3
* GitHub: NA
* Source code: https://github.com/cran/beyondWhittle
* Date/Publication: 2022-04-04 11:00:02 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "beyondWhittle")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1900)
      ── Failure (testGibbsNP.R:7:3): gibbs_np runs on sample white noise data ───────
      length(mcmc$lpost) (`actual`) not equal to 1900 (`expected`).
      
      `actual` is an integer vector (1900)
      `expected` is a double vector (1900)
      ── Failure (testGibbsNPC.R:7:3): gibbs_npc runs on sample white noise data ─────
      length(mcmc$lpost) (`actual`) not equal to 1900 (`expected`).
      
      `actual` is an integer vector (1900)
      `expected` is a double vector (1900)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 17 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        libs   9.9Mb
    ```

# bignum

<details>

* Version: 0.3.0
* GitHub: https://github.com/davidchall/bignum
* Source code: https://github.com/cran/bignum
* Date/Publication: 2021-10-15 04:50:02 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "bignum")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─bignum check_math(x, cummax) at test-vctrs-math.R:93:2
       2.   └─testthat::expect_equal(...) at test-vctrs-math.R:76:4
      ── Failure (test-vctrs-math.R:94:3): math returning same type works ────────────
      as.integer(fun(biginteger(x), ...)) (`actual`) not equal to suppressWarnings(fun(x, ...)) (`expected`).
      
      `actual` is an integer vector (2, 2, NA, NA)
      `expected` is a double vector (2, 2, NA, NA)
      Backtrace:
          ▆
       1. └─bignum check_math(x, cummin) at test-vctrs-math.R:94:2
       2.   └─testthat::expect_equal(...) at test-vctrs-math.R:76:4
      
      [ FAIL 6 | WARN 0 | SKIP 32 | PASS 485 ]
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

# biodosetools

<details>

* Version: 3.6.0
* GitHub: https://github.com/biodosetools-team/biodosetools
* Source code: https://github.com/cran/biodosetools
* Date/Publication: 2022-01-27 08:20:05 UTC
* Number of recursive dependencies: 128

Run `cloud_details(, "biodosetools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (9)
      ── Failure (test-translocations.R:127:3): fit with aggregated count data works ──
      ncol(trans_count_data) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-translocations.R:128:3): fit with aggregated count data works ──
      trans_count_data$N (`actual`) not equal to c(...) (`expected`).
      
      `actual` is a double vector (4356, 3324, 3069, 3072, 2111, ...)
      `expected` is an integer vector (4356, 3324, 3069, 3072, 2111, ...)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 168 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘pkgload’
      All declared Imports should be used.
    ```

# biometryassist

<details>

* Version: 1.1.0
* GitHub: https://github.com/biometryhub/biometryassist
* Source code: https://github.com/cran/biometryassist
* Date/Publication: 2022-04-14 10:12:39 UTC
* Number of recursive dependencies: 134

Run `cloud_details(, "biometryassist")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • On CRAN (68)
      • On Linux (1)
      • requireNamespace("asreml", quietly = TRUE) is not TRUE (4)
      • sommer cannot be loaded (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-variogram.r:5:5): vario_df produces a dataframe ───────────────
      nrow(vg) (`actual`) not equal to 72 (`expected`).
      
      `actual` is an integer vector (72)
      `expected` is a double vector (72)
      
      [ FAIL 1 | WARN 1 | SKIP 74 | PASS 142 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'asreml', 'sommer'
    ```

# BlanketStatsments

<details>

* Version: 0.1.2
* GitHub: https://github.com/p-mq/BlanketStatsments
* Source code: https://github.com/cran/BlanketStatsments
* Date/Publication: 2021-08-02 08:20:05 UTC
* Number of recursive dependencies: 100

Run `cloud_details(, "BlanketStatsments")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(BlanketStatsments)
      > 
      > test_check("BlanketStatsments")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 8 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-Blanket_statsments.R:6:3): Individual model functions ─────────
      mod2$df.residual (`actual`) not equal to 226 (`expected`).
      
      `actual` is an integer vector (226)
      `expected` is a double vector (226)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 8 ]
      Error: Test failures
      Execution halted
    ```

# blsR

<details>

* Version: 0.3.0
* GitHub: https://github.com/groditi/blsR
* Source code: https://github.com/cran/blsR
* Date/Publication: 2022-04-11 06:22:29 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "blsR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-merge.R:97:3): as_zoo work ────────────────────────────────────
      nrow(merged_zoo) (`actual`) not equal to 12 (`expected`).
      
      `actual` is an integer vector (12)
      `expected` is a double vector (12)
      ── Failure (test-merge.R:98:3): as_zoo work ────────────────────────────────────
      ncol(merged_zoo) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 21 | WARN 0 | SKIP 2 | PASS 27 ]
      Error: Test failures
      Execution halted
    ```

# BMisc

<details>

* Version: 1.4.4
* GitHub: NA
* Source code: https://github.com/cran/BMisc
* Date/Publication: 2022-01-26 22:00:05 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "BMisc")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-BMisc.R:17:3): makeBalancedPanel ──────────────────────────────
      length(unique(data$id)) (`actual`) not equal to 99 (`expected`).
      
      `actual` is an integer vector (99)
      `expected` is a double vector (99)
      ── Failure (test-BMisc.R:25:3): makeBalancedPanel ──────────────────────────────
      length(unique(data$id)) (`actual`) not equal to 98 (`expected`).
      
      `actual` is an integer vector (98)
      `expected` is a double vector (98)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 5 ]
      Error: Test failures
      Execution halted
    ```

# brmsmargins

<details>

* Version: 0.1.1
* GitHub: https://github.com/JWiley/brmsmargins
* Source code: https://github.com/cran/brmsmargins
* Date/Publication: 2021-12-16 10:20:05 UTC
* Number of recursive dependencies: 149

Run `cloud_details(, "brmsmargins")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-dot-links.R:58:3): .links returns correct values with sqrt link and integrateoutRE ──
      x$ilinknum (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-tab2mat.R:4:3): tab2mat converts row vector to matrix ─────────
      `res` (`actual`) not equal to matrix(1:9, 3, byrow = TRUE) (`expected`).
      
      `actual` is a double vector (1, 4, 7, 2, 5, ...)
      `expected` is an integer vector (1, 4, 7, 2, 5, ...)
      
      [ FAIL 7 | WARN 0 | SKIP 6 | PASS 96 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.8Mb
      sub-directories of 1Mb or more:
        doc    2.6Mb
        libs   4.0Mb
    ```

# brolgar

<details>

* Version: 0.1.2
* GitHub: https://github.com/njtierney/brolgar
* Source code: https://github.com/cran/brolgar
* Date/Publication: 2021-08-25 12:50:18 UTC
* Number of recursive dependencies: 113

Run `cloud_details(, "brolgar")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (10)
      ── Failure (test-stratify-key.R:19:3): correct number of columns are returned ──
      ncol(wages_strat_along) (`actual`) not equal to ncol(wages_test) + 1 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 63 | WARN 0 | SKIP 5 | PASS 213 ]
      Deleting unused snapshots:
      • facet-sample/gg-facet-sample-alt.svg
      • facet-sample/gg-facet-sample.svg
      • facet-strata/gg-facet-strata-along.svg
      • facet-strata/gg-facet-strata.svg
      Error: Test failures
      Execution halted
    ```

# bslib

<details>

* Version: 0.3.1
* GitHub: https://github.com/rstudio/bslib
* Source code: https://github.com/cran/bslib
* Date/Publication: 2021-10-06 15:10:05 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "bslib")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-utils.R:11:3): lib_file returns multiple system files ─────────
      length(js_files) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 22 | WARN 0 | SKIP 3 | PASS 186 ]
      Deleting unused snapshots:
      • zzzz-bs-sass/bs4-imports
      • zzzz-bs-sass/bs5-imports
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.3Mb
      sub-directories of 1Mb or more:
        fonts   3.1Mb
        lib     5.4Mb
    ```

# canadacovid

<details>

* Version: 0.3.3
* GitHub: https://github.com/taylordunn/canadacovid
* Source code: https://github.com/cran/canadacovid
* Date/Publication: 2022-02-07 08:10:06 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "canadacovid")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (12)
      ── Failure (test-vaccine-age-groups.R:4:3): get_vaccine_age_groups works ───────
      dplyr::n_distinct(vacc_age_overall$group) (`actual`) not equal to 19 (`expected`).
      
      `actual` is an integer vector (19)
      `expected` is a double vector (19)
      ── Failure (test-vaccine-age-groups.R:8:3): get_vaccine_age_groups works ───────
      dplyr::n_distinct(vacc_age_province$province) (`actual`) not equal to 13 (`expected`).
      
      `actual` is an integer vector (13)
      `expected` is a double vector (13)
      
      [ FAIL 27 | WARN 0 | SKIP 0 | PASS 38 ]
      Error: Test failures
      Execution halted
    ```

# censable

<details>

* Version: 0.0.3
* GitHub: https://github.com/christopherkenny/censable
* Source code: https://github.com/cran/censable
* Date/Publication: 2021-10-05 20:40:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "censable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (15)
      ── Failure (test-collapse.R:33:3): collapse5_pop ───────────────────────────────
      ncol(coll) (`actual`) not equal to 18 (`expected`).
      
      `actual` is an integer vector (18)
      `expected` is a double vector (18)
      ── Failure (test-collapse.R:40:3): collapse5_vap ───────────────────────────────
      ncol(coll) (`actual`) not equal to 18 (`expected`).
      
      `actual` is an integer vector (18)
      `expected` is a double vector (18)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 49 ]
      Error: Test failures
      Execution halted
    ```

# cffr

<details>

* Version: 0.2.2
* GitHub: https://github.com/ropensci/cffr
* Source code: https://github.com/cran/cffr
* Date/Publication: 2022-04-08 14:12:36 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "cffr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-utils-schema.R:5:3): Check schema keys ────────────────────────
      length(setdiff(sorted, unsorted)) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 105 | PASS 242 ]
      Deleting unused snapshots:
      • write_bib/append.bib
      • write_bib/ascii.bib
      • write_bib/noext.bib
      Error: Test failures
      Execution halted
    ```

# chromote

<details>

* Version: 0.1.0
* GitHub: https://github.com/rstudio/chromote
* Source code: https://github.com/cran/chromote
* Date/Publication: 2022-04-19 09:02:29 UTC
* Number of recursive dependencies: 41

Run `cloud_details(, "chromote")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-default_chromote_args.R:29:3): default args can be reset ──────
      length(get_chrome_args()) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-default_chromote_args.R:42:3): default args can be overwritten ──
      length(get_chrome_args()) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 8 ]
      Error: Test failures
      Execution halted
    ```

# cli

<details>

* Version: 3.3.0
* GitHub: https://github.com/r-lib/cli
* Source code: https://github.com/cran/cli
* Date/Publication: 2022-04-25 10:00:06 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "cli")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      length(msgs) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-subprocess.R:66:3): subprocess with default handler ───────────
      length(msgs) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 15 | WARN 0 | SKIP 342 | PASS 1427 ]
      Deleting unused snapshots:
      • utf8/utf8-output.txt
      Error: Test failures
      Execution halted
    ```

# cmstatr

<details>

* Version: 0.9.1
* GitHub: https://github.com/cmstatr/cmstatr
* Source code: https://github.com/cran/cmstatr
* Date/Publication: 2021-09-30 16:50:02 UTC
* Number of recursive dependencies: 89

Run `cloud_details(, "cmstatr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (9)
      ── Failure (test-equiv.R:136:3): check that glance.equiv_mean_extremum produces expected results ──
      res$n_sample[1] (`actual`) not equal to 9 (`expected`).
      
      `actual` is an integer vector (9)
      `expected` is a double vector (9)
      ── Failure (test-equiv.R:149:3): check that glance.equiv_mean_extremum produces expected results ──
      ncol(res) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 21 | WARN 0 | SKIP 12 | PASS 1310 ]
      Error: Test failures
      Execution halted
    ```

# codemetar

<details>

* Version: 0.3.4
* GitHub: https://github.com/ropensci/codemetar
* Source code: https://github.com/cran/codemetar
* Date/Publication: 2022-03-16 14:40:08 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "codemetar")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5)
      ── Failure (test-guess_metadata.R:28:2): guess_ci ──────────────────────────────
      length(a3) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-guess_metadata.R:52:3): guess_devStatus ───────────────────────
      length(status) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 5 | WARN 0 | SKIP 15 | PASS 51 ]
      Error: Test failures
      Execution halted
    ```

# confintr

<details>

* Version: 0.1.2
* GitHub: https://github.com/mayer79/confintr
* Source code: https://github.com/cran/confintr
* Date/Publication: 2022-01-28 20:00:02 UTC
* Number of recursive dependencies: 48

Run `cloud_details(, "confintr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (0, 1)
      ── Failure (test-other.R:38:3): check_output works ─────────────────────────────
      check_output(c(0, 199), c(0.05, 0.9), 0:1) (`actual`) not equal to 0:1 (`expected`).
      
      `actual` is a double vector (0, 1)
      `expected` is an integer vector (0, 1)
      ── Failure (test-univariate.R:47:3): ci_median works ───────────────────────────
      ci_median(x)$estimate (`actual`) not equal to median(x) (`expected`).
      
      `actual` is a double vector (14)
      `expected` is an integer vector (14)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 166 ]
      Error: Test failures
      Execution halted
    ```

# consort

<details>

* Version: 1.0.1
* GitHub: https://github.com/adayim/consort
* Source code: https://github.com/cran/consort
* Date/Publication: 2021-12-20 22:00:02 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "consort")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • On CRAN (2)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-gen_text.R:19:3): Generate text for the consort ───────────────
      as.numeric(gsub("[^\\d]+", "", tx1, perl = TRUE)) (`actual`) not equal to nrow(val) (`expected`).
      
      `actual` is a double vector (32)
      `expected` is an integer vector (32)
      
      [ FAIL 1 | WARN 2664 | SKIP 2 | PASS 30 ]
      Deleting unused snapshots:
      • auto/auto_text.png
      • manually/full_text.png
      Error: Test failures
      Execution halted
    ```

# contactdata

<details>

* Version: 0.2.0
* GitHub: https://github.com/bisaloo/contactdata
* Source code: https://github.com/cran/contactdata
* Date/Publication: 2021-02-19 05:20:02 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "contactdata")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(contactdata)
      > 
      > test_check("contactdata")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 26 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-list_countries.R:20:3): age_df_countries() and contact_df_countries() provide data for all list_countries()` ──
      nrow(contacts)/16L (`actual`) not equal to nrow(popsizes) (`expected`).
      
      `actual` is a double vector (2432)
      `expected` is an integer vector (2432)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 26 ]
      Error: Test failures
      Execution halted
    ```

# coro

<details>

* Version: 1.0.2
* GitHub: https://github.com/r-lib/coro
* Source code: https://github.com/cran/coro
* Date/Publication: 2021-12-03 15:30:02 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "coro")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 204 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (4)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-iterator-for.R:64:3): iterating works when coro is not loaded ──
      new_env[["x"]] (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 204 ]
      Error: Test failures
      Execution halted
    ```

# correlation

<details>

* Version: 0.8.0
* GitHub: https://github.com/easystats/correlation
* Source code: https://github.com/cran/correlation
* Date/Publication: 2022-02-14 21:50:02 UTC
* Number of recursive dependencies: 182

Run `cloud_details(, "correlation")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (11, 11)
      ── Failure (test-misc.R:4:3): Mahalanobis ──────────────────────────────────────
      ncol(d) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-misc.R:6:3): Mahalanobis ──────────────────────────────────────
      ncol(d) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 16 | WARN 7 | SKIP 11 | PASS 98 ]
      Error: Test failures
      Execution halted
    ```

# covidcast

<details>

* Version: 0.4.2
* GitHub: https://github.com/cmu-delphi/covidcast
* Source code: https://github.com/cran/covidcast
* Date/Publication: 2021-05-04 07:00:12 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "covidcast")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$value` is an integer vector (4, 6, 5, 1, 3, ...)
      `expected$value` is a double vector (4, 6, 5, 1, 3, ...)
      ── Failure (test-wrangle.R:253:3): aggregated data can be made wider ───────────
      arrange(wide, geo_value) (`actual`) not equal to structure(...) (`expected`).
      
      `actual$value+0:foo_foo` is an integer vector (1, 3, 2)
      `expected$value+0:foo_foo` is a double vector (1, 3, 2)
      
      `actual$value+0:bar_bar` is an integer vector (4, 6, 5)
      `expected$value+0:bar_bar` is a double vector (4, 6, 5)
      
      [ FAIL 9 | WARN 1 | SKIP 7 | PASS 51 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 20 marked UTF-8 strings
    ```

# covidprobability

<details>

* Version: 0.1.0
* GitHub: https://github.com/eebrown/covidprobability
* Source code: https://github.com/cran/covidprobability
* Date/Publication: 2021-02-11 10:00:14 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "covidprobability")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(covidprobability)
      > 
      > test_check("covidprobability")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 27 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-tests.R:83:1): posttest_series produces expected values ───────
      test_posttest$x[1] (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 27 ]
      Error: Test failures
      Execution halted
    ```

# covidregionaldata

<details>

* Version: 0.9.3
* GitHub: https://github.com/epiforecasts/covidregionaldata
* Source code: https://github.com/cran/covidregionaldata
* Date/Publication: 2022-02-07 01:20:02 UTC
* Number of recursive dependencies: 135

Run `cloud_details(, "covidregionaldata")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$gear` is an integer vector (4, 4, 4, 3, 3, ...)
      `expected$gear` is a double vector (4, 4, 4, 3, 3, ...)
      
      `actual$carb` is an integer vector (4, 4, 1, 1, 2, ...)
      `expected$carb` is a double vector (4, 4, 1, 1, 2, ...)
      ── Failure (test-json_reader.R:26:3): json_reader verbosity is controlled as expected ──
      length(...) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 6 | WARN 2 | SKIP 0 | PASS 270 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 199 marked UTF-8 strings
    ```

# cpi

<details>

* Version: 0.1.4
* GitHub: https://github.com/bips-hb/cpi
* Source code: https://github.com/cran/cpi
* Date/Publication: 2022-03-03 09:10:02 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "cpi")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (10, 8)
      ── Failure (test-check_args.R:23:3): returns object of correct dimensions, classification ──
      dim(res) (`actual`) not equal to c(length(task$feature_names), 8) (`expected`).
      
      `actual` is an integer vector (4, 8)
      `expected` is a double vector (4, 8)
      ── Failure (test-check_args.R:38:3): returns object of correct dimensions, group classification ──
      dim(res) (`actual`) not equal to c(length(groups), 8) (`expected`).
      
      `actual` is an integer vector (2, 8)
      `expected` is a double vector (2, 8)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 11 ]
      Error: Test failures
      Execution halted
    ```

# cpp11

<details>

* Version: 0.4.2
* GitHub: https://github.com/r-lib/cpp11
* Source code: https://github.com/cran/cpp11
* Date/Publication: 2021-11-30 09:10:04 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "cpp11")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7)
      ── Failure (test-source.R:216:3): cpp_source(d) functions work after sourcing file more than once ──
      foo() (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-source.R:218:3): cpp_source(d) functions work after sourcing file more than once ──
      foo() (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 9 | WARN 0 | SKIP 0 | PASS 100 ]
      Error: Test failures
      Execution halted
    ```

# cropgrowdays

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/cropgrowdays
* Date/Publication: 2021-12-10 17:00:02 UTC
* Number of recursive dependencies: 110

Run `cloud_details(, "cropgrowdays")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test_weather_calcs.R:100:1): (code run outside of `test_that()`) ───
      stress_days_over(boonah, startdate = crop$flower_date[4], enddate = crop$harvest_date[4]) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test_weather_calcs.R:102:1): (code run outside of `test_that()`) ───
      stress_days_over(...) (`actual`) not equal to 12 (`expected`).
      
      `actual` is an integer vector (12)
      `expected` is a double vector (12)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 51 ]
      Error: Test failures
      Execution halted
    ```

# crosstable

<details>

* Version: 0.4.1
* GitHub: https://github.com/DanChaltiel/crosstable
* Source code: https://github.com/cran/crosstable
* Date/Publication: 2022-02-25 12:20:03 UTC
* Number of recursive dependencies: 115

Run `cloud_details(, "crosstable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─crosstable:::expect_cross(...) at test-selection.R:202:4
       2.   └─testthat::expect_equal(dim, dim(x)) at tests/testthat/helper-init_dataset.R:69:4
      ── Failure (test-selection.R:205:5): crosstable ultimate selection ─────────────
      `dim` (`actual`) not equal to dim(x) (`expected`).
      
      `actual` is a double vector (15, 4)
      `expected` is an integer vector (15, 4)
      Backtrace:
          ▆
       1. └─crosstable:::expect_cross(...) at test-selection.R:205:4
       2.   └─testthat::expect_equal(dim, dim(x)) at tests/testthat/helper-init_dataset.R:69:4
      
      [ FAIL 67 | WARN 0 | SKIP 26 | PASS 268 ]
      Error: Test failures
      Execution halted
    ```

# csvwr

<details>

* Version: 0.1.6
* GitHub: https://github.com/Robsteranium/csvwr
* Source code: https://github.com/cran/csvwr
* Date/Publication: 2021-11-09 10:50:02 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "csvwr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘csvw-tests-helpers.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$tables[[1]]$row[[3]]$rownum` is an integer vector (3)
      ── Failure (test-parsing.R:6:3): Basic parsing works ───────────────────────────
      nrow(result) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      ── Failure (test-util.R:46:3): vec_depth doesn't attempt to measure the depth of errors ──
      vec_depth(err) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 16 | WARN 1 | SKIP 0 | PASS 74 ]
      Error: Test failures
      Execution halted
    ```

# cubble

<details>

* Version: 0.1.0
* GitHub: https://github.com/huizezhang-sherry/cubble
* Source code: https://github.com/cran/cubble
* Date/Publication: 2022-04-22 09:20:05 UTC
* Number of recursive dependencies: 144

Run `cloud_details(, "cubble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (8)
      ── Failure (test-vctrs.R:28:3): bind columns of a cubble and a tibble ──────────
      nrow(out) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test-vctrs.R:29:3): bind columns of a cubble and a tibble ──────────
      ncol(out) (`actual`) not equal to ncol(cb) + 1 (`expected`).
      
      `actual` is an integer vector (7)
      `expected` is a double vector (7)
      
      [ FAIL 3 | WARN 0 | SKIP 6 | PASS 32 ]
      Error: Test failures
      Execution halted
    ```

# cusumcharter

<details>

* Version: 0.1.0
* GitHub: https://github.com/johnmackintosh/cusumcharter
* Source code: https://github.com/cran/cusumcharter
* Date/Publication: 2021-11-15 08:50:02 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "cusumcharter")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$obs` is a double vector (1, 2, 3, 4, 5, ...)
      ── Failure (test-cusum_control_plot.R:169:3): above ucl points plot ────────────
      dim(p4$layers[[4]]$data)[1] (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-cusum_control_plot.R:201:1): below ucl points plot ────────────
      dim(p5$layers[[4]]$data)[1] (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 36 ]
      Error: Test failures
      Execution halted
    ```

# daiR

<details>

* Version: 0.9.0
* GitHub: https://github.com/Hegghammer/daiR
* Source code: https://github.com/cran/daiR
* Date/Publication: 2021-06-11 09:20:02 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "daiR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (38)
      ── Failure (test_process_output.R:208:3): split_block() returns a revised block dataframe ──
      nrow(new_df) (`actual`) not equal to nrow(df) + 1 (`expected`).
      
      `actual` is an integer vector (82)
      `expected` is a double vector (82)
      ── Failure (test_process_output.R:230:3): split_block() returns a revised block dataframe ──
      nrow(new_df) (`actual`) not equal to nrow(df) + 1 (`expected`).
      
      `actual` is an integer vector (82)
      `expected` is a double vector (82)
      
      [ FAIL 8 | WARN 0 | SKIP 30 | PASS 219 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘curl’ ‘fs’ ‘googleCloudStorageR’
      All declared Imports should be used.
    ```

# DataFakeR

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/DataFakeR
* Date/Publication: 2021-09-23 18:10:06 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "DataFakeR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$t2` is a double vector (20)
      ── Failure (test-simulate_tables.R:21:3): simulate_schema preserved defined rules properly ──
      dim(generated_tbls$table[[1]]) (`actual`) not equal to c(10, 6) (`expected`).
      
      `actual` is an integer vector (10, 6)
      `expected` is a double vector (10, 6)
      ── Failure (test-simulate_tables.R:22:3): simulate_schema preserved defined rules properly ──
      dim(generated_tbls$table[[2]]) (`actual`) not equal to c(10, 3) (`expected`).
      
      `actual` is an integer vector (10, 3)
      `expected` is a double vector (10, 3)
      
      [ FAIL 3 | WARN 6 | SKIP 1 | PASS 55 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# datasets.load

<details>

* Version: 2.0.0
* GitHub: NA
* Source code: https://github.com/cran/datasets.load
* Date/Publication: 2022-01-10 17:22:47 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "datasets.load")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-datasets.load.R:4:3): output format matches ───────────────────
      length(alldata()) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-datasets.load.R:5:3): output format matches ───────────────────
      length(datasets()) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# dbplyr

<details>

* Version: 2.1.1
* GitHub: https://github.com/tidyverse/dbplyr
* Source code: https://github.com/cran/dbplyr
* Date/Publication: 2021-04-06 12:50:02 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "dbplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-verb-summarise.R:16:3): summarise performs partial evaluation ──
      mf2$y (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-verb-uncount.R:55:3): works with 0 weights ────────────────────
      dbplyr_uncount(df, w) %>% collect() (`actual`) not equal to tibble(x = 2) (`expected`).
      
      `actual$x` is an integer vector (2)
      `expected$x` is a double vector (2)
      
      [ FAIL 36 | WARN 0 | SKIP 117 | PASS 699 ]
      Error: Test failures
      Execution halted
    ```

# dedupewider

<details>

* Version: 0.1.0
* GitHub: https://github.com/gsmolinski/dedupewider
* Source code: https://github.com/cran/dedupewider
* Date/Publication: 2021-10-28 13:00:02 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "dedupewider")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test-na_move.R:84:3): moving NA to top works if some column is of type list ──
      sum(is.na(as.logical(unlist(df_moved[1, ])))) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-na_move.R:89:3): moving NA to bottom works if some column is of type list ──
      sum(is.na(as.logical(unlist(df_moved[4, ])))) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 19 ]
      Error: Test failures
      Execution halted
    ```

# deltaccd

<details>

* Version: 1.0.2
* GitHub: https://github.com/hugheylab/deltaccd
* Source code: https://github.com/cran/deltaccd
* Date/Publication: 2022-02-11 19:30:06 UTC
* Number of recursive dependencies: 73

Run `cloud_details(, "deltaccd")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 29 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (3)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_non_exported.R:99:3): makePerms ───────────────────────────────
      dim(perms) (`actual`) not equal to c(1000, 10) (`expected`).
      
      `actual` is an integer vector (1000, 10)
      `expected` is a double vector (1000, 10)
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 29 ]
      Error: Test failures
      Execution halted
    ```

# detrendr

<details>

* Version: 0.6.14
* GitHub: https://github.com/rorynolan/detrendr
* Source code: https://github.com/cran/detrendr
* Date/Publication: 2021-05-16 05:00:05 UTC
* Number of recursive dependencies: 114

Run `cloud_details(, "detrendr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5)
      ── Failure (test-myrs.R:179:3): rfromboxes and rtoboxes doesn't hang with a non-integer n ──
      sum(from) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-pillar-utils.R:3:3): turning pillars into columns and back again works ──
      `aaa` (`actual`) not equal to pillars_to_cols(aaa) %>% cols_to_pillars(dim(aaa)) (`expected`).
      
      `actual` is an integer vector (1, 2, 3, 4, 5, ...)
      `expected` is a double vector (1, 2, 3, 4, 5, ...)
      
      [ FAIL 3 | WARN 0 | SKIP 19 | PASS 144 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        libs   9.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# dials

<details>

* Version: 0.1.1
* GitHub: https://github.com/tidymodels/dials
* Source code: https://github.com/cran/dials
* Date/Publication: 2022-04-06 14:52:33 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "dials")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 4, 8, 11, 15)
      ── Failure (test-values.R:162:3): sequences - integers ─────────────────────────
      value_seq(test_param_1, 1, FALSE) (`actual`) not equal to 3L (`expected`).
      
      `actual` is a double vector (3)
      `expected` is an integer vector (3)
      ── Failure (test-values.R:168:3): sequences - integers ─────────────────────────
      value_seq(tree_depth(), 15, FALSE) (`actual`) not equal to 1L:15L (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      
      [ FAIL 13 | WARN 0 | SKIP 24 | PASS 361 ]
      Error: Test failures
      Execution halted
    ```

# dibble

<details>

* Version: 0.1.1
* GitHub: https://github.com/UchidaMizuki/dibble
* Source code: https://github.com/cran/dibble
* Date/Publication: 2022-03-16 11:30:02 UTC
* Number of recursive dependencies: 45

Run `cloud_details(, "dibble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      > 
      > test_check("dibble")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 30 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-row-col.R:10:3): nrow-ncol ────────────────────────────────────
      ncol(tbl_ddf) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 30 ]
      Error: Test failures
      Execution halted
    ```

# dictionar6

<details>

* Version: 0.1.3
* GitHub: https://github.com/xoopR/dictionar6
* Source code: https://github.com/cran/dictionar6
* Date/Publication: 2021-09-13 04:40:02 UTC
* Number of recursive dependencies: 32

Run `cloud_details(, "dictionar6")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       3.     └─testthat::expect_equal(act$val[exp_nms], exp$val)
      ── Failure (test-Dictionary.R:190:3): active ───────────────────────────────────
      d_typed$length (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-Dictionary.R:191:3): active ───────────────────────────────────
      length(d_typed) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 3 | WARN 2 | SKIP 0 | PASS 163 ]
      Error: Test failures
      Execution halted
    ```

# dimRed

<details>

* Version: 0.2.5
* GitHub: https://github.com/gdkrmr/dimRed
* Source code: https://github.com/cran/dimRed
* Date/Publication: 2022-03-10 22:20:05 UTC
* Number of recursive dependencies: 129

Run `cloud_details(, "dimRed")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (2)
      Backtrace:
          ▆
       1. └─base::lapply(embedded_data, function(x) expect_equal(2, getNDim(x))) at test_high_level_functions.R:38:4
       2.   └─dimRed FUN(X[[i]], ...)
       3.     └─testthat::expect_equal(2, getNDim(x)) at test_high_level_functions.R:38:26
      ── Failure (test_quality.R:49:5): Q_local ndim ─────────────────────────────────
      rank(tmp) (`actual`) not equal to 1:4 (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4)
      `expected` is an integer vector (1, 2, 3, 4)
      
      [ FAIL 14 | WARN 0 | SKIP 6 | PASS 180 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘dimensionality-reduction.Rnw’ using knitr
    --- finished re-building ‘dimensionality-reduction.Rnw’
    
    echo "BNET_BUILD_VIGNETTE: "
    BNET_BUILD_VIGNETTE: 
    /opt/R/4.1.1/lib/R/bin/Rscript -e "knitr::knit2pdf('dimensionality-reduction.Rnw')"
    
    
    processing file: dimensionality-reduction.Rnw
    ...
    
    Error: LaTeX failed to compile dimensionality-reduction.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See dimensionality-reduction.log for more info.
    In addition: Warning message:
    In system2("tlmgr", args, ...) :
      running command ''tlmgr' search --file --global '/tikz.sty'' had status 1
    Execution halted
    make: *** [Makefile:3: all] Error 1
    Error in tools:::buildVignettes(dir = "/tmp/workdir/dimRed/new/dimRed.Rcheck/vign_test/dimRed",  : 
      running 'make' failed
    Execution halted
    ```

# dineR

<details>

* Version: 1.0.1
* GitHub: https://github.com/RicSalgado/dineR
* Source code: https://github.com/cran/dineR
* Date/Publication: 2021-11-15 09:20:12 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "dineR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-estimation.R:34:3): estimation behaves as expected ────────────
      result$n_X (`actual`) not equal to `n_X` (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      ── Failure (test-estimation.R:35:3): estimation behaves as expected ────────────
      ncol(result$Sigma_X) (`actual`) not equal to `p_X` (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

# disaggR

<details>

* Version: 1.0.3.1
* GitHub: https://github.com/InseeFr/disaggR
* Source code: https://github.com/cran/disaggR
* Date/Publication: 2022-03-04 11:40:23 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "disaggR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • plot/plot-main-scatter.svg
      • plot/plot-mts-ctb.svg
      • plot/plot-mts-ind.svg
      • plot/plot-mts-ins.svg
      • plot/plot-mts-rev.svg
      • plot/plot-nowin-smooth.svg
      • plot/plot-par-benchmark-outside.svg
      • plot/plot-par-benchmark.svg
      • plot/plot-scatter-2008-2012-smooth.svg
      • plot/plot-scatter-2008-2012.svg
      • plot/plot-scatter-coeff-2008-2012.svg
      • plot/plot-scatter-showlegendf.svg
      • plot/plot-smooth-2008-4-2012-7-smooth.svg
      Error: Test failures
      Execution halted
    ```

# distr6

<details>

* Version: 1.6.9
* GitHub: https://github.com/alan-turing-institute/distr6
* Source code: https://github.com/cran/distr6
* Date/Publication: 2022-03-27 23:50:02 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "distr6")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3, 2, 2)
      ── Failure (test-wrapper-vector.R:438:3): length ───────────────────────────────
      length(VectorDistribution$new(list(bin, Exponential$new(rate = 1)))) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-wrapper-vector.R:439:3): length ───────────────────────────────
      length(...) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 142 | WARN 0 | SKIP 0 | PASS 4508 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.2Mb
      sub-directories of 1Mb or more:
        R      3.7Mb
        help   1.2Mb
        libs   4.1Mb
    ```

# dittodb

<details>

* Version: 0.1.3
* GitHub: https://github.com/ropensci/dittodb
* Source code: https://github.com/cran/dittodb
* Date/Publication: 2020-10-10 06:20:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "dittodb")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘dittodb-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: mockdb
    > ### Title: Run DBI queries against a mocked database
    > ### Aliases: mockdb with_mock_db start_mock_db stop_mock_db
    > 
    > ### ** Examples
    > 
    > # Add the mocks included with dittodb to the db_mock_paths to use them below
    ...
    + }
    ── Failure (???): We get one airline ───────────────────────────────────────────
    nrow(one_airline) (`actual`) not equal to 1 (`expected`).
    
    `actual` is an integer vector (1)
    `expected` is a double vector (1)
    
    Error in reporter$stop_if_needed() : Test failed
    Calls: with_mock_db -> eval -> <Anonymous> -> <Anonymous>
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘developing-dittodb.Rmd’ using rmarkdown
    --- finished re-building ‘developing-dittodb.Rmd’
    
    --- re-building ‘dittodb.Rmd’ using rmarkdown
    Quitting from lines 159-169 (dittodb.Rmd) 
    Error: processing vignette 'dittodb.Rmd' failed with diagnostics:
    Test failed
    --- failed re-building ‘dittodb.Rmd’
    
    ...
    
        ident, sql
    
    --- finished re-building ‘travelling.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘dittodb.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# dm

<details>

* Version: 0.2.8
* GitHub: https://github.com/cynkra/dm
* Source code: https://github.com/cran/dm
* Date/Publication: 2022-04-08 13:22:29 UTC
* Number of recursive dependencies: 138

Run `cloud_details(, "dm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • only works on `mssql`, `postgres` (6)
      • only works on `postgres` (2)
      • only works on `sqlite` (1)
      • packageVersion("dbplyr") <= "2.1.1" is TRUE (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-db-interface.R:258:3): build_copy_queries avoids duplicate indexes ──
      anyDuplicated(unlist(queries$index_name)) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 136 | PASS 819 ]
      Error: Test failures
      Execution halted
    ```

# dmlalg

<details>

* Version: 1.0.2
* GitHub: NA
* Source code: https://github.com/cran/dmlalg
* Date/Publication: 2022-02-03 12:40:02 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "dmlalg")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─dmlalg do_tests(fit2, level = 0.95, xx_name = xx_name2) at test-methods_mm.R:243:2
       2.   └─testthat::expect_equal(dim(res), c(d, 2)) at test-methods_mm.R:237:4
      ── Failure (test-methods_mm.R:244:3): confint.mmdml outputs right formats ──────
      dim(res) (`actual`) not equal to c(d, 2) (`expected`).
      
      `actual` is an integer vector (2, 2)
      `expected` is a double vector (2, 2)
      Backtrace:
          ▆
       1. └─dmlalg do_tests(fit2, level = 0.7, xx_name = xx_name2) at test-methods_mm.R:244:2
       2.   └─testthat::expect_equal(dim(res), c(d, 2)) at test-methods_mm.R:237:4
      
      [ FAIL 31 | WARN 0 | SKIP 0 | PASS 1121 ]
      Error: Test failures
      Execution halted
    ```

# dmri.tracking

<details>

* Version: 0.1.0
* GitHub: https://github.com/vic-dragon/dmri.tracking
* Source code: https://github.com/cran/dmri.tracking
* Date/Publication: 2021-06-09 11:30:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "dmri.tracking")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test_vtrack.R’
    Running the tests in ‘tests/test_vtrack.R’ failed.
    Last 13 lines of output:
      1 
      2 
      3 
      4 
      5 
      6 
      ── Failure (???): Test output of v.track with example dataset ──────────────────
      length(v.track(v.obj)$lens) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      
      Error in reporter$stop_if_needed() : Test failed
      Calls: test_that -> <Anonymous>
      Execution halted
    ```

# dockerfiler

<details>

* Version: 0.1.4
* GitHub: https://github.com/ColinFay/dockerfiler
* Source code: https://github.com/cran/dockerfiler
* Date/Publication: 2021-09-03 12:40:06 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "dockerfiler")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─dockerfiler expect_captured_length(my_dock, 17) at test-r6.R:45:2
       2.   └─testthat::expect_equal(length(capture.output(x)), length) at test-r6.R:3:2
      ── Failure (test-r6.R:47:3): R6 creation works ─────────────────────────────────
      length(capture.output(x)) (`actual`) not equal to `length` (`expected`).
      
      `actual` is an integer vector (17)
      `expected` is a double vector (17)
      Backtrace:
          ▆
       1. └─dockerfiler expect_captured_length(my_dock, 17) at test-r6.R:47:2
       2.   └─testthat::expect_equal(length(capture.output(x)), length) at test-r6.R:3:2
      
      [ FAIL 19 | WARN 0 | SKIP 1 | PASS 16 ]
      Error: Test failures
      Execution halted
    ```

# docreview

<details>

* Version: 0.0.1
* GitHub: https://github.com/thisisnic/docreview
* Source code: https://github.com/cran/docreview
* Date/Publication: 2021-08-17 07:20:11 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "docreview")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-vignette_review.R:9:3): vignette_review works as expected ─────
      vr$details$testpkg.Rmd$length (`actual`) not equal to 351 (`expected`).
      
      `actual` is an integer vector (351)
      `expected` is a double vector (351)
      ── Failure (test-vignette_review.R:12:3): vignette_review works as expected ────
      vr$details$testpkg2.Rmd$length (`actual`) not equal to 170 (`expected`).
      
      `actual` is an integer vector (170)
      `expected` is a double vector (170)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 16 ]
      Error: Test failures
      Execution halted
    ```

# doMIsaul

<details>

* Version: 1.0.1
* GitHub: https://github.com/LilithF/doMIsaul
* Source code: https://github.com/cran/doMIsaul
* Date/Publication: 2021-10-18 18:20:10 UTC
* Number of recursive dependencies: 165

Run `cloud_details(, "doMIsaul")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-unsupMI.R:233:5): multiCOns ───────────────────────────────────
      length(...) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-unsupMI.R:241:5): multiCOns ───────────────────────────────────
      length(MultiCons(iris[, 1:4], Plot = FALSE, returnAll = TRUE)) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 43 | WARN 1 | SKIP 0 | PASS 33 ]
      Error: Test failures
      Execution halted
    ```

# dplyr

<details>

* Version: 1.0.9
* GitHub: https://github.com/tidyverse/dplyr
* Source code: https://github.com/cran/dplyr
* Date/Publication: 2022-04-28 13:30:02 UTC
* Number of recursive dependencies: 97

Run `cloud_details(, "dplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4, 2)
      ── Failure (test-transmute.R:10:3): transmute preserves grouping ───────────────
      `i` (`actual`) not equal to 1L (`expected`).
      
      `actual` is a double vector (1)
      `expected` is an integer vector (1)
      ── Failure (test-transmute.R:12:3): transmute preserves grouping ───────────────
      nrow(group_data(out)) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 179 | WARN 0 | SKIP 107 | PASS 2186 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# dreamer

<details>

* Version: 3.0.0
* GitHub: https://github.com/rich-payne/dreamer
* Source code: https://github.com/cran/dreamer
* Date/Publication: 2021-08-20 09:50:02 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "dreamer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      Backtrace:
          ▆
       1. └─dreamer:::assert_mcmc_format(mcmc, n_chains, times) at test-posterior-quad.R:220:2
       2.   └─testthat::expect_equal(length(x$mod), n_chains) at tests/testthat/helper-utils.R:38:2
      ── Failure (test-posterior.R:108:3): posterior.dreamer_bma uses model_index and iter correctly ──
      `obs` (`actual`) not equal to `samps` (`expected`).
      
      `actual$iter` is a double vector (1, 1, 1, 1, 1, ...)
      `expected$iter` is an integer vector (1, 1, 1, 1, 1, ...)
      
      [ FAIL 199 | WARN 0 | SKIP 22 | PASS 5137 ]
      Error: Test failures
      Execution halted
    ```

# droll

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/droll
* Date/Publication: 2021-08-06 17:50:09 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "droll")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual` is an integer vector (11)
      `expected` is a double vector (11)
      ── Failure (test-roll.R:141:3): exotic cases work ──────────────────────────────
      nrow(builtin) (`actual`) not equal to 20 (`expected`).
      
      `actual` is an integer vector (20)
      `expected` is a double vector (20)
      
      [ FAIL 11 | WARN 0 | SKIP 2 | PASS 175 ]
      Deleting unused snapshots:
      • plot/gp.svg
      • plot/gq.svg
      • plot/gr.svg
      Error: Test failures
      Execution halted
    ```

# dtplyr

<details>

* Version: 1.2.1
* GitHub: https://github.com/tidyverse/dtplyr
* Source code: https://github.com/cran/dtplyr
* Date/Publication: 2022-01-19 22:32:41 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "dtplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-tidyeval.R:275:3): non-Gforce verbs work ──────────────────────
      dt %>% mutate_at(vars(x), add) %>% pull() (`actual`) not equal to c(3, 3) (`expected`).
      
      `actual` is an integer vector (3, 3)
      `expected` is a double vector (3, 3)
      ── Failure (test-tidyeval.R:309:3): n_distinct() is translated to uniqueN() ────
      out$num (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 77 | WARN 0 | SKIP 25 | PASS 533 ]
      Error: Test failures
      Execution halted
    ```

# dyn.log

<details>

* Version: 0.4.0
* GitHub: https://github.com/bmoretz/dyn.log
* Source code: https://github.com/cran/dyn.log
* Date/Publication: 2022-03-14 19:30:02 UTC
* Number of recursive dependencies: 100

Run `cloud_details(, "dyn.log")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (15)
      ── Failure (test-layout.R:369:3): multi_line_fmt_works_4 ───────────────────────
      length(detail$types) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-layout.R:406:3): multi_line_fmt_works_4 ───────────────────────
      length(output) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 33 | WARN 0 | SKIP 0 | PASS 249 ]
      Error: Test failures
      Execution halted
    ```

# easyr

<details>

* Version: 0.5-8
* GitHub: https://github.com/oliver-wyman-actuarial/easyr
* Source code: https://github.com/cran/easyr
* Date/Publication: 2022-01-11 20:32:44 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "easyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual` is an integer vector (12)
      `expected` is a double vector (12)
      ── Failure (test_w.R:11:5): w works as expected ────────────────────────────────
      `t` (`actual`) not equal to `cars` (`expected`).
      
      `actual$speed` is an integer vector (4, 4, 7, 7, 8, ...)
      `expected$speed` is a double vector (4, 4, 7, 7, 8, ...)
      
      `actual$dist` is an integer vector (2, 10, 4, 22, 16, ...)
      `expected$dist` is a double vector (2, 10, 4, 22, 16, ...)
      
      [ FAIL 19 | WARN 0 | SKIP 1 | PASS 287 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rprojroot’
      All declared Imports should be used.
    ```

# EDFtest

<details>

* Version: 0.1.0
* GitHub: https://github.com/LiYao-sfu/EDFtest
* Source code: https://github.com/cran/EDFtest
* Date/Publication: 2021-10-25 07:20:14 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "EDFtest")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-estimate.sample.R:60:3): mle for weibull sample ───────────────
      length(par) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-estimate.sample.R:70:3): mle for exponential sample ───────────
      length(par.rate) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 8 | WARN 11 | SKIP 0 | PASS 143 ]
      Error: Test failures
      Execution halted
    ```

# effectsize

<details>

* Version: 0.6.0.1
* GitHub: https://github.com/easystats/effectsize
* Source code: https://github.com/cran/effectsize
* Date/Publication: 2022-01-26 14:32:51 UTC
* Number of recursive dependencies: 232

Run `cloud_details(, "effectsize")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5)
      ── Failure (test-eta_squared.R:484:5): include_intercept | afex ────────────────
      nrow(resE0) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-eta_squared.R:490:5): include_intercept | afex ────────────────
      nrow(resE1) (`actual`) not equal to nrow(resE0) + 1 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 4 | WARN 0 | SKIP 19 | PASS 486 ]
      Error: Test failures
      Execution halted
    ```

# elisr

<details>

* Version: 0.1.1
* GitHub: https://github.com/sbissantz/elisr
* Source code: https://github.com/cran/elisr
* Date/Publication: 2021-05-15 22:00:02 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "elisr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (7, 6, 5, 4, 3, ...)
      ── Failure (test-utils.R:42:3): reversing variables ────────────────────────────
      `res_o_seven` (`actual`) not equal to 7:0 (`expected`).
      
      `actual` is a double vector (7, 6, 5, 4, 3, ...)
      `expected` is an integer vector (7, 6, 5, 4, 3, ...)
      ── Failure (test-utils.R:44:3): reversing variables ────────────────────────────
      `res_two_two` (`actual`) not equal to 2:-2 (`expected`).
      
      `actual` is a double vector (2, 1, 0, -1, -2)
      `expected` is an integer vector (2, 1, 0, -1, -2)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 48 ]
      Error: Test failures
      Execution halted
    ```

# embed

<details>

* Version: 0.2.0
* GitHub: https://github.com/tidymodels/embed
* Source code: https://github.com/cran/embed
* Date/Publication: 2022-04-13 11:02:29 UTC
* Number of recursive dependencies: 179

Run `cloud_details(, "embed")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (10, 9)
      ── Failure (test_woe.R:119:3): add_woe returns a proper tibble ─────────────────
      add_woe(df, "y") %>% dim() (`actual`) not equal to c(20, 5) (`expected`).
      
      `actual` is an integer vector (20, 5)
      `expected` is a double vector (20, 5)
      ── Failure (test_woe.R:133:3): add_woe accepts numeric, logical and character predictor variables ──
      ... %>% dim() (`actual`) not equal to c(20, 9) (`expected`).
      
      `actual` is an integer vector (20, 9)
      `expected` is a double vector (20, 9)
      
      [ FAIL 9 | WARN 2 | SKIP 42 | PASS 106 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘textrecipes’
    ```

# emoji

<details>

* Version: 0.2.0
* GitHub: https://github.com/EmilHvitfeldt/emoji
* Source code: https://github.com/cran/emoji
* Date/Publication: 2021-09-18 06:10:02 UTC
* Number of recursive dependencies: 33

Run `cloud_details(, "emoji")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(emoji)
      > 
      > test_check("emoji")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 40 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-data.R:2:3): No duplicated in names of `emoji_name` ───────────
      sum(duplicated(names(emoji_name))) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 40 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 9451 marked UTF-8 strings
    ```

# envalysis

<details>

* Version: 0.5.1
* GitHub: https://github.com/zsteinmetz/envalysis
* Source code: https://github.com/cran/envalysis
* Date/Publication: 2021-03-05 17:00:02 UTC
* Number of recursive dependencies: 101

Run `cloud_details(, "envalysis")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • On CRAN (3)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-helper-functions.R:2:3): Bisdom scaled WDPTs work as expected ──
      bisdom(c(2, 6, 20, 3, 385)) (`actual`) not equal to c(1, 2, 2, 1, 3) (`expected`).
      
      `actual` is an integer vector (1, 2, 2, 1, 3)
      `expected` is a double vector (1, 2, 2, 1, 3)
      
      [ FAIL 1 | WARN 1 | SKIP 3 | PASS 61 ]
      Deleting unused snapshots:
      • calibration/plot.png
      • texture/plot.png
      Error: Test failures
      Execution halted
    ```

# EPP

<details>

* Version: 0.3.6.1
* GitHub: https://github.com/RichDeto/EPP
* Source code: https://github.com/cran/EPP
* Date/Publication: 2022-01-25 13:42:42 UTC
* Number of recursive dependencies: 132

Run `cloud_details(, "EPP")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (8)
      ── Failure (test-leafepp.R:12:9): leafepp works ────────────────────────────────
      length(bb) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      ── Failure (test-leafepp.R:15:9): leafepp works ────────────────────────────────
      length(cc) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      
      [ FAIL 14 | WARN 61 | SKIP 0 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

# era

<details>

* Version: 0.4.0
* GitHub: https://github.com/joeroe/era
* Source code: https://github.com/cran/era
* Date/Publication: 2022-03-09 15:30:02 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "era")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-era.R:131:3): era_parameters getter functions return correct value ──
      era_scale(tera) (`actual`) not equal to 1e+06 (`expected`).
      
      `actual` is an integer vector (1000000)
      `expected` is a double vector (1e+06)
      ── Failure (test-era.R:132:3): era_parameters getter functions return correct value ──
      era_direction(tera) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 2 | WARN 0 | SKIP 6 | PASS 116 ]
      Error: Test failures
      Execution halted
    ```

# ergm

<details>

* Version: 4.1.2
* GitHub: https://github.com/statnet/ergm
* Source code: https://github.com/cran/ergm
* Date/Publication: 2021-07-27 13:40:02 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "ergm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘constrain_degrees_edges.R’
      Running ‘drop_tests.R’
      Running ‘ergm_term_doc_test.R’
      Running ‘gw_sp_tests.R’
      Running ‘hamming_termtests.R’
      Running ‘miss_tests.CD.R’
      Running ‘miss_tests.R’
      Running ‘mple_largenetwork.R’
      Running ‘mple_offset.R’
      Running ‘nodrop.R’
    ...
      `expected` is a double vector (1)
      ── Failure (test-update.network.R:39:3): update.network() from adjacency matrix ──
      network.edgecount(aaa) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 14 | WARN 2 | SKIP 2 | PASS 787 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.3Mb
      sub-directories of 1Mb or more:
        R      1.1Mb
        doc    1.9Mb
        libs   4.1Mb
    ```

# exdex

<details>

* Version: 1.2.1
* GitHub: https://github.com/paulnorthrop/exdex
* Source code: https://github.com/cran/exdex
* Date/Publication: 2022-04-16 07:32:37 UTC
* Number of recursive dependencies: 85

Run `cloud_details(, "exdex")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      ── Failure (test-maxima.R:86:3): x = 1:11, b = 3, all_disjoint_maxima input values ──
      temp$xd[, 1] (`actual`) not equal to temp2$x (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      ── Failure (test-split_by_NA.R:102:3): split_by_NAs is correct, cheeseboro ─────
      `byhand` (`actual`) not equal to `res` (`expected`).
      
      `actual` is a double vector (5, 4, 10, 5, 1, ...)
      `expected` is an integer vector (5, 4, 10, 5, 1, ...)
      
      [ FAIL 20 | WARN 0 | SKIP 0 | PASS 289 ]
      Error: Test failures
      Execution halted
    ```

# exoplanets

<details>

* Version: 0.2.2
* GitHub: https://github.com/ropensci/exoplanets
* Source code: https://github.com/cran/exoplanets
* Date/Publication: 2021-07-24 16:50:05 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "exoplanets")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 25 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-exoplanets.R:180:5): limit parameter works ────────────────────
      nrow(r) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 25 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘readr’ ‘tibble’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 11 marked UTF-8 strings
    ```

# familiar

<details>

* Version: 1.1.0
* GitHub: https://github.com/alexzwanenburg/familiar
* Source code: https://github.com/cran/familiar
* Date/Publication: 2022-04-07 19:52:29 UTC
* Number of recursive dependencies: 173

Run `cloud_details(, "familiar")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─familiar normalisation_test(...) at test-normalisation.R:234:2
       2.   └─testthat::expect_equal(length(y), 0) at test-normalisation.R:34:6
      ── Failure (test-normalisation.R:234:3): Quantile normalisation is correctly performed ──
      length(y) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      Backtrace:
          ▆
       1. └─familiar normalisation_test(...) at test-normalisation.R:234:2
       2.   └─testthat::expect_equal(length(y), 0) at test-normalisation.R:42:6
      
      [ FAIL 46 | WARN 0 | SKIP 59 | PASS 4641 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        R      3.1Mb
        help   1.0Mb
    ```

# fastLaplace

<details>

* Version: 0.0.2
* GitHub: NA
* Source code: https://github.com/cran/fastLaplace
* Date/Publication: 2021-06-28 08:20:02 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "fastLaplace")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_fsglmm_continuous.R:44:13): fsglmm runs well ──────────────────
      length(result.bin) (`actual`) not equal to 9 (`expected`).
      
      `actual` is an integer vector (9)
      `expected` is a double vector (9)
      ── Failure (test_fsglmm_discrete.R:37:13): fsglmm.discrete runs well ───────────
      length(result.pois.disc) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# fastRG

<details>

* Version: 0.3.0
* GitHub: https://github.com/RoheLab/fastRG
* Source code: https://github.com/cran/fastRG
* Date/Publication: 2021-02-26 09:40:03 UTC
* Number of recursive dependencies: 82

Run `cloud_details(, "fastRG")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-poisson_edges.R:27:3): undirected graphs poisson_edges = FALSE ──
      `max_element_A` (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-poisson_edges.R:67:3): directed graphs poisson_edges = FALSE ──
      `max_element_A` (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 63 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# fauxnaif

<details>

* Version: 0.7.0
* GitHub: https://github.com/rossellhayes/fauxnaif
* Source code: https://github.com/cran/fauxnaif
* Date/Publication: 2022-04-27 22:00:09 UTC
* Number of recursive dependencies: 73

Run `cloud_details(, "fauxnaif")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      ── Failure (test-na_if_in.R:142:3): examples ───────────────────────────────────
      na_if_not(x, 1:5) (`actual`) not equal to `target` (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      ── Failure (test-na_if_in.R:143:3): examples ───────────────────────────────────
      na_if_in(x, ~. > 5) (`actual`) not equal to `target` (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      
      [ FAIL 15 | WARN 0 | SKIP 10 | PASS 24 ]
      Error: Test failures
      Execution halted
    ```

# FCO

<details>

* Version: 0.7.2
* GitHub: NA
* Source code: https://github.com/cran/FCO
* Date/Publication: 2022-02-11 19:20:07 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "FCO")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5)
      ── Failure (test-recommend_dv.R:44:13): Are multiple fit indices supported? ────
      ncol(out$decisions) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-recommend_dv.R:73:13): Is the result rounded properly? ────────
      max(mm) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 11 | WARN 5 | SKIP 0 | PASS 59 ]
      Error: Test failures
      Execution halted
    ```

# fflr

<details>

* Version: 2.0.3
* GitHub: NA
* Source code: https://github.com/cran/fflr
* Date/Publication: 2022-04-06 19:52:29 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "fflr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-abbrev.R:85:3): position un-abbreviation ──────────────────────
      `x` (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-scores.R:16:3): scores by scoring period ──────────────────────
      length(unique(s$scoringPeriodId)) (`actual`) not equal to nrow(s)/4 (`expected`).
      
      `actual` is an integer vector (17)
      `expected` is a double vector (17)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 93 ]
      Error: Test failures
      Execution halted
    ```

# fHMM

<details>

* Version: 1.0.1
* GitHub: https://github.com/loelschlaeger/fHMM
* Source code: https://github.com/cran/fHMM
* Date/Publication: 2022-04-07 13:42:30 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "fHMM")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual[[1]]$pars$df` is a double vector (5, 6)
      `expected[[1]]$pars$df` is an integer vector (5, 6)
      
      `actual[[2]]$pars$sigma` is a double vector (1, 2, 3)
      `expected[[2]]$pars$sigma` is an integer vector (1, 2, 3)
      ── Failure (test-utils.R:22:3): brute force matching works ─────────────────────
      match_all(1:9, 9:1) (`actual`) not equal to 9:1 (`expected`).
      
      `actual` is a double vector (9, 8, 7, 6, 5, ...)
      `expected` is an integer vector (9, 8, 7, 6, 5, ...)
      
      [ FAIL 3 | WARN 0 | SKIP 21 | PASS 48 ]
      Error: Test failures
      Execution halted
    ```

# FielDHub

<details>

* Version: 0.1.0
* GitHub: https://github.com/DidierMurilloF/FielDHub
* Source code: https://github.com/cran/FielDHub
* Date/Publication: 2021-05-19 11:10:08 UTC
* Number of recursive dependencies: 119

Run `cloud_details(, "FielDHub")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$cuts` is a double vector (5, 8, 10)
      ── Failure (test_utils.R:42:3): automatically_cuts is a list of vectors ────────
      automatically_cuts(...) (`actual`) not equal to list(bks = list(1:5, 6:8, 9:10), cuts = c(5, 8, 10)) (`expected`).
      
      `actual$cuts` is an integer vector (5, 8, 10)
      `expected$cuts` is a double vector (5, 8, 10)
      ── Failure (test_utils.R:45:3): automatically_cuts is a list of vectors ────────
      automatically_cuts(...) (`actual`) not equal to list(bks = list(1:5, 6:8, 9:10), cuts = c(5, 8, 10)) (`expected`).
      
      `actual$cuts` is an integer vector (5, 8, 10)
      `expected$cuts` is a double vector (5, 8, 10)
      
      [ FAIL 6 | WARN 1 | SKIP 0 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘attempt’ ‘glue’
      All declared Imports should be used.
    ```

# filearray

<details>

* Version: 0.1.3
* GitHub: https://github.com/dipterix/filearray
* Source code: https://github.com/cran/filearray
* Date/Publication: 2022-01-28 03:20:02 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "filearray")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 10)
      ── Failure (test-cpp.R:41:5): C++: Utils ───────────────────────────────────────
      dim(x) (`actual`) not equal to c(1, 10) (`expected`).
      
      `actual` is an integer vector (1, 10)
      `expected` is a double vector (1, 10)
      ── Failure (test-methods.R:8:5): R: FileArray-class ────────────────────────────
      x$dimension() (`actual`) not equal to `dim` (`expected`).
      
      `actual` is a double vector (3, 4, 5)
      `expected` is an integer vector (3, 4, 5)
      
      [ FAIL 4 | WARN 0 | SKIP 3 | PASS 130 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        libs  10.3Mb
    ```

# finetune

<details>

* Version: 0.2.0
* GitHub: https://github.com/tidymodels/finetune
* Source code: https://github.com/cran/finetune
* Date/Publication: 2022-03-24 18:30:02 UTC
* Number of recursive dependencies: 163

Run `cloud_details(, "finetune")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘helpers.R’
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 15 | PASS 183 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (15)
      
    ...
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-sa-control.R:6:3): control_sim_anneal arg passing ─────────────
      control_sim_anneal(no_improve = 13)$no_improve (`actual`) not equal to 13L (`expected`).
      
      `actual` is a double vector (13)
      `expected` is an integer vector (13)
      
      [ FAIL 1 | WARN 0 | SKIP 15 | PASS 183 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘vctrs’
      All declared Imports should be used.
    ```

# finnts

<details>

* Version: 0.1.1
* GitHub: https://github.com/microsoft/finnts
* Source code: https://github.com/cran/finnts
* Date/Publication: 2022-03-28 22:40:02 UTC
* Number of recursive dependencies: 195

Run `cloud_details(, "finnts")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-forecast_time_series.R:271:3): back test data rows are meaningful ──
      max(horizons) (`actual`) not equal to `forecast_horizon` (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-forecast_time_series.R:294:3): final forecast data rows are meaningful ──
      nrow(future_frame) (`actual`) not equal to length(unique(inp_data_combos$Combo)) * forecast_horizon (`expected`).
      
      `actual` is an integer vector (48)
      `expected` is a double vector (48)
      
      [ FAIL 7 | WARN 1 | SKIP 0 | PASS 106 ]
      Error: Test failures
      Execution halted
    ```

# fitscape

<details>

* Version: 0.1.0
* GitHub: https://github.com/rrrlw/fitscape
* Source code: https://github.com/cran/fitscape
* Date/Publication: 2022-03-01 09:10:01 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "fitscape")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (27)
      ── Failure (test-FitLandDF.R:47:3): non-generic methods work ───────────────────
      ncol(my_df) (`actual`) not equal to length(dims(my_landscape)) + 1 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-FitLandDF.R:49:3): non-generic methods work ───────────────────
      my_df$Value (`actual`) not equal to `vals` (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 14 ]
      Error: Test failures
      Execution halted
    ```

# fitzRoy

<details>

* Version: 1.1.0
* GitHub: https://github.com/jimmyday12/fitzRoy
* Source code: https://github.com/cran/fitzRoy
* Date/Publication: 2022-01-10 07:52:48 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "fitzRoy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (263)
      ── Failure (test-helpers-afl.R:53:3): find round ID functions work ─────────────
      find_round_id(10, season_id = 20) (`actual`) not equal to 436 (`expected`).
      
      `actual` is an integer vector (436)
      `expected` is a double vector (436)
      ── Failure (test-helpers-afl.R:54:3): find round ID functions work ─────────────
      find_round_id(1, 2020, comp = "AFLW") (`actual`) not equal to 288 (`expected`).
      
      `actual` is an integer vector (288)
      `expected` is a double vector (288)
      
      [ FAIL 5 | WARN 0 | SKIP 67 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# fixedincome

<details>

* Version: 0.0.1
* GitHub: https://github.com/wilsonfreitas/R-fixedincome
* Source code: https://github.com/cran/fixedincome
* Date/Publication: 2022-03-17 20:20:02 UTC
* Number of recursive dependencies: 32

Run `cloud_details(, "fixedincome")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-term.R:118:3): it should concatenate terms ────────────────────
      as.numeric(t) (`actual`) not equal to 1:10 (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      ── Failure (test-utils.R:2:3): it should shift vectors ─────────────────────────
      shift(1:3) (`actual`) not equal to c(NA, 1, 2) (`expected`).
      
      `actual` is an integer vector (NA, 1, 2)
      `expected` is a double vector (NA, 1, 2)
      
      [ FAIL 26 | WARN 0 | SKIP 0 | PASS 252 ]
      Error: Test failures
      Execution halted
    ```

# flametree

<details>

* Version: 0.1.3
* GitHub: https://github.com/djnavarro/flametree
* Source code: https://github.com/cran/flametree
* Date/Publication: 2021-11-29 08:00:02 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "flametree")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 241 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-grow.R:134:3): flametree edges are well defined ───────────────
      nrow(dat) (`actual`) not equal to length(unique(dat$id_path)) * 3 (`expected`).
      
      `actual` is an integer vector (381)
      `expected` is a double vector (381)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 241 ]
      Error: Test failures
      Execution halted
    ```

# fm.index

<details>

* Version: 0.1.1
* GitHub: https://github.com/clemenshug/fm.index
* Source code: https://github.com/cran/fm.index
* Date/Publication: 2022-04-08 09:12:29 UTC
* Number of recursive dependencies: 33

Run `cloud_details(, "fm.index")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure (test-index.R:25:3): case sensitivity is respected ──────────────────
      `hits` (`actual`) not equal to data.frame(...) (`expected`).
      
      `actual$pattern_index` is an integer vector (1, 3)
      `expected$pattern_index` is a double vector (1, 3)
      
      `actual$corpus_index` is an integer vector (1, 1)
      `expected$corpus_index` is a double vector (1, 1)
      
      `actual$position` is an integer vector (1, 3)
      `expected$position` is a double vector (1, 3)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 1 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        libs   9.0Mb
    ```

# forestploter

<details>

* Version: 0.1.4
* GitHub: https://github.com/adayim/forestploter
* Source code: https://github.com/cran/forestploter
* Date/Publication: 2022-03-21 21:30:02 UTC
* Number of recursive dependencies: 52

Run `cloud_details(, "forestploter")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      length(xlm) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-utils.R:79:3): Check make_xlim ────────────────────────────────
      unique(ln) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 12 | WARN 0 | SKIP 3 | PASS 11 ]
      Deleting unused snapshots:
      • forest/edit-plot-with-theme.svg
      Error: Test failures
      Execution halted
    ```

# fracture

<details>

* Version: 0.2.0
* GitHub: https://github.com/rossellhayes/fracture
* Source code: https://github.com/cran/fracture
* Date/Publication: 2021-10-25 04:50:02 UTC
* Number of recursive dependencies: 42

Run `cloud_details(, "fracture")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (3, 2)
      ── Failure (test-frac_mat.R:156:3): as.frac_mat() ──────────────────────────────
      frac_mat(1.5, mixed = TRUE) (`actual`) not equal to as.frac_mat(fracture(1.5, mixed = TRUE)) (`expected`).
      
      `actual` is a double vector (1, 1, 2)
      `expected` is an integer vector (1, 1, 2)
      ── Failure (test-fracture.R:284:3): as.integer.fracture() ──────────────────────
      `int` (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 46 | WARN 0 | SKIP 3 | PASS 158 ]
      Error: Test failures
      Execution halted
    ```

# fundiversity

<details>

* Version: 0.2.1
* GitHub: https://github.com/Bisaloo/fundiversity
* Source code: https://github.com/cran/fundiversity
* Date/Publication: 2021-09-21 09:30:02 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "fundiversity")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-raoq.R:13:3): Rao's entropy output format ─────────────────────
      nrow(rq) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-raoq.R:21:3): Rao's entropy output format ─────────────────────
      nrow(rq) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 10 | WARN 0 | SKIP 0 | PASS 158 ]
      Error: Test failures
      Execution halted
    ```

# FuzzyM

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/FuzzyM
* Date/Publication: 2022-02-22 08:20:08 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "FuzzyM")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-mt.R:46:3): positive matrix calc works ────────────────────────
      ...[] (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-mt_prob.R:2:3): multiply matrix prob works ────────────────────
      multiply_matrix_prob(...) (`actual`) not equal to rbind(...) (`expected`).
      
      `actual` is an integer vector (4417, 14356, 30381, 16906, 52141, ...)
      `expected` is a double vector (4417, 14356, 30381, 16906, 52141, ...)
      
      [ FAIL 2 | WARN 1 | SKIP 0 | PASS 87 ]
      Error: Test failures
      Execution halted
    ```

# galah

<details>

* Version: 1.4.0
* GitHub: https://github.com/AtlasOfLivingAustralia/galah
* Source code: https://github.com/cran/galah
* Date/Publication: 2022-01-24 10:52:46 UTC
* Number of recursive dependencies: 163

Run `cloud_details(, "galah")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual` is an integer vector (7)
      `expected` is a double vector (7)
      Class:   expectation_failure/expectation/error/condition
      ── Error (test-deprecated_functions.R:155:3): find_atlases is deprecated ───────
      `{ ... }` threw an unexpected error.
      Message: nrow(deprecated) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      Class:   expectation_failure/expectation/error/condition
      
      [ FAIL 6 | WARN 0 | SKIP 27 | PASS 224 ]
      Error: Test failures
      Execution halted
    ```

# gargle

<details>

* Version: 1.2.0
* GitHub: https://github.com/r-lib/gargle
* Source code: https://github.com/cran/gargle
* Date/Publication: 2021-07-02 16:50:02 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "gargle")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (2)
      ── Failure (test-registry.R:28:3): We can register new credential functions ────
      0 (`actual`) not equal to length(cred_funs_list()) (`expected`).
      
      `actual` is a double vector (0)
      `expected` is an integer vector (0)
      ── Failure (test-registry.R:36:3): We can register new credential functions ────
      1 (`actual`) not equal to length(cred_funs_list()) (`expected`).
      
      `actual` is a double vector (1)
      `expected` is an integer vector (1)
      
      [ FAIL 8 | WARN 0 | SKIP 29 | PASS 197 ]
      Error: Test failures
      Execution halted
    ```

# gargoyle

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/gargoyle
* Date/Publication: 2021-02-25 10:30:02 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "gargoyle")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-logs.R:2:3): get_gargoyle_logs() works ────────────────────────
      nrow(get_gargoyle_logs()) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-logs.R:18:3): get_gargoyle_logs() works ───────────────────────
      nrow(get_gargoyle_logs()) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# gastempt

<details>

* Version: 0.5.5
* GitHub: https://github.com/dmenne/gastempt
* Source code: https://github.com/cran/gastempt
* Date/Publication: 2022-05-02 08:20:04 UTC
* Number of recursive dependencies: 106

Run `cloud_details(, "gastempt")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (10)
      ── Failure (test-simulate_gastempt.R:44:3): When data are missing, records must be shortened ──
      nrow(record) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      ── Failure (test-simulate_gastempt.R:73:3): Default call of simulate_gastempt for powexp must return plausible values ──
      nrow(record) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 11 | WARN 50 | SKIP 10 | PASS 213 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 136.3Mb
      sub-directories of 1Mb or more:
        libs  135.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# GaussSuppression

<details>

* Version: 0.2.0
* GitHub: https://github.com/statisticsnorway/GaussSuppression
* Source code: https://github.com/cran/GaussSuppression
* Date/Publication: 2022-04-05 13:12:30 UTC
* Number of recursive dependencies: 38

Run `cloud_details(, "GaussSuppression")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 21 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • Strange behaviour. Test works, but not when run inside Check package (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-GaussSuppressionFromData.R:5:3): GaussSuppressionFromData works ──
      which(GaussSuppressionFromData(SSBtoolsData("z1"), 1:2, 3, printInc = printInc)$suppressed) (`actual`) not equal to c(12, 13, 22, 23, 42, 43) (`expected`).
      
      `actual` is an integer vector (12, 13, 22, 23, 42, ...)
      `expected` is a double vector (12, 13, 22, 23, 42, ...)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 21 ]
      Error: Test failures
      Execution halted
    ```

# GDPuc

<details>

* Version: 0.9.0
* GitHub: https://github.com/johanneskoch94/GDPuc
* Source code: https://github.com/cran/GDPuc
* Date/Publication: 2022-04-07 16:02:29 UTC
* Number of recursive dependencies: 79

Run `cloud_details(, "GDPuc")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(GDPuc)
      > 
      > test_check("GDPuc")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 313 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-replace_NAs.R:121:3): lin_int_ext ─────────────────────────────
      lin_int_ext(x) (`actual`) not equal to -4:14 (`expected`).
      
      `actual` is a double vector (-4, -3, -2, -1, 0, ...)
      `expected` is an integer vector (-4, -3, -2, -1, 0, ...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 313 ]
      Error: Test failures
      Execution halted
    ```

# geomander

<details>

* Version: 2.0.3
* GitHub: https://github.com/christopherkenny/geomander
* Source code: https://github.com/cran/geomander
* Date/Publication: 2022-03-07 01:10:02 UTC
* Number of recursive dependencies: 124

Run `cloud_details(, "geomander")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (32)
      ── Failure (test-seam.R:33:3): seam_sew works ──────────────────────────────────
      `a` (`actual`) not equal to `e` (`expected`).
      
      `actual` is an integer vector (98)
      `expected` is a double vector (98)
      ── Failure (test-split.R:34:3): split works ────────────────────────────────────
      nrow(a) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 22 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.8Mb
      sub-directories of 1Mb or more:
        data   1.3Mb
        libs   4.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# geomtextpath

<details>

* Version: 0.1.0
* GitHub: https://github.com/AllanCameron/geomtextpath
* Source code: https://github.com/cran/geomtextpath
* Date/Publication: 2022-01-24 19:32:49 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "geomtextpath")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (10, 2)
      ── Failure (test-utils.R:41:3): data_frame works ───────────────────────────────
      dim(test) (`actual`) not equal to c(5, 2) (`expected`).
      
      `actual` is an integer vector (5, 2)
      `expected` is a double vector (5, 2)
      ── Failure (test-utils.R:175:3): Labels can be created from expressions ────────
      make_label(list(1, 2)) (`actual`) not equal to 1:2 (`expected`).
      
      `actual` is a double vector (1, 2)
      `expected` is an integer vector (1, 2)
      
      [ FAIL 22 | WARN 171 | SKIP 3 | PASS 439 ]
      Error: Test failures
      Execution halted
    ```

# geos

<details>

* Version: 0.1.3
* GitHub: https://github.com/paleolimbot/geos
* Source code: https://github.com/cran/geos
* Date/Publication: 2021-11-07 05:10:03 UTC
* Number of recursive dependencies: 44

Run `cloud_details(, "geos")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-geos-unary-geometry.R:364:3): set precision works ─────────────
      geos_num_geometries(...) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-geos-unary-geometry.R:368:3): set precision works ─────────────
      geos_num_geometries(...) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 541 ]
      Error: Test failures
      Execution halted
    ```

# ggdag

<details>

* Version: 0.2.4
* GitHub: https://github.com/malcolmbarrett/ggdag
* Source code: https://github.com/cran/ggdag
* Date/Publication: 2021-10-10 18:50:02 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "ggdag")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • geom_dag/geom-dag-edges-fan-is-fany.svg
      • geom_dag/geom-dag-label-repel-repels-labels.svg
      • ggdag/ggdag-classic-plots-basic-dag-classically.svg
      • paths/ggdag-paths-fan-draws-4-open-paths.svg
      • quick_plots/ggdag-butterfly-bias-is-a-butterfly.svg
      • quick_plots/ggdag-collider-triangle-is-triangle-too.svg
      • quick_plots/ggdag-confounder-triangle-is-triangle.svg
      • relations/ggdag-ancestors-identifies-v-w1-and-z1.svg
      • relations/ggdag-descendants-identifies-y-x-and-z1.svg
      • relations/ggdag-parents-identifies-z2-x-w1-and-w2.svg
      • themes/theme-dag-gray-grid.svg
      • themes/theme-dag-gray.svg
      • themes/theme-dag-grid.svg
      Error: Test failures
      Execution halted
    ```

# ggdendro

<details>

* Version: 0.1.23
* GitHub: https://github.com/andrie/ggdendro
* Source code: https://github.com/cran/ggdendro
* Date/Publication: 2022-02-16 13:20:02 UTC
* Number of recursive dependencies: 79

Run `cloud_details(, "ggdendro")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (196)
      ── Failure (test-1-dendrogram.R:21:3): data_dendrogram() returns a correct classes ──
      nrow(ddata$segments) (`actual`) not equal to 98 (`expected`).
      
      `actual` is an integer vector (98)
      `expected` is a double vector (98)
      ── Failure (test-2-hclust.R:10:3): data_hclust() returns the correct classes ───
      nrow(segment(ddata)) (`actual`) not equal to 196 (`expected`).
      
      `actual` is an integer vector (196)
      `expected` is a double vector (196)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# ggeffects

<details>

* Version: 1.1.2
* GitHub: https://github.com/strengejacke/ggeffects
* Source code: https://github.com/cran/ggeffects
* Date/Publication: 2022-04-10 21:32:33 UTC
* Number of recursive dependencies: 229

Run `cloud_details(, "ggeffects")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7)
      ── Failure (test-poly-zeroinf.R:53:5): ggpredict, glmmTMB ──────────────────────
      ncol(pr) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      ── Failure (test-poly-zeroinf.R:56:5): ggpredict, glmmTMB ──────────────────────
      ncol(pr) (`actual`) not equal to 7 (`expected`).
      
      `actual` is an integer vector (7)
      `expected` is a double vector (7)
      
      [ FAIL 15 | WARN 0 | SKIP 10 | PASS 309 ]
      Error: Test failures
      Execution halted
    ```

# ggh4x

<details>

* Version: 0.2.1
* GitHub: https://github.com/teunbrand/ggh4x
* Source code: https://github.com/cran/ggh4x
* Date/Publication: 2021-11-24 13:20:02 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "ggh4x")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (512)
      ── Failure (test-themes.R:10:3): theme elements can be removed ─────────────────
      sum(grepl("ggh4x.axis", names(tree))) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-themes.R:16:3): theme elements can be set again ───────────────
      sum(grepl("ggh4x.axis", names(tree))) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 78 | WARN 0 | SKIP 2 | PASS 672 ]
      Error: Test failures
      Execution halted
    ```

# gghighlight

<details>

* Version: 0.3.2
* GitHub: https://github.com/yutannihilation/gghighlight
* Source code: https://github.com/cran/gghighlight
* Date/Publication: 2021-06-05 14:40:02 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "gghighlight")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2, 2, 2, 1, 1, ...)
      ── Failure (test-calculate-group.R:58:3): calculate_group_info() works with facets ──
      calculate_group_info(d, aes(idx, value, colour = cat1), extra_vars = quos(cat2 = cat2)) (`actual`) not equal to list(data = d_expect, id = ids, key = aes(colour = cat1)) (`expected`).
      
      `actual$id` is an integer vector (1, 1, 2, 2, 3, ...)
      `expected$id` is a double vector (1, 1, 2, 2, 3, ...)
      ── Failure (test-calculate-group.R:62:3): calculate_group_info() works with facets ──
      calculate_group_info(d, aes(idx, value), extra_vars = quos(cat2 = cat2)) (`actual`) not equal to list(data = d_expect[, c("x", "y")], id = ids[c(1:4, 1:4)], key = aes()) (`expected`).
      
      `actual$id` is an integer vector (1, 1, 2, 2, 1, ...)
      `expected$id` is a double vector (1, 1, 2, 2, 1, ...)
      
      [ FAIL 6 | WARN 49 | SKIP 1 | PASS 185 ]
      Error: Test failures
      Execution halted
    ```

# ggHoriPlot

<details>

* Version: 1.0.0
* GitHub: https://github.com/rivasiker/ggHoriPlot
* Source code: https://github.com/cran/ggHoriPlot
* Date/Publication: 2021-09-13 08:00:02 UTC
* Number of recursive dependencies: 111

Run `cloud_details(, "ggHoriPlot")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-geom_horizon.R:122:3): The integer horizonscale works ─────────
      length(levels(layer_data(p)$Cutpoints)) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      ── Failure (test-geom_horizon.R:166:3): The processed table has the right dimensions with xend ──
      nrow(layer_data(p)) (`actual`) not equal to nrow(df) * 2 * length(levels(layer_data(p)$Cutpoints)) (`expected`).
      
      `actual` is an integer vector (120)
      `expected` is a double vector (120)
      
      [ FAIL 3 | WARN 0 | SKIP 1 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# ghypernet

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/ghypernet
* Date/Publication: 2021-10-15 13:30:05 UTC
* Number of recursive dependencies: 95

Run `cloud_details(, "ghypernet")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(ghypernet)
      > 
      > test_check("ghypernet")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 6 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-ghype.R:5:3): scm returns right df ────────────────────────────
      scm(adj_karate[1:15, 16:25])$df (`actual`) not equal to c(directed = 25) (`expected`).
      
      `actual` is an integer vector (25)
      `expected` is a double vector (25)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘methods’
      All declared Imports should be used.
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 11 marked UTF-8 strings
    ```

# gitdown

<details>

* Version: 0.1.6
* GitHub: https://github.com/Thinkr-open/gitdown
* Source code: https://github.com/cran/gitdown
* Date/Publication: 2022-03-05 20:40:02 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "gitdown")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7)
      ── Failure (test-utils.R:106:3): each_commit ───────────────────────────────────
      length(two_commits) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-utils.R:116:3): each_commit ───────────────────────────────────
      length(no_commits) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 64 ]
      Error: Test failures
      Execution halted
    ```

# GlmSimulatoR

<details>

* Version: 0.2.5
* GitHub: NA
* Source code: https://github.com/cran/GlmSimulatoR
* Date/Publication: 2021-11-04 18:10:02 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "GlmSimulatoR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test_simullate_gaussian.R:64:3): Returns the correct number of unrelated variables. ──
      ncol(simulate_gaussian(weights = 1:2, unrelated = 2)) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test_simullate_gaussian.R:65:3): Returns the correct number of unrelated variables. ──
      ncol(simulate_gaussian(weights = 1:2, unrelated = 3)) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      
      [ FAIL 109 | WARN 0 | SKIP 0 | PASS 281 ]
      Error: Test failures
      Execution halted
    ```

# googledrive

<details>

* Version: 2.0.0
* GitHub: https://github.com/tidyverse/googledrive
* Source code: https://github.com/cran/googledrive
* Date/Publication: 2021-07-08 09:10:06 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "googledrive")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-compat-dplyr.R:247:3): anti_join() can keep dribble class ─────
      nrow(result) (`actual`) not equal to nrow(x) - 1 (`expected`).
      
      `actual` is an integer vector (9)
      `expected` is a double vector (9)
      ── Failure (test-dribble.R:16:3): dribble() creates empty dribble ──────────────
      nrow(dribble()) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 2 | WARN 0 | SKIP 122 | PASS 253 ]
      Error: Test failures
      Execution halted
    ```

# googlesheets4

<details>

* Version: 1.0.0
* GitHub: https://github.com/tidyverse/googlesheets4
* Source code: https://github.com/cran/googlesheets4
* Date/Publication: 2021-07-21 18:50:01 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "googlesheets4")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-schema_GridRange.R:46:3): we can make a GridRange from a range_spec ──
      out$endRowIndex (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-schema_GridRange.R:48:3): we can make a GridRange from a range_spec ──
      out$endColumnIndex (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 14 | WARN 0 | SKIP 48 | PASS 386 ]
      Error: Test failures
      Execution halted
    ```

# grates

<details>

* Version: 0.3.0
* GitHub: https://github.com/reconverse/grates
* Source code: https://github.com/cran/grates
* Date/Publication: 2021-10-21 21:10:02 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "grates")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual` is an integer vector (0, -1)
      `expected` is a double vector (0, -1)
      
      [ FAIL 22 | WARN 0 | SKIP 23 | PASS 388 ]
      Deleting unused snapshots:
      • plots/month.png
      • plots/month2.png
      • plots/quarter.png
      • plots/twentyeight_days.png
      • plots/two_weeks.png
      • plots/year.png
      • plots/yearweek_monday.png
      • plots/yearweek_thursday.png
      Error: Test failures
      Execution halted
    ```

# grpsel

<details>

* Version: 1.2.0
* GitHub: https://github.com/ryan-thompson/grpsel
* Source code: https://github.com/cran/grpsel
* Date/Publication: 2022-01-10 12:32:42 UTC
* Number of recursive dependencies: 64

Run `cloud_details(, "grpsel")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5)
      ── Failure (test-grpsel.R:343:3): number of group lasso solutions is ngamma for logistic loss ──
      ncol(beta) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test-grpsel.R:356:3): number of group lasso solutions is ngamma ────
      ncol(beta) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 46 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        libs   8.8Mb
    ```

# gstsm

<details>

* Version: 0.0.1
* GitHub: NA
* Source code: https://github.com/cran/gstsm
* Date/Publication: 2021-11-08 15:30:02 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "gstsm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-split_groups.R:48:3): a group should be created ───────────────
      length(gstsm::split_groups(positions, adjacency_matrix)) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-split_groups.R:72:3): two groups should be created ────────────
      length(gstsm::split_groups(positions, adjacency_matrix)) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# guaguas

<details>

* Version: 0.3.0
* GitHub: https://github.com/rivaquiroga/guaguas
* Source code: https://github.com/cran/guaguas
* Date/Publication: 2022-03-09 12:20:02 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "guaguas")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-data.R:4:3): guaguas nrow matches docs ────────────────────────
      858782 (`actual`) not equal to nrow(guaguas) (`expected`).
      
      `actual` is a double vector (858782)
      `expected` is an integer vector (858782)
      ── Failure (test-data.R:17:3): guaguas_frecuentes nrow matches docs ────────────
      86366 (`actual`) not equal to nrow(guaguas_frecuentes) (`expected`).
      
      `actual` is a double vector (86366)
      `expected` is an integer vector (86366)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 3 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 42384 marked UTF-8 strings
    ```

# happign

<details>

* Version: 0.1.4
* GitHub: https://github.com/paul-carteron/happign
* Source code: https://github.com/cran/happign
* Date/Publication: 2022-04-25 22:10:03 UTC
* Number of recursive dependencies: 129

Run `cloud_details(, "happign")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 7)
      ── Failure (test-get_wms_raster.R:57:4): grid ──────────────────────────────────
      length(grid(shape, resolution = 0.05)) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-get_wms_raster.R:74:4): nb_pixel_bbox ─────────────────────────
      length(nb_pixel_bbox(shape, resolution = 10)) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 5 | WARN 0 | SKIP 2 | PASS 35 ]
      Error: Test failures
      Execution halted
    ```

# haven

<details>

* Version: 2.5.0
* GitHub: https://github.com/tidyverse/haven
* Source code: https://github.com/cran/haven
* Date/Publication: 2022-04-15 16:02:30 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "haven")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, NA, 3, NA, 5)
      ── Failure (test-zap_missing.R:13:3): converts user-defined missings ───────────
      as.integer(x2) (`actual`) not equal to c(1, 2, NA) (`expected`).
      
      `actual` is an integer vector (1, 2, NA)
      `expected` is a double vector (1, 2, NA)
      ── Failure (test-zap_missing.R:18:3): converts user-defined missings ───────────
      as.integer(x4) (`actual`) not equal to c(1, NA, 3, NA, 5, 6, 7, NA, NA, NA) (`expected`).
      
      `actual` is an integer vector (1, NA, 3, NA, 5, ...)
      `expected` is a double vector (1, NA, 3, NA, 5, ...)
      
      [ FAIL 60 | WARN 0 | SKIP 16 | PASS 369 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.4Mb
      sub-directories of 1Mb or more:
        libs   4.8Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘dplyr’
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# hilbert

<details>

* Version: 0.2.1
* GitHub: https://github.com/program--/hilbert
* Source code: https://github.com/cran/hilbert
* Date/Publication: 2022-04-08 08:42:30 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "hilbert")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$y` is an integer vector (2)
      `expected$y` is a double vector (2)
      ── Failure (test-position.R:63:5): [32-bit] basic position @ n = 2 ─────────────
      hilbert::position(10, n = 2L) (`actual`) not equal to data.frame(x = 3, y = 3) (`expected`).
      
      `actual$x` is an integer vector (3)
      `expected$x` is a double vector (3)
      
      `actual$y` is an integer vector (3)
      `expected$y` is a double vector (3)
      
      [ FAIL 43 | WARN 0 | SKIP 0 | PASS 97 ]
      Error: Test failures
      Execution halted
    ```

# HistDat

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/HistDat
* Date/Publication: 2021-04-06 07:10:20 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "HistDat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 2, 2, 3, 3, ...)
      ── Failure (test-histogram.R:46:5): histogram math is the same as regular math ──
      func(h) (`actual`) not equal to func(v) (`expected`).
      
      `actual` is a double vector (15)
      `expected` is an integer vector (15)
      ── Failure (test-histogram.R:64:5): HistDat works with massive counts ──────────
      func(h_big)/1e+12 (`actual`) not equal to func(h_small) (`expected`).
      
      `actual` is a double vector (6)
      `expected` is an integer vector (6)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 26 ]
      Error: Test failures
      Execution halted
    ```

# httptest

<details>

* Version: 4.1.0
* GitHub: https://github.com/nealrichardson/httptest
* Source code: https://github.com/cran/httptest
* Date/Publication: 2021-09-22 21:20:08 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "httptest")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$b` is a double vector (2)
      ── Failure (test-fake-http.R:62:7): fakePATCH with body ────────────────────────
      content(p) (`actual`) not equal to list(b = 2) (`expected`).
      
      `actual$b` is an integer vector (2)
      `expected$b` is a double vector (2)
      ── Failure (test-fake-http.R:85:7): fakePOST with body ─────────────────────────
      content(p) (`actual`) not equal to list(b = 2) (`expected`).
      
      `actual$b` is an integer vector (2)
      `expected$b` is a double vector (2)
      
      [ FAIL 3 | WARN 0 | SKIP 12 | PASS 285 ]
      Error: Test failures
      Execution halted
    ```

# httptest2

<details>

* Version: 0.1.0
* GitHub: https://github.com/nealrichardson/httptest2
* Source code: https://github.com/cran/httptest2
* Date/Publication: 2022-01-10 08:52:45 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "httptest2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$query$a` is a double vector (1)
      ── Failure (test-mock-paths.R:45:5): GET with query, different mock path ───────
      resp_body_json(obj) (`actual`) not equal to list(query = list(a = 1), mocked = "twice") (`expected`).
      
      `actual$query$a` is an integer vector (1)
      `expected$query$a` is a double vector (1)
      ── Failure (test-mock-paths.R:68:5): NULL mockPaths resets to default ──────────
      resp_body_json(obj) (`actual`) not equal to list(query = list(a = 1), mocked = "yes") (`expected`).
      
      `actual$query$a` is an integer vector (1)
      `expected$query$a` is a double vector (1)
      
      [ FAIL 4 | WARN 2 | SKIP 10 | PASS 213 ]
      Error: Test failures
      Execution halted
    ```

# hydropeak

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/hydropeak
* Date/Publication: 2022-03-11 15:40:10 UTC
* Number of recursive dependencies: 48

Run `cloud_details(, "hydropeak")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected[[2]]` is a double vector (4, 6, 8, 9)
      ── Failure (test-events.R:53:3): change points are computed correctly including constant event ──
      change_points(testQ, omit.constant = FALSE) (`actual`) not equal to `result` (`expected`).
      
      `actual[[2]]` is an integer vector (2, 4, 6, 8, 9, ...)
      `expected[[2]]` is a double vector (2, 4, 6, 8, 9, ...)
      ── Failure (test-events.R:69:13): change points are computed correctly including constant and na event ──
      change_points(testQ, omit.constant = FALSE, omit.na = FALSE) (`actual`) not equal to `result` (`expected`).
      
      `actual[[2]]` is an integer vector (3, 4, 7, 12, 13, ...)
      `expected[[2]]` is a double vector (3, 4, 7, 12, 13, ...)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

# i18n

<details>

* Version: 0.1.0
* GitHub: https://github.com/rich-iannone/i18n
* Source code: https://github.com/cran/i18n
* Date/Publication: 2022-03-29 07:40:08 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "i18n")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7)
      ── Failure (test-datasets.R:34:3): Tabular datasets have the expected dimensions ──
      ncol(character_labels) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-datasets.R:38:3): Tabular datasets have the expected dimensions ──
      ncol(characters) (`actual`) not equal to 12 (`expected`).
      
      `actual` is an integer vector (12)
      `expected` is a double vector (12)
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 27 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 470495 marked UTF-8 strings
    ```

# ICD10gm

<details>

* Version: 1.2.4
* GitHub: https://github.com/edonnachie/ICD10gm
* Source code: https://github.com/cran/ICD10gm
* Date/Publication: 2021-12-05 14:10:14 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "ICD10gm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-icd_showchanges.R:23:3): icd_showchanges multiple diagnoses ───
      nrow(changes_multiple_icd) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-icd_showchanges.R:35:3): icd_showchanges doesn't require the years argument ──
      nrow(changes_multiple_icd) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 47 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 329984 marked UTF-8 strings
    ```

# ICvectorfields

<details>

* Version: 0.1.2
* GitHub: https://github.com/goodsman/ICvectorfields
* Source code: https://github.com/cran/ICvectorfields
* Date/Publication: 2022-02-26 22:30:02 UTC
* Number of recursive dependencies: 90

Run `cloud_details(, "ICvectorfields")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(ICvectorfields)
      > 
      > test_check("ICvectorfields")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 51 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-utils_functions.R:30:3): raster to matrix conversion works ────
      RastToMatrix(rastz) (`actual`) not equal to `matz` (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 51 ]
      Error: Test failures
      Execution halted
    ```

# iGraphMatch

<details>

* Version: 2.0.0
* GitHub: https://github.com/dpmcsuss/iGraphMatch
* Source code: https://github.com/cran/iGraphMatch
* Date/Publication: 2021-11-10 22:10:02 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "iGraphMatch")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$B` is an integer vector (3, 4)
      `expected$B` is a double vector (3, 4)
      ── Failure (test-seeds.R:26:3): example in documentation ───────────────────────
      check_seeds(as.data.frame(matrix(1:4, 2)), nv = 10)$seeds (`actual`) not equal to data.frame(A = c(1, 2), B = c(3, 4)) (`expected`).
      
      `actual$A` is an integer vector (1, 2)
      `expected$A` is a double vector (1, 2)
      
      `actual$B` is an integer vector (3, 4)
      `expected$B` is a double vector (3, 4)
      
      [ FAIL 43 | WARN 0 | SKIP 25 | PASS 106 ]
      Error: Test failures
      Execution halted
    ```

# ijtiff

<details>

* Version: 2.2.7
* GitHub: https://github.com/ropensci/ijtiff
* Source code: https://github.com/cran/ijtiff
* Date/Publication: 2021-06-28 07:00:06 UTC
* Number of recursive dependencies: 95

Run `cloud_details(, "ijtiff")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$frame1$rows_per_strip` is a double vector (76)
      ── Failure (test-read_tags-examples.R:32:3): `read_tags()` works ───────────────
      dplyr::n_distinct(read_tags(path, "all")) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_class_constructors.R:15:3): ijtiff_img works ──────────────────
      dim(ijtiff_img(img)) (`actual`) not equal to c(2, 2, 1, 2) (`expected`).
      
      `actual` is an integer vector (2, 2, 1, 2)
      `expected` is a double vector (2, 2, 1, 2)
      
      [ FAIL 36 | WARN 110 | SKIP 2 | PASS 79 ]
      Error: Test failures
      Execution halted
    ```

# IMD

<details>

* Version: 1.0.2
* GitHub: https://github.com/matthewgthomas/IMD
* Source code: https://github.com/cran/IMD
* Date/Publication: 2021-08-10 09:00:04 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "IMD")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (410)
      ── Failure (test-imd_wales_ward.R:2:3): correct number of rows ─────────────────
      nrow(imd_wales_ward) (`actual`) not equal to 843 (`expected`).
      
      `actual` is an integer vector (843)
      `expected` is a double vector (843)
      ── Failure (test-load_composite_imd.R:4:3): data loads ─────────────────────────
      nrow(imd_uk) (`actual`) not equal to 42619 (`expected`).
      
      `actual` is an integer vector (42619)
      `expected` is a double vector (42619)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 18 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Hmisc’ ‘devtools’ ‘httr’ ‘readODS’ ‘readxl’ ‘tidyr’
      All declared Imports should be used.
    ```

# impactr

<details>

* Version: 0.4.0
* GitHub: https://github.com/verasls/impactr
* Source code: https://github.com/cran/impactr
* Date/Publication: 2022-01-16 00:12:41 UTC
* Number of recursive dependencies: 101

Run `cloud_details(, "impactr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (9)
      ── Failure (test-read_acc.R:48:3): output attributes are correct ───────────────
      length(attributes(test_raw)) (`actual`) not equal to 9 (`expected`).
      
      `actual` is an integer vector (9)
      `expected` is a double vector (9)
      ── Failure (test-utils.R:81:3): define_region() works ──────────────────────────
      nrow(out) (`actual`) not equal to 200 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      
      [ FAIL 22 | WARN 0 | SKIP 10 | PASS 78 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘accdata’
    ```

# imputeGeneric

<details>

* Version: 0.1.0
* GitHub: https://github.com/torockel/imputeGeneric
* Source code: https://github.com/cran/imputeGeneric
* Date/Publication: 2022-03-03 09:20:05 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "imputeGeneric")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (8)
      ── Failure (test-utils.R:57:3): get_row_indices() works with only_complete ─────
      get_row_indices(...) (`actual`) not equal to c(1, 3, 6) (`expected`).
      
      `actual` is an integer vector (1, 3, 6)
      `expected` is a double vector (1, 3, 6)
      ── Failure (test-utils.R:114:3): get_row_indices() works with all_except_i ─────
      get_row_indices("all_except_i", M = M1, i = 3) (`actual`) not equal to c(1, 2, 4:8) (`expected`).
      
      `actual` is an integer vector (1, 2, 4, 5, 6, ...)
      `expected` is a double vector (1, 2, 4, 5, 6, ...)
      
      [ FAIL 15 | WARN 0 | SKIP 1 | PASS 86 ]
      Error: Test failures
      Execution halted
    ```

# incase

<details>

* Version: 0.3.1
* GitHub: https://github.com/rossellhayes/incase
* Source code: https://github.com/cran/incase
* Date/Publication: 2021-06-06 04:10:07 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "incase")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual[[3]]` is an integer vector (3)
      `expected[[3]]` is a double vector (3)
      ── Failure (test-in_case_list.R:29:3): in_case_list ────────────────────────────
      dplyr::tibble(x = 1:3) %>% ... (`actual`) not equal to dplyr::tibble(x = 1:3, y = list(mtcars, 2, 3)) (`expected`).
      
      `actual$y[[2]]` is an integer vector (2)
      `expected$y[[2]]` is a double vector (2)
      
      `actual$y[[3]]` is an integer vector (3)
      `expected$y[[3]]` is a double vector (3)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 111 ]
      Error: Test failures
      Execution halted
    ```

# incidence2

<details>

* Version: 1.2.3
* GitHub: https://github.com/reconverse/incidence2
* Source code: https://github.com/cran/incidence2
* Date/Publication: 2021-11-07 22:00:02 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "incidence2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual` is an integer vector (0, 31, 28, 31, 30, ...)
      `expected` is a double vector (0, 31, 28, 31, 30, ...)
      
      [ FAIL 12 | WARN 0 | SKIP 31 | PASS 174 ]
      Deleting unused snapshots:
      • plots/day.png
      • plots/double.png
      • plots/integer.png
      • plots/month_grouped.png
      • plots/multiday.png
      • plots/quarterly_grouped.png
      • plots/week_grouped.png
      Error: Test failures
      Execution halted
    ```

# inlabru

<details>

* Version: 2.5.2
* GitHub: https://github.com/inlabru-org/inlabru
* Source code: https://github.com/cran/inlabru
* Date/Publication: 2022-03-30 16:20:05 UTC
* Number of recursive dependencies: 129

Run `cloud_details(, "inlabru")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test_ipoints.R:23:3): conversion of 1D mesh to integration points ──
      nrow(ips) (`actual`) not equal to 11 (`expected`).
      
      `actual` is an integer vector (11)
      `expected` is a double vector (11)
      ── Failure (test_ipoints.R:24:3): conversion of 1D mesh to integration points ──
      ncol(ips) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 12 | WARN 0 | SKIP 39 | PASS 64 ]
      Error: Test failures
      Execution halted
    ```

# insight

<details>

* Version: 0.17.0
* GitHub: https://github.com/easystats/insight
* Source code: https://github.com/cran/insight
* Date/Publication: 2022-03-29 06:40:05 UTC
* Number of recursive dependencies: 329

Run `cloud_details(, "insight")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (915)
      ── Failure (test-zeroinfl.R:99:5): find_parameters ─────────────────────────────
      nrow(get_parameters(m1)) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      ── Failure (test-zeroinfl.R:100:5): find_parameters ────────────────────────────
      nrow(get_parameters(m1, component = "zi")) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 252 | WARN 7 | SKIP 14 | PASS 2066 ]
      Error: Test failures
      Execution halted
    ```

# iNZightTools

<details>

* Version: 1.12.2
* GitHub: https://github.com/iNZightVIT/iNZightTools
* Source code: https://github.com/cran/iNZightTools
* Date/Publication: 2022-01-18 23:32:42 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "iNZightTools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test_read_metadata.R:24:5): First row is read if no title/description given ──
      length(readMetaComments("meta.txt")$columns) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test_read_metadata.R:44:5): Multiple response data read correctly ──
      m$tech_phone (`actual`) not equal to c(1L, 1L, 1L, 0L) (`expected`).
      
      `actual` is a double vector (1, 1, 1, 0)
      `expected` is an integer vector (1, 1, 1, 0)
      
      [ FAIL 3 | WARN 0 | SKIP 4 | PASS 334 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘tidyverse’
    ```

# IPDFileCheck

<details>

* Version: 0.7.5
* GitHub: NA
* Source code: https://github.com/cran/IPDFileCheck
* Date/Publication: 2022-02-01 08:00:10 UTC
* Number of recursive dependencies: 143

Run `cloud_details(, "IPDFileCheck")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 2)
      ── Failure (test-IPDFilecheck.R:946:3): testing getting summary from gtsummary ──
      summary_tempdata$N (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-IPDFilecheck.R:951:3): testing getting summary from gtsummary ──
      this$N (`actual`) not equal to 200 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 162 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gmodels’ ‘lmtest’ ‘testthat’ ‘tidyverse’ ‘zoo’
      All declared Imports should be used.
    ```

# ipmr

<details>

* Version: 0.0.5
* GitHub: https://github.com/levisc8/ipmr
* Source code: https://github.com/cran/ipmr
* Date/Publication: 2022-04-28 13:40:08 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "ipmr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (1, 1, 1, 1, 1, ...)
      ── Failure (test-simple_di_stoch_param.R:878:3): predict() works with variables from define_env_state ──
      dim(param_resamp_model$env_seq) (`actual`) not equal to c(10, 2) (`expected`).
      
      `actual` is an integer vector (10, 2)
      `expected` is a double vector (10, 2)
      ── Failure (test-simple_di_stoch_param.R:886:3): return_sub_kernels works as expected ──
      param_resamp_model$sub_kernels[[1]] (`actual`) not equal to NA_real_ (`expected`).
      
      `actual` is an S3 object of class <ipmr_matrix/numeric>, a double vector
      `expected` is a double vector (NA)
      
      [ FAIL 12 | WARN 0 | SKIP 1 | PASS 356 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        doc    1.3Mb
        libs   2.6Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘Rpadrino’
    ```

# isaeditor

<details>

* Version: 0.1.1
* GitHub: https://github.com/bihealth/isaeditor
* Source code: https://github.com/cran/isaeditor
* Date/Publication: 2021-09-29 08:00:02 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "isaeditor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test-listing.R:19:3): node_show works ──────────────────────────────
      sum(ns$is_node) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-listing.R:42:3): prop_select works ────────────────────────────
      nrow(x$isa_s) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 210 ]
      Error: Test failures
      Execution halted
    ```

# isoband

<details>

* Version: 0.2.5
* GitHub: https://github.com/wilkelab/isoband
* Source code: https://github.com/cran/isoband
* Date/Publication: 2021-07-13 04:50:13 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "isoband")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 2, 2)
      ── Failure (test-label-placer.R:112:3): manual label placer ────────────────────
      out$x (`actual`) not equal to c(1, 2, 4) (`expected`).
      
      `actual` is an integer vector (1, 2, 4)
      `expected` is a double vector (1, 2, 4)
      ── Failure (test-label-placer.R:113:3): manual label placer ────────────────────
      out$y (`actual`) not equal to c(4, 3, 1) (`expected`).
      
      `actual` is an integer vector (4, 3, 1)
      `expected` is a double vector (4, 3, 1)
      
      [ FAIL 27 | WARN 0 | SKIP 0 | PASS 447 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.9Mb
      sub-directories of 1Mb or more:
        libs  11.0Mb
    ```

# itan

<details>

* Version: 3.1.1
* GitHub: https://github.com/arielarmijo/itan
* Source code: https://github.com/cran/itan
* Date/Publication: 2022-02-10 13:40:06 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "itan")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$NA` is an integer vector (2, 1, 2, 1, 1, ...)
      `expected$NA` is a double vector (2, 1, 2, 1, 1, ...)
      Backtrace:
          ▆
       1. └─testthat::expect_mapequal(actual, expected) at test-calcularFrecuenciaAlternativas.R:54:2
       2.   └─testthat::expect_equal(act$val[exp_nms], exp$val)
      ── Failure (test-utils.R:59:3): dicotomize ─────────────────────────────────────
      `actual` (`actual`) not equal to `expected` (`expected`).
      
      `actual` is a double vector (0, 0, 0, 0, 0, ...)
      `expected` is an integer vector (0, 0, 0, 0, 0, ...)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 98 ]
      Error: Test failures
      Execution halted
    ```

# itscalledsoccer

<details>

* Version: 0.2.0
* GitHub: https://github.com/American-Soccer-Analysis/itscalledsoccer
* Source code: https://github.com/cran/itscalledsoccer
* Date/Publication: 2022-04-14 10:12:33 UTC
* Number of recursive dependencies: 51

Run `cloud_details(, "itscalledsoccer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_entities.R:582:5): Querying games works properly ──────────────
      `.obj` (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_entities.R:588:5): Querying games works properly ──────────────
      `.obj` (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 277 ]
      Error: Test failures
      Execution halted
    ```

# jagstargets

<details>

* Version: 1.0.1
* GitHub: https://github.com/ropensci/jagstargets
* Source code: https://github.com/cran/jagstargets
* Date/Publication: 2021-12-03 08:10:02 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "jagstargets")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 56 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (7)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-tar_jags_df.R:82:3): tar_jags_df() with dic ───────────────────
      nrow(dic) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 56 ]
      Error: Test failures
      Execution halted
    ```

# japanstat

<details>

* Version: 0.1.0
* GitHub: https://github.com/UchidaMizuki/japanstat
* Source code: https://github.com/cran/japanstat
* Date/Publication: 2021-11-29 08:10:05 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "japanstat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 14 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (3)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-estat-dplyr.R:46:3): estat-select ─────────────────────────────
      vctrs::vec_size(items) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 14 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1984 marked UTF-8 strings
    ```

# jmvReadWrite

<details>

* Version: 0.3.1
* GitHub: https://github.com/sjentsch/jmvReadWrite
* Source code: https://github.com/cran/jmvReadWrite
* Date/Publication: 2022-02-28 18:00:07 UTC
* Number of recursive dependencies: 159

Run `cloud_details(, "jmvReadWrite")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1452, 3)
      ── Failure (test-write_omv.R:22:5): write_omv works ────────────────────────────
      dim(dtaDbg$dtaFrm) (`actual`) not equal to c(60, 7) (`expected`).
      
      `actual` is an integer vector (60, 7)
      `expected` is a double vector (60, 7)
      ── Failure (test-write_omv.R:43:5): write_omv works ────────────────────────────
      as.integer(table(dtaInp[["Bool"]])) (`actual`) not equal to c(29, 31) (`expected`).
      
      `actual` is an integer vector (29, 31)
      `expected` is a double vector (29, 31)
      
      [ FAIL 33 | WARN 0 | SKIP 0 | PASS 189 ]
      Error: Test failures
      Execution halted
    ```

# JointAI

<details>

* Version: 1.0.3
* GitHub: https://github.com/nerler/JointAI
* Source code: https://github.com/cran/JointAI
* Date/Publication: 2021-11-28 15:20:14 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "JointAI")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$id` is an integer vector (1, 4)
      `expected$id` is a double vector (1, 4)
      ── Failure (test-helpfun_divide_matrices.R:248:3): get_nranef ──────────────────
      get_nranef(idvar = c("id", "center"), random = ~1 | id, data = longDF) (`actual`) not equal to list(id = 1, center = 0) (`expected`).
      
      `actual$id` is an integer vector (1)
      `expected$id` is a double vector (1)
      
      `actual$center` is an integer vector (0)
      `expected$center` is a double vector (0)
      
      [ FAIL 7 | WARN 3 | SKIP 4 | PASS 192 ]
      Error: Test failures
      Execution halted
    ```

# joyn

<details>

* Version: 0.1.4
* GitHub: https://github.com/randrescastaneda/joyn
* Source code: https://github.com/cran/joyn
* Date/Publication: 2021-12-14 13:00:12 UTC
* Number of recursive dependencies: 87

Run `cloud_details(, "joyn")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-freq_table.R:53:3): correct frequencies ───────────────────────
      `b` (`actual`) not equal to `j` (`expected`).
      
      `actual` is a double vector (2, 1, 1, 1)
      `expected` is an integer vector (2, 1, 1, 1)
      ── Failure (test-merge.R:386:3): Update NAs ────────────────────────────────────
      jn[idx, on = "id"][, x] (`actual`) not equal to y2[idx, on = "id"][, x] (`expected`).
      
      `actual` is a double vector (17, 20)
      `expected` is an integer vector (17, 20)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 52 ]
      Error: Test failures
      Execution halted
    ```

# jsontools

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/jsontools
* Date/Publication: 2021-03-22 09:40:09 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "jsontools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$dbl` is a double vector (1)
      ── Failure (test-read_json.R:2:3): parse_json works ────────────────────────────
      parse_json("{\"a\": 1, \"b\": [1, 2]}") (`actual`) not equal to list(a = 1, b = 1:2) (`expected`).
      
      `actual$a` is an integer vector (1)
      `expected$a` is a double vector (1)
      ── Failure (test-read_json.R:29:3): parse_json_vector works ────────────────────
      parse_json_vector(...) (`actual`) not equal to list(list(a = 1, b = 1:2), "missing value", c("1", "a")) (`expected`).
      
      `actual[[1]]$a` is an integer vector (1)
      `expected[[1]]$a` is a double vector (1)
      
      [ FAIL 34 | WARN 0 | SKIP 25 | PASS 121 ]
      Error: Test failures
      Execution halted
    ```

# jstor

<details>

* Version: 0.3.10
* GitHub: https://github.com/ropensci/jstor
* Source code: https://github.com/cran/jstor
* Date/Publication: 2021-12-08 08:50:07 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "jstor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • Downloading was disabled (1)
      • On CRAN (2)
      • This test is stupid, should be improved. It depends on the console width (1)
      • empty test (2)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-books.R:83:3): chapters are correct ───────────────────────────
      dim(chapters) (`actual`) not equal to c(36, 9) (`expected`).
      
      `actual` is an integer vector (36, 9)
      `expected` is a double vector (36, 9)
      
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 248 ]
      Error: Test failures
      Execution halted
    ```

# kgrams

<details>

* Version: 0.1.2
* GitHub: https://github.com/vgherard/kgrams
* Source code: https://github.com/cran/kgrams
* Date/Publication: 2021-11-16 08:40:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "kgrams")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (8)
      ── Failure (test-query.R:35:19): query.kgram_freqs returns correct counts in simple case ──
      `actual` (`actual`) not equal to `expected` (`expected`).
      
      `actual` is an integer vector (4, 3, 2, 2, 1, ...)
      `expected` is a double vector (4, 3, 2, 2, 1, ...)
      ── Failure (test-query.R:45:9): query.kgram_freqs and [.kgram_freqs agree on simple case ──
      `actual` (`actual`) not equal to `expected` (`expected`).
      
      `actual` is an integer vector (4, 3, 2, 2, 1, ...)
      `expected` is a double vector (4, 3, 2, 2, 1, ...)
      
      [ FAIL 17 | WARN 0 | SKIP 0 | PASS 424 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 27.4Mb
      sub-directories of 1Mb or more:
        libs  26.9Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RcppProgress’
      All declared Imports should be used.
    ```

# klassR

<details>

* Version: 0.1.9
* GitHub: https://github.com/statisticsnorway/klassR
* Source code: https://github.com/cran/klassR
* Date/Publication: 2022-03-04 08:50:02 UTC
* Number of recursive dependencies: 43

Run `cloud_details(, "klassR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test_ApplyKlass.R:45:3): Check levelCheck for numerical codes ──────
      levelCheck("03.1", sn) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test_ApplyKlass.R:53:3): Check levelCheck for character codes ──────
      levelCheck(c("INNL", "B_FIN", "B_FIN", NA), sek) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 16 ]
      Error: Test failures
      Execution halted
    ```

# knnwtsim

<details>

* Version: 1.0.0
* GitHub: https://github.com/mtrupiano1/knnwtsim
* Source code: https://github.com/cran/knnwtsim
* Date/Publication: 2022-03-05 21:20:02 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "knnwtsim")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (6)
      ── Failure (test-tuning.R:39:3): Item lengths are as anticipated ───────────────
      unname(lengths(tuning.test)) (`actual`) not equal to c(3, 1, prod(dim(St.ex)), 1, 10, 4) (`expected`).
      
      `actual` is an integer vector (3, 1, 10000, 1, 10, ...)
      `expected` is a double vector (3, 1, 10000, 1, 10, ...)
      ── Failure (test-tuning.R:55:3): Item lengths are as anticipated ───────────────
      length(tuning.test.na) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      
      [ FAIL 6 | WARN 4 | SKIP 0 | PASS 111 ]
      Error: Test failures
      Execution halted
    ```

# LA

<details>

* Version: 0.1.3
* GitHub: NA
* Source code: https://github.com/cran/LA
* Date/Publication: 2021-11-19 05:10:06 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "LA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (9, 4)
      ── Failure (testmyfunctions.R:23:3): Generate an optimal LHD with dimension n by k via LA ──
      dim(LA_LHD(n = 6, k = 3)) (`actual`) not equal to c(6, 3) (`expected`).
      
      `actual` is an integer vector (6, 3)
      `expected` is a double vector (6, 3)
      ── Failure (testmyfunctions.R:24:3): Generate an optimal LHD with dimension n by k via LA ──
      dim(LA_LHD(n = 9, k = 4)) (`actual`) not equal to c(9, 4) (`expected`).
      
      `actual` is an integer vector (9, 4)
      `expected` is a double vector (9, 4)
      
      [ FAIL 10 | WARN 0 | SKIP 0 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

# lambdr

<details>

* Version: 1.2.0
* GitHub: https://github.com/mdneuzerling/lambdr
* Source code: https://github.com/cran/lambdr
* Date/Publication: 2022-04-23 06:50:02 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "lambdr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$number` is a double vector (7)
      ── Failure (test-utils.R:75:3): HTML body decoding accommodates for base64 ─────
      decode_html_body(...) (`actual`) not equal to list(number = 7) (`expected`).
      
      `actual$number` is an integer vector (7)
      `expected$number` is a double vector (7)
      ── Failure (test-utils.R:82:3): HTML body decoding accommodates for base64 ─────
      decode_html_body(...) (`actual`) not equal to list(number = 7) (`expected`).
      
      `actual$number` is an integer vector (7)
      `expected$number` is a double vector (7)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 124 ]
      Error: Test failures
      Execution halted
    ```

# languageserver

<details>

* Version: 0.3.12
* GitHub: https://github.com/REditorSupport/languageserver
* Source code: https://github.com/cran/languageserver
* Date/Publication: 2021-10-19 17:30:09 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "languageserver")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0, 3)
      ── Failure (test-search.R:68:5): find_unbalanced_bracket works as expected ─────
      bsearch("foo[xy", 0, 5) (`actual`) not equal to list(c(0, 3), "[") (`expected`).
      
      `actual[[1]]` is an integer vector (0, 3)
      `expected[[1]]` is a double vector (0, 3)
      ── Failure (test-search.R:69:5): find_unbalanced_bracket works as expected ─────
      bsearch("foo{xy", 0, 5) (`actual`) not equal to list(c(0, 3), "{") (`expected`).
      
      `actual[[1]]` is an integer vector (0, 3)
      `expected[[1]]` is a double vector (0, 3)
      
      [ FAIL 31 | WARN 0 | SKIP 105 | PASS 35 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘callr’ ‘parallel’
      All declared Imports should be used.
    ```

# lehdr

<details>

* Version: 1.0.1
* GitHub: https://github.com/jamgreen/lehdr
* Source code: https://github.com/cran/lehdr
* Date/Publication: 2022-02-04 10:30:09 UTC
* Number of recursive dependencies: 89

Run `cloud_details(, "lehdr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3326655, 15)
      ── Failure (test-lehdr.R:38:3): test grab lodes wac for multiple states and years ──
      ... %>% dim (`actual`) not equal to c(2132, 54) (`expected`).
      
      `actual` is an integer vector (2132, 54)
      `expected` is a double vector (2132, 54)
      ── Failure (test-lehdr.R:41:3): test grab lodes wac for multiple states and years ──
      ... %>% dim (`actual`) not equal to c(55307, 55) (`expected`).
      
      `actual` is an integer vector (55307, 55)
      `expected` is a double vector (55307, 55)
      
      [ FAIL 10 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rlang’
      All declared Imports should be used.
    ```

# lemna

<details>

* Version: 0.9.2
* GitHub: https://github.com/nkehrein/lemna
* Source code: https://github.com/cran/lemna
* Date/Publication: 2022-03-31 08:30:06 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "lemna")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 25 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (6)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-lemna.R:6:3): simulate scenarios ──────────────────────────────
      res$time (`actual`) not equal to metsulfuron$times (`expected`).
      
      `actual` is a double vector (0, 1, 2, 3, 4, ...)
      `expected` is an integer vector (0, 1, 2, 3, 4, ...)
      
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 25 ]
      Error: Test failures
      Execution halted
    ```

# lidaRtRee

<details>

* Version: 3.1.2
* GitHub: NA
* Source code: https://github.com/cran/lidaRtRee
* Date/Publication: 2021-12-09 13:30:02 UTC
* Number of recursive dependencies: 134

Run `cloud_details(, "lidaRtRee")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test_aba.R:58:3): aba_build_model ──────────────────────────────────
      model_aba$model$rank (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test_tree_match.R:105:3): height_regression ────────────────────────
      reg$lm$rank (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 5 | WARN 11 | SKIP 1 | PASS 92 ]
      Error: Test failures
      Execution halted
    ```

# limorhyde2

<details>

* Version: 0.0.7
* GitHub: https://github.com/hugheylab/limorhyde2
* Source code: https://github.com/cran/limorhyde2
* Date/Publication: 2022-03-08 20:20:02 UTC
* Number of recursive dependencies: 143

Run `cloud_details(, "limorhyde2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual` is an integer vector (3, 3, 3, 3, 3, ...)
      `expected` is a double vector (3, 3, 3, 3, 3, ...)
      ── Failure (test_stats_utils.R:117:3): getHdi ──────────────────────────────────
      `dObs` (`actual`) not equal to `dExp` (`expected`).
      
      `actual$lower` is an integer vector (2)
      `expected$lower` is a double vector (2)
      
      `actual$upper` is an integer vector (5)
      `expected$upper` is a double vector (5)
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 62 ]
      Error: Test failures
      Execution halted
    ```

# listr

<details>

* Version: 0.0.2
* GitHub: NA
* Source code: https://github.com/cran/listr
* Date/Publication: 2022-04-25 08:10:05 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "listr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (20)
      ── Failure (test-list_join_df.R:28:9): list_join_df: can optinally keep elements from the first, last or all dfs ──
      nrow(full) (`actual`) not equal to 30 (`expected`).
      
      `actual` is an integer vector (30)
      `expected` is a double vector (30)
      ── Failure (test-list_remove.R:8:9): list_remove: removes elements from a list ──
      `out_len` (`actual`) not equal to in_len - 3 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 45 ]
      Error: Test failures
      Execution halted
    ```

# lmls

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/lmls
* Date/Publication: 2022-01-18 08:32:47 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "lmls")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      Backtrace:
          ▆
       1. └─lmls test_simple_method(predict, n) at test-methods.R:55:2
       2.   └─testthat::expect_equal(dim_or_length(x), dim) at test-methods.R:32:2
      ── Failure (test-methods.R:71:3): simulate() works ─────────────────────────────
      dim(x) (`actual`) not equal to c(n, 1) (`expected`).
      
      `actual` is an integer vector (100, 1)
      `expected` is a double vector (100, 1)
      
      [ FAIL 40 | WARN 0 | SKIP 2 | PASS 111 ]
      Error: Test failures
      Execution halted
    ```

# longmixr

<details>

* Version: 1.0.0
* GitHub: https://github.com/cellmapslab/longmixr
* Source code: https://github.com/cran/longmixr
* Date/Publication: 2022-01-13 20:32:42 UTC
* Number of recursive dependencies: 129

Run `cloud_details(, "longmixr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      dim(clustering[["general_information"]][["cluster_assignments"]]) (`actual`) not equal to c(15, 3) (`expected`).
      
      `actual` is an integer vector (15, 3)
      `expected` is a double vector (15, 3)
      ── Failure (test_lcc_functionality.R:75:3): the cluster assignments can be retrievedby the getter ──
      dim(cluster_assignments) (`actual`) not equal to c(15, 3) (`expected`).
      
      `actual` is an integer vector (15, 3)
      `expected` is a double vector (15, 3)
      
      [ FAIL 3 | WARN 0 | SKIP 2 | PASS 78 ]
      Deleting unused snapshots:
      • lcc_plot/plot_lcc_output.png
      Error: Test failures
      Execution halted
    ```

# lsr

<details>

* Version: 0.5.2
* GitHub: https://github.com/djnavarro/lsr
* Source code: https://github.com/cran/lsr
* Date/Publication: 2021-12-01 08:00:06 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "lsr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (16)
      ── Failure (test-wideToLong.R:46:3): wideToLong example works ──────────────────
      nrow(w3) (`actual`) not equal to 16 (`expected`).
      
      `actual` is an integer vector (16)
      `expected` is a double vector (16)
      ── Failure (test-wideToLong.R:55:3): wideToLong example works ──────────────────
      nrow(w4) (`actual`) not equal to 16 (`expected`).
      
      `actual` is an integer vector (16)
      `expected` is a double vector (16)
      
      [ FAIL 12 | WARN 0 | SKIP 0 | PASS 167 ]
      Error: Test failures
      Execution halted
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
      `expected` is a double vector (2)
      ── Failure (test-clean_observations.R:34:3): clean_observations() works ────────
      `out` (`actual`) not equal to c(...) (`expected`).
      
      `actual` is an integer vector (NA, 1, 1, 4, NA, ...)
      `expected` is a double vector (NA, 1, 1, 4, NA, ...)
      ── Failure (test-repeat_baseline_values.R:34:3): repeat_baseline_values() works ──
      `out` (`actual`) not equal to rep(10, 20) (`expected`).
      
      `actual` is an integer vector (10, 10, 10, 10, 10, ...)
      `expected` is a double vector (10, 10, 10, 10, 10, ...)
      
      [ FAIL 4 | WARN 0 | SKIP 7 | PASS 236 ]
      Error: Test failures
      Execution halted
    ```

# mapme.biodiversity

<details>

* Version: 0.1.1
* GitHub: https://github.com/mapme-initiative/mapme.biodiversity
* Source code: https://github.com/cran/mapme.biodiversity
* Date/Publication: 2022-05-02 07:00:09 UTC
* Number of recursive dependencies: 117

Run `cloud_details(, "mapme.biodiversity")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-utils.R:49:3): .make_global_grid works ────────────────────────
      `nrows` (`actual`) not equal to 455 (`expected`).
      
      `actual` is an integer vector (455)
      `expected` is a double vector (455)
      ── Failure (test-utils.R:76:3): .check_available_years works ───────────────────
      .check_available_years(2000:2011, 2011:2020, indicator = "treecover") (`actual`) not equal to 2011 (`expected`).
      
      `actual` is an integer vector (2011)
      `expected` is a double vector (2011)
      
      [ FAIL 2 | WARN 0 | SKIP 27 | PASS 103 ]
      Error: Test failures
      Execution halted
    ```

# mapSpain

<details>

* Version: 0.6.1
* GitHub: https://github.com/rOpenSpain/mapSpain
* Source code: https://github.com/cran/mapSpain
* Date/Publication: 2022-02-25 09:10:02 UTC
* Number of recursive dependencies: 113

Run `cloud_details(, "mapSpain")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (52)
      ── Failure (test-esp_get_prov.R:45:3): prov offline ────────────────────────────
      nrow(n) (`actual`) not equal to 52 (`expected`).
      
      `actual` is an integer vector (52)
      `expected` is a double vector (52)
      ── Failure (test-esp_get_munic.R:18:3): munic local ────────────────────────────
      length(unique(s$cpro)) (`actual`) not equal to 52 (`expected`).
      
      `actual` is an integer vector (52)
      `expected` is a double vector (52)
      
      [ FAIL 17 | WARN 0 | SKIP 22 | PASS 122 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13062 marked UTF-8 strings
    ```

# marginaleffects

<details>

* Version: 0.4.1
* GitHub: https://github.com/vincentarelbundock/marginaleffects
* Source code: https://github.com/cran/marginaleffects
* Date/Publication: 2022-03-27 23:10:05 UTC
* Number of recursive dependencies: 278

Run `cloud_details(, "marginaleffects")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3, 9)
      ── Failure (test-tidy.R:88:5): tidy: with and without contrasts ────────────────
      dim(x) (`actual`) not equal to c(4, 9) (`expected`).
      
      `actual` is an integer vector (4, 9)
      `expected` is a double vector (4, 9)
      ── Failure (test-tidy.R:96:5): bugs stay dead: multi-type are not duplicated ───
      nrow(ti) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 58 | WARN 0 | SKIP 20 | PASS 542 ]
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
      `expected` is a double vector (1, 2, 4, 5, 6, ...)
      ── Failure (test-recode.R:12:3): recode_by() examples works ────────────────────
      `x` (`actual`) not equal to c(1, 2, NA_integer_) (`expected`).
      
      `actual` is an integer vector (1, 2, NA)
      `expected` is a double vector (1, 2, NA)
      ── Failure (test-switch.R:14:3): switch_case() works as expected ───────────────
      `res` (`actual`) not equal to c(6L, 2L, -1L, NA_integer_, -1L) (`expected`).
      
      `actual` is a double vector (6, 2, -1, NA, -1)
      `expected` is an integer vector (6, 2, -1, NA, -1)
      
      [ FAIL 20 | WARN 0 | SKIP 9 | PASS 726 ]
      Error: Test failures
      Execution halted
    ```

# matlab2r

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/matlab2r
* Date/Publication: 2022-04-13 09:52:29 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "matlab2r")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (1, 2, 3, 4)
      ── Failure (test-convertedBaseFunctions.R:189:3): squeeze works as expected ────
      squeeze(A) (`actual`) not equal to matrix(1:3, 3) (`expected`).
      
      `actual` is a double vector (1, 2, 3)
      `expected` is an integer vector (1, 2, 3)
      ── Failure (test-convertedBaseFunctions.R:242:3): setdiff works as expected ────
      setdiff(A, B) (`actual`) not equal to `C` (`expected`).
      
      `actual$Var1` is an integer vector (2, 4)
      `expected$Var1` is a double vector (2, 4)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 81 ]
      Error: Test failures
      Execution halted
    ```

# matsindf

<details>

* Version: 0.3.10
* GitHub: https://github.com/MatthewHeun/matsindf
* Source code: https://github.com/cran/matsindf
* Date/Publication: 2021-12-17 14:50:05 UTC
* Number of recursive dependencies: 102

Run `cloud_details(, "matsindf")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-matsindf_apply.R:285:3): matsindf_apply() works with functions similar in form to those in `Recca` ──
      ncol(res3) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-utilities.R:229:3): mat_to_rowcolval (expand) works as expected ──
      B %>% nrow() (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 191 ]
      Error: Test failures
      Execution halted
    ```

# mazing

<details>

* Version: 1.0.5
* GitHub: https://github.com/kstreet13/mazing
* Source code: https://github.com/cran/mazing
* Date/Publication: 2021-10-05 23:20:31 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "mazing")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-mazing.R:42:5): pathfinding works as expected ─────────────────
      ncol(pts) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-mazing.R:47:5): pathfinding works as expected ─────────────────
      ncol(pts) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 42 ]
      Error: Test failures
      Execution halted
    ```

# mcmcr

<details>

* Version: 0.6.1
* GitHub: https://github.com/poissonconsulting/mcmcr
* Source code: https://github.com/cran/mcmcr
* Date/Publication: 2021-09-06 17:30:02 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "mcmcr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      ── Failure (test-thin.R:21:3): thin.mcmcrs ─────────────────────────────────────
      niters(mcmcrs2t) (`actual`) not equal to niters(mcmcrs)/2 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      
      [ FAIL 5 | WARN 0 | SKIP 3 | PASS 410 ]
      Deleting unused snapshots:
      • converged/converged.csv
      • ess/ess.csv
      • estimates/estimates.csv
      Error: Test failures
      Execution halted
    ```

# mcreplicate

<details>

* Version: 0.1.2
* GitHub: NA
* Source code: https://github.com/cran/mcreplicate
* Date/Publication: 2021-06-20 06:20:02 UTC
* Number of recursive dependencies: 41

Run `cloud_details(, "mcreplicate")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ 6 / 10 ]
      [ 8 / 10 ]
      [ 10 / 10 ]
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-mcreplicate.R:11:3): mc_replicate basic works ─────────────────
      length(x) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# mctq

<details>

* Version: 0.1.0
* GitHub: https://github.com/ropensci/mctq
* Source code: https://github.com/cran/mctq
* Date/Publication: 2021-11-05 15:30:02 UTC
* Number of recursive dependencies: 102

Run `cloud_details(, "mctq")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4, NA)
      ── Failure (test-round_time.R:16:5): round_time() | scalar test ────────────────
      round_time(object) (`actual`) not equal to as.POSIXlt(lubridate::as_datetime(12371, tz = "EST")) (`expected`).
      
      `actual$min` is a double vector (26)
      `expected$min` is an integer vector (26)
      ── Failure (test-utils.R:116:5): count_na() | general test ─────────────────────
      count_na(c(1, NA, 1, NA)) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 13 | WARN 16 | SKIP 0 | PASS 520 ]
      Error: Test failures
      Execution halted
    ```

# mde

<details>

* Version: 0.3.2
* GitHub: https://github.com/Nelson-Gon/mde
* Source code: https://github.com/cran/mde
* Date/Publication: 2022-02-10 12:10:06 UTC
* Number of recursive dependencies: 55

Run `cloud_details(, "mde")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test_drop_row_if.R:18:5): Test row dropping ────────────────────────
      nrow(drop_row_if(df, type = "count", value = 2, sign = "gteq")) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test_na_summary.R:15:4): Test na_summary ───────────────────────────
      ncol(na_summary(airquality)) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 3 | WARN 5 | SKIP 17 | PASS 78 ]
      Error: Test failures
      Execution halted
    ```

# melt

<details>

* Version: 1.4.0
* GitHub: https://github.com/markean/melt
* Source code: https://github.com/cran/melt
* Date/Publication: 2022-04-03 19:20:07 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "melt")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [#######################################] 100% | eta: | elapsed: 2s    
      [#######################################] 100% | eta: | elapsed: 2s    
      computing confidence intervals...
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 62 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-confint.R:54:3): empty model ──────────────────────────────────
      nrow(ci) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 62 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 76.7Mb
      sub-directories of 1Mb or more:
        libs  76.4Mb
    ```

# meltr

<details>

* Version: 1.0.0
* GitHub: https://github.com/r-lib/meltr
* Source code: https://github.com/cran/meltr
* Date/Publication: 2021-08-23 18:10:02 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "meltr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-melt-fwf.R:140:3): check for line breaks in between widths ────
      n_problems(out2) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-melt-fwf.R:165:3): ignore commented lines anywhere in file ────
      n_problems(x1) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 20 | WARN 0 | SKIP 1 | PASS 96 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        libs   5.1Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘R6’ ‘rlang’
      All declared Imports should be used.
    ```

# messydates

<details>

* Version: 0.2.1
* GitHub: NA
* Source code: https://github.com/cran/messydates
* Date/Publication: 2022-02-23 21:20:02 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "messydates")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (12)
      ── Failure (test-extract.R:12:3): precision function works properly ────────────
      precision(as_messydate("2012-02")) (`actual`) not equal to 29 (`expected`).
      
      `actual` is an integer vector (29)
      `expected` is a double vector (29)
      ── Failure (test-extract.R:13:3): precision function works properly ────────────
      precision(as_messydate("2012")) (`actual`) not equal to 366 (`expected`).
      
      `actual` is an integer vector (366)
      `expected` is a double vector (366)
      
      [ FAIL 12 | WARN 0 | SKIP 4 | PASS 77 ]
      Error: Test failures
      Execution halted
    ```

# metatools

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/metatools
* Date/Publication: 2022-04-20 08:52:30 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "metatools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual` is a double vector (1, 2, 3)
      `expected` is an integer vector (1, 2, 3)
      Backtrace:
          ▆
       1. ├─grp_num_dat %>% pull(AGEGR1N) %>% unique() %>% ... at test-codelist.R:87:2
       2. └─testthat::expect_equal(., c(1:3))
      ── Failure (test-utils.R:19:4): make_lone_dataset ──────────────────────────────
      nrow(ds_spec) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 75 ]
      Error: Test failures
      Execution halted
    ```

# MFO

<details>

* Version: 0.1.0
* GitHub: https://github.com/JorgeDelro/MFO
* Source code: https://github.com/cran/MFO
* Date/Publication: 2022-02-11 19:00:13 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "MFO")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-MFO.R:46:3): output of MFO function ───────────────────────────
      ncol(test_result_MFO$MFO_db) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-MFO_kinetics.R:49:3): output of MFO Kinetics function ─────────
      ncol(test_result_MFO_kinetics$MFO_kinetics_data) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 8 ]
      Error: Test failures
      Execution halted
    ```

# MGMM

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/MGMM
* Date/Publication: 2021-12-21 18:12:03 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "MGMM")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-partition.R:18:3): Partition data. ────────────────────────────
      part_data$n2 (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-partition.R:21:3): Partition data. ────────────────────────────
      part_data$init_order (`actual`) not equal to c(4, 2, 3, 1) (`expected`).
      
      `actual` is an integer vector (4, 2, 3, 1)
      `expected` is a double vector (4, 2, 3, 1)
      
      [ FAIL 6 | WARN 0 | SKIP 3 | PASS 30 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘MGMM.Rnw’ using Sweave
    Error: processing vignette 'MGMM.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'MGMM.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `pdfpages.sty' not found.
    
    Type X to quit or <RETURN> to proceed,
    or enter new name. (Default extension: sty)
    ...
    l.4 ^^M
           
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘MGMM.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘MGMM.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# microservices

<details>

* Version: 0.1.2
* GitHub: https://github.com/tidylab/microservices
* Source code: https://github.com/cran/microservices
* Date/Publication: 2021-06-12 06:10:02 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "microservices")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        4. │ └─base tryCatchList(expr, classes, parentenv, handlers)
        5. │   └─base tryCatchOne(expr, names, parentenv, handlers[[1L]])
        6. │     └─value[[3L]](cond)
        7. │       └─httptest::capture_requests(code) at tests/testthat/helpers-xyz.R:11:32
        8. │         └─base::eval(expr, where)
        9. ├─microservices expect_success_status(...) at test-endpoint-plumber-{route_name}.R:46:4
       10. │ ├─testthat::expect_equal(httr::status_code(response), 200) at test-endpoint-plumber-{route_name}.R:7:25
       11. │ │ └─testthat::quasi_label(enquo(object), label, arg = "object")
       12. │ │   └─rlang::eval_bare(expr, quo_get_env(quo))
       13. │ └─httr::status_code(response)
       14. └─httr::POST(url, body = body, encode = "json")
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 12 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘config’ ‘desc’ ‘dplyr’ ‘glue’ ‘withr’
      All declared Imports should be used.
    ```

# MIRES

<details>

* Version: 0.1.0
* GitHub: https://github.com/stephenSRMMartin/MIRES
* Source code: https://github.com/cran/MIRES
* Date/Publication: 2021-02-22 10:40:11 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "MIRES")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (8)
      ── Failure (test_userfacing.R:36:5): User-facing functions return correct structures. ──
      nrow(pairwise_out) (`actual`) not equal to (fit$meta$K * (fit$meta$K - 1)/2) * fit$meta$J (`expected`).
      
      `actual` is an integer vector (80)
      `expected` is a double vector (80)
      ── Failure (test_userfacing.R:39:5): User-facing functions return correct structures. ──
      nrow(pairwise_reduced) (`actual`) not equal to (3 * 2/2) * fit$meta$J (`expected`).
      
      `actual` is an integer vector (24)
      `expected` is a double vector (24)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 92 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 229.0Mb
      sub-directories of 1Mb or more:
        libs  228.4Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘pracma’ ‘rstantools’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# mlfit

<details>

* Version: 0.5.3
* GitHub: https://github.com/mlfit/mlfit
* Source code: https://github.com/cran/mlfit
* Date/Publication: 2021-10-08 06:50:02 UTC
* Number of recursive dependencies: 68

Run `cloud_details(, "mlfit")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (1, 2, 3)
      ── Failure (test-utils.R:4:3): shifting away leading zeros ─────────────────────
      remove_leading_zeros(-1:3) (`actual`) not equal to -1:3 (`expected`).
      
      `actual` is a double vector (-1, 0, 1, 2, 3)
      `expected` is an integer vector (-1, 0, 1, 2, 3)
      ── Failure (test-utils.R:5:3): shifting away leading zeros ─────────────────────
      remove_leading_zeros(c(rep(0, 100), 1:3)) (`actual`) not equal to 1:3 (`expected`).
      
      `actual` is a double vector (1, 2, 3)
      `expected` is an integer vector (1, 2, 3)
      
      [ FAIL 196 | WARN 0 | SKIP 0 | PASS 398 ]
      Error: Test failures
      Execution halted
    ```

# mlr3

<details>

* Version: 0.13.3
* GitHub: https://github.com/mlr-org/mlr3
* Source code: https://github.com/cran/mlr3
* Date/Publication: 2022-03-01 15:40:02 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "mlr3")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       3.     └─testthat::expect_equal(...)
      ── Failure (test_set_threads.R:8:3): set_threads ───────────────────────────────
      l2$param_set$values$threads (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_set_threads.R:12:3): set_threads ──────────────────────────────
      l2$param_set$values$threads (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 193 | WARN 0 | SKIP 0 | PASS 11375 ]
      Error: Test failures
      Execution halted
    ```

# mlr3db

<details>

* Version: 0.4.2
* GitHub: https://github.com/mlr-org/mlr3db
* Source code: https://github.com/cran/mlr3db
* Date/Publication: 2021-11-17 17:00:02 UTC
* Number of recursive dependencies: 67

Run `cloud_details(, "mlr3db")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      unname(sapply(split(realhashes, col_hashes), data.table::uniqueN)) (`actual`) not equal to rep(1, data.table::uniqueN(col_hashes)) (`expected`).
      
      `actual` is an integer vector (1, 1, 1, 1, 1)
      `expected` is a double vector (1, 1, 1, 1, 1)
      Backtrace:
          ▆
       1. └─global expect_resample_result(rr) at test_train_predict_duckdb.R:18:2
       2.   └─global expect_task(rr$task, null_backend_ok = is.null(rr$task$backend))
       3.     └─testthat::expect_equal(...)
      
      [ FAIL 20 | WARN 1 | SKIP 0 | PASS 1268 ]
      Error: Test failures
      In addition: Warning message:
      call dbDisconnect() when finished working with a connection 
      Execution halted
    ```

# mlr3filters

<details>

* Version: 0.5.0
* GitHub: https://github.com/mlr-org/mlr3filters
* Source code: https://github.com/cran/mlr3filters
* Date/Publication: 2022-01-25 16:32:46 UTC
* Number of recursive dependencies: 109

Run `cloud_details(, "mlr3filters")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test_partial_scoring.R:10:5): praznik 'nfeat' argument works correctly ──
      sum(!is.na(f$scores)) (`actual`) not equal to `nfeat` (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test_partial_scoring.R:10:5): praznik 'nfeat' argument works correctly ──
      sum(!is.na(f$scores)) (`actual`) not equal to `nfeat` (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 636 ]
      Error: Test failures
      Execution halted
    ```

# mlr3fselect

<details>

* Version: 0.7.0
* GitHub: https://github.com/mlr-org/mlr3fselect
* Source code: https://github.com/cran/mlr3fselect
* Date/Publication: 2022-04-08 07:12:30 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "mlr3fselect")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 2)
      ── Failure (test_extract_inner_fselect_result.R:58:3): extract_inner_fselect_results function works ──
      unique(ibmr$experiment) (`actual`) not equal to c(1, 2, 3, 4) (`expected`).
      
      `actual` is an integer vector (1, 2, 3, 4)
      `expected` is a double vector (1, 2, 3, 4)
      ── Failure (test_extract_inner_fselect_result.R:108:3): extract_inner_fselect_results function works ──
      unique(ibmr$experiment) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 16 | WARN 0 | SKIP 3 | PASS 2231 ]
      Error: Test failures
      Execution halted
    ```

# mlr3learners

<details>

* Version: 0.5.2
* GitHub: https://github.com/mlr-org/mlr3learners
* Source code: https://github.com/cran/mlr3learners
* Date/Publication: 2022-01-23 00:02:41 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "mlr3learners")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (2)
      ── Failure (test_regr_xgboost.R:39:3): hotstart ────────────────────────────────
      hot$start_cost(learner_4, task$hash) (`actual`) not equal to -1L (`expected`).
      
      `actual` is a double vector (-1)
      `expected` is an integer vector (-1)
      ── Failure (test_regr_xgboost.R:41:3): hotstart ────────────────────────────────
      learner_4$model$niter (`actual`) not equal to 5L (`expected`).
      
      `actual` is a double vector (5)
      `expected` is an integer vector (5)
      
      [ FAIL 24 | WARN 0 | SKIP 2 | PASS 671 ]
      Error: Test failures
      Execution halted
    ```

# mlr3measures

<details>

* Version: 0.4.1
* GitHub: https://github.com/mlr-org/mlr3measures
* Source code: https://github.com/cran/mlr3measures
* Date/Publication: 2022-01-13 12:22:42 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "mlr3measures")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      +   suppressPackageStartupMessages(library(mlr3measures))
      +   test_check("mlr3measures")
      + }
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 352 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_regr.R:43:3): tests from Metrics ──────────────────────────────
      ae(9:11, 11:9) (`actual`) not equal to c(2, 0, 2) (`expected`).
      
      `actual` is an integer vector (2, 0, 2)
      `expected` is a double vector (2, 0, 2)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 352 ]
      Error: Test failures
      Execution halted
    ```

# mlr3misc

<details>

* Version: 0.10.0
* GitHub: https://github.com/mlr-org/mlr3misc
* Source code: https://github.com/cran/mlr3misc
* Date/Publication: 2022-01-11 14:52:41 UTC
* Number of recursive dependencies: 35

Run `cloud_details(, "mlr3misc")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$depth` is a double vector (0, 0)
      ── Failure (test_topo_sort.R:34:3): topo_sort ──────────────────────────────────
      `r` (`actual`) not equal to `rr` (`expected`).
      
      `actual$depth` is an integer vector (0, 1, 2)
      `expected$depth` is a double vector (0, 1, 2)
      ── Failure (test_topo_sort.R:51:3): topo_sort ──────────────────────────────────
      `r` (`actual`) not equal to `rr` (`expected`).
      
      `actual$depth` is an integer vector (0, 0, 1, 2, 3)
      `expected$depth` is a double vector (0, 0, 1, 2, 3)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 478 ]
      Error: Test failures
      Execution halted
    ```

# mlr3spatiotempcv

<details>

* Version: 1.0.1
* GitHub: https://github.com/mlr-org/mlr3spatiotempcv
* Source code: https://github.com/cran/mlr3spatiotempcv
* Date/Publication: 2022-03-03 14:40:02 UTC
* Number of recursive dependencies: 166

Run `cloud_details(, "mlr3spatiotempcv")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-datasets.R:14:3): check that ecuador example task works ───────
      rsp$iters (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-datasets.R:22:3): check that cookfarm example task works ──────
      rsp$iters (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 38 | WARN 0 | SKIP 33 | PASS 210 ]
      Error: Test failures
      Execution halted
    ```

# mlr3tuning

<details>

* Version: 0.13.0
* GitHub: https://github.com/mlr-org/mlr3tuning
* Source code: https://github.com/cran/mlr3tuning
* Date/Publication: 2022-04-06 08:42:30 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "mlr3tuning")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (100, 75, 50, 25, 1)
      ── Failure (test_hotstart.R:64:3): hotstart works forwards and backwards ───────
      length(unique(ids)) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test_hotstart.R:65:3): hotstart works forwards and backwards ───────
      unique(instance$archive$data$iter) (`actual`) not equal to c(100, 75, 50, 25, 1) (`expected`).
      
      `actual` is an integer vector (100, 75, 50, 25, 1)
      `expected` is a double vector (100, 75, 50, 25, 1)
      
      [ FAIL 82 | WARN 0 | SKIP 0 | PASS 4050 ]
      Error: Test failures
      Execution halted
    ```

# mlr3tuningspaces

<details>

* Version: 0.2.0
* GitHub: https://github.com/mlr-org/mlr3tuningspaces
* Source code: https://github.com/cran/mlr3tuningspaces
* Date/Publication: 2022-04-12 07:12:34 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "mlr3tuningspaces")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test_sugar.R:13:3): lts sugar function works ───────────────────────
      learner$param_set$values$xval (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_sugar.R:33:3): ltss sugar function works ──────────────────────
      learners[[1]]$param_set$values$xval (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 965 ]
      Error: Test failures
      Execution halted
    ```

# modelbased

<details>

* Version: 0.8.0
* GitHub: https://github.com/easystats/modelbased
* Source code: https://github.com/cran/modelbased
* Date/Publication: 2022-03-31 08:10:02 UTC
* Number of recursive dependencies: 173

Run `cloud_details(, "modelbased")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (30, 6)
      ── Failure (test-mgcv.R:42:7): estimate_response - mgcv gamm ───────────────────
      dim(estim) (`actual`) not equal to c(150, 9) (`expected`).
      
      `actual` is an integer vector (150, 9)
      `expected` is a double vector (150, 9)
      ── Failure (test-mgcv.R:49:7): estimate_link - mgcv gamm ───────────────────────
      dim(estim) (`actual`) not equal to c(16, 6) (`expected`).
      
      `actual` is an integer vector (16, 6)
      `expected` is a double vector (16, 6)
      
      [ FAIL 111 | WARN 7 | SKIP 0 | PASS 40 ]
      Error: Test failures
      Execution halted
    ```

# modelsummary

<details>

* Version: 0.10.0
* GitHub: https://github.com/vincentarelbundock/modelsummary
* Source code: https://github.com/cran/modelsummary
* Date/Publication: 2022-04-14 12:42:33 UTC
* Number of recursive dependencies: 156

Run `cloud_details(, "modelsummary")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (12, 4)
      ── Failure (test-zzz.R:10:5): glue with no statistic ───────────────────────────
      nrow(tab) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 64 | WARN 0 | SKIP 38 | PASS 432 ]
      Deleting unused snapshots:
      • missing.md
      • modelplot/coef-map-color-shape-background.svg
      • modelplot/coef-omit.svg
      • modelplot/multiple-plots-facet.svg
      Error: Test failures
      Execution halted
    ```

# msaR

<details>

* Version: 0.6.0
* GitHub: NA
* Source code: https://github.com/cran/msaR
* Date/Publication: 2021-09-22 04:30:09 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "msaR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_msaR.R:13:3): serialization to sequences works ────────────────
      length(converted_sequences) (`actual`) not equal to 11 (`expected`).
      
      `actual` is an integer vector (11)
      `expected` is a double vector (11)
      ── Failure (test_msaR.R:14:3): serialization to sequences works ────────────────
      length(converted_sequences[[1]]) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 2 | WARN 1 | SKIP 0 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

# mshap

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/mshap
* Date/Publication: 2021-06-17 08:40:02 UTC
* Number of recursive dependencies: 119

Run `cloud_details(, "mshap")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-mshap.R:63:3): Multi Case Works ───────────────────────────────
      length(res2) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-mshap.R:76:3): Different Names Works ──────────────────────────
      ncol(res[[1]]$shap_vals) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 24 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘tidyselect’
      All declared Imports should be used.
    ```

# multidplyr

<details>

* Version: 0.1.1
* GitHub: https://github.com/tidyverse/multidplyr
* Source code: https://github.com/cran/multidplyr
* Date/Publication: 2021-12-01 21:10:02 UTC
* Number of recursive dependencies: 79

Run `cloud_details(, "multidplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (2, 3, 4, 5)
      ── Failure (test-dplyr-single.R:14:3): test that pass through workds ───────────
      pf %>% slice(1) %>% collect() %>% pull(x) (`actual`) not equal to c(1, 3) (`expected`).
      
      `actual` is an integer vector (1, 3)
      `expected` is a double vector (1, 3)
      ── Failure (test-partydf.R:74:3): reduce cluster size if needed ────────────────
      length(df2$cluster) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 5 | WARN 0 | SKIP 4 | PASS 44 ]
      Error: Test failures
      Execution halted
    ```

# multigraphr

<details>

* Version: 0.1.0
* GitHub: https://github.com/termehs/multigraphr
* Source code: https://github.com/cran/multigraphr
* Date/Publication: 2021-09-16 18:50:02 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "multigraphr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (12, 6)
      ── Failure (test-rsm_model.R:4:3): rsm_model works ─────────────────────────────
      dim(mod1$m.seq) (`actual`) not equal to c(25, 10) (`expected`).
      
      `actual` is an integer vector (25, 10)
      `expected` is a double vector (25, 10)
      ── Failure (test-rsm_model.R:5:3): rsm_model works ─────────────────────────────
      dim(mod1$prob.dists) (`actual`) not equal to c(25, 4) (`expected`).
      
      `actual` is an integer vector (25, 4)
      `expected` is a double vector (25, 4)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 9 ]
      Error: Test failures
      Execution halted
    ```

# musclesyneRgies

<details>

* Version: 1.1.3
* GitHub: https://github.com/alesantuz/musclesyneRgies
* Source code: https://github.com/cran/musclesyneRgies
* Date/Publication: 2022-02-10 18:00:02 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "musclesyneRgies")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-FWHM.R:8:3): FWHM returns correct values ──────────────────────
      musclesyneRgies::FWHM(time_series) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-synsNMF.R:12:3): NMF produces correct class and output ────────
      nrow(SYNS_fixed$ID0012_TW_01$M) (`actual`) not equal to 13 (`expected`).
      
      `actual` is an integer vector (13)
      `expected` is a double vector (13)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 18 ]
      Error: Test failures
      Execution halted
    ```

# mxnorm

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/mxnorm
* Date/Publication: 2022-02-26 07:30:02 UTC
* Number of recursive dependencies: 152

Run `cloud_details(, "mxnorm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-run_reduce_umap.R:17:5): validate params works ────────────────
      dim(u2$umap_data)[1] (`actual`) not equal to 6000 (`expected`).
      
      `actual` is an integer vector (6000)
      `expected` is a double vector (6000)
      ── Failure (test-run_var_proportions.R:18:5): props works ──────────────────────
      dim(v2$var_data)[1] (`actual`) not equal to 12 (`expected`).
      
      `actual` is an integer vector (12)
      `expected` is a double vector (12)
      
      [ FAIL 2 | WARN 0 | SKIP 6 | PASS 85 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘e1071’ ‘glue’
      All declared Imports should be used.
    ```

# namedropR

<details>

* Version: 2.2.3
* GitHub: https://github.com/nucleic-acid/namedropR
* Source code: https://github.com/cran/namedropR
* Date/Publication: 2022-02-13 21:20:02 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "namedropR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test-drop_name.R:99:3): bulk operations work properly ──────────────
      length(bulk_res2$result) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-drop_name.R:103:3): bulk operations work properly ─────────────
      length(bulk_res3$result) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 61 ]
      Error: Test failures
      Execution halted
    ```

# nandb

<details>

* Version: 2.1.0
* GitHub: https://github.com/rorynolan/nandb
* Source code: https://github.com/cran/nandb
* Date/Publication: 2021-05-16 22:40:06 UTC
* Number of recursive dependencies: 117

Run `cloud_details(, "nandb")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-class_constructors.R:17:3): Class construction edge cases function correctly ──
      c_list_attr_na(x) (`actual`) not equal to `ans` (`expected`).
      
      `actual` is a double vector (4, 5)
      `expected` is an integer vector (4, 5)
      ── Failure (test-graphics.R:88:3): `which_interval()` errors correctly ─────────
      which_interval(numbers, interval_mat) (`actual`) not equal to rep(c(2, 3), each = 3) (`expected`).
      
      `actual` is an integer vector (2, 2, 2, 3, 3, ...)
      `expected` is a double vector (2, 2, 2, 3, 3, ...)
      
      [ FAIL 4 | WARN 0 | SKIP 1 | PASS 150 ]
      Error: Test failures
      Execution halted
    ```

# natstrat

<details>

* Version: 2.0.0
* GitHub: https://github.com/kkbrum/natstrat
* Source code: https://github.com/cran/natstrat
* Date/Publication: 2021-10-15 09:10:02 UTC
* Number of recursive dependencies: 123

Run `cloud_details(, "natstrat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (8)
      ── Failure (test-optimize_controls.R:260:3): units chosen for either main or supplemental group ──
      sum(results_two$selected & results_two$selected_star) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-optimize_controls.R:315:3): units chosen for either main or supplemental group ──
      sum(...) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 70 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gurobi’
    ```

# NEONiso

<details>

* Version: 0.5.3
* GitHub: https://github.com/SPATIAL-Lab/NEONiso
* Source code: https://github.com/cran/NEONiso
* Date/Publication: 2022-01-03 21:20:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "NEONiso")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (20)
      ── Failure (test-utility_functions.R:16:3): correct number of sites in each site retrieval function vector ──
      length(terrestrial_relocatable_sites()) (`actual`) not equal to 27 (`expected`).
      
      `actual` is an integer vector (27)
      `expected` is a double vector (27)
      ── Failure (test-utility_functions.R:17:3): correct number of sites in each site retrieval function vector ──
      length(water_isotope_sites()) (`actual`) not equal to 21 (`expected`).
      
      `actual` is an integer vector (21)
      `expected` is a double vector (21)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 58 ]
      Error: Test failures
      Execution halted
    ```

# netmap

<details>

* Version: 0.1.1
* GitHub: https://github.com/artod83/netmap
* Source code: https://github.com/cran/netmap
* Date/Publication: 2022-03-18 16:00:02 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "netmap")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-ggnetmap.R:12:3): ggnetmap produces the expected fortified data frame with lookup table ──
      `res` (`actual`) not equal to data.frame(...) (`expected`).
      
      `actual$vertex.names` is an integer vector (1, 1, 1, 1, 2, ...)
      `expected$vertex.names` is a double vector (1, 1, 1, 1, 2, ...)
      ── Failure (test-ggnetmap.R:50:3): ggnetmap produces the expected fortified data frame without lookup table ──
      `res` (`actual`) not equal to data.frame(...) (`expected`).
      
      `actual$vertex.names` is an integer vector (1, 1, 1, 1, 2, ...)
      `expected$vertex.names` is a double vector (1, 1, 1, 1, 2, ...)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# nfer

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/nfer
* Date/Publication: 2022-03-28 12:50:02 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "nfer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-read.R:34:3): int data columns are set correctly ──────────────
      input[4, ]$bar (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-read.R:36:3): int data columns are set correctly ──────────────
      input[6, ]$bar (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 6 | WARN 0 | SKIP 4 | PASS 508 ]
      Error: Test failures
      Execution halted
    ```

# nflreadr

<details>

* Version: 1.2.0
* GitHub: https://github.com/nflverse/nflreadr
* Source code: https://github.com/cran/nflreadr
* Date/Publication: 2022-03-17 13:20:02 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "nflreadr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 21 | PASS 8 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (21)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-name_cleaning.R:35:3): cleaning home and away columns ─────────
      nrow(c) (`actual`) not equal to nrow(s) * 2 (`expected`).
      
      `actual` is an integer vector (538)
      `expected` is a double vector (538)
      
      [ FAIL 1 | WARN 0 | SKIP 21 | PASS 8 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘curl’ ‘qs’
      All declared Imports should be used.
    ```

# nhdplusTools

<details>

* Version: 0.5.2
* GitHub: https://github.com/usgs-r/nhdplusTools
* Source code: https://github.com/cran/nhdplusTools
* Date/Publication: 2022-04-08 15:40:02 UTC
* Number of recursive dependencies: 150

Run `cloud_details(, "nhdplusTools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test_get_path.R:10:3): reweight ────────────────────────────────────
      w$weight[w$nameID == w$ds_nameID] (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_get_path.R:96:3): degenerate ──────────────────────────────────
      er$topo_sort (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 55 | WARN 0 | SKIP 50 | PASS 218 ]
      Error: Test failures
      Execution halted
    ```

# NHSRplotthedots

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/NHSRplotthedots
* Date/Publication: 2021-11-03 20:20:10 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "NHSRplotthedots")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (0, 0, 0, 0, 0, ...)
      ── Failure (test-ptd_create_ggplot.R:244:3): it breaks lines ───────────────────
      rlang::eval_tidy(p2$layers[[5]]$mapping$group) (`actual`) not equal to rep(0:1, each = 10) (`expected`).
      
      `actual` is a double vector (0, 0, 0, 0, 0, ...)
      `expected` is an integer vector (0, 0, 0, 0, 0, ...)
      ── Failure (test-ptd_create_ggplot.R:251:3): it breaks lines ───────────────────
      rlang::eval_tidy(p3$layers[[6]]$mapping$group) (`actual`) not equal to rep(0:1, each = 10) (`expected`).
      
      `actual` is a double vector (0, 0, 0, 0, 0, ...)
      `expected` is an integer vector (0, 0, 0, 0, 0, ...)
      
      [ FAIL 10 | WARN 0 | SKIP 3 | PASS 422 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘NHSRdatasets’ ‘grid’ ‘utils’
      All declared Imports should be used.
    ```

# NicheBarcoding

<details>

* Version: 1.0
* GitHub: https://github.com/Yangcq-Ivy/NicheBarcoding
* Source code: https://github.com/cran/NicheBarcoding
* Date/Publication: 2021-12-21 08:22:03 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "NicheBarcoding")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (100)
      ── Failure (test-pseudo.absent.points.R:10:3): check whether the simulation recordes are outputted as required ──
      nrow(absent.points$envir) (`actual`) not equal to 100 (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      ── Failure (test-pseudo.present.points.R:8:3): check whether the simulation recordes are outputted as required ──
      nrow(pseudo.present.points(data, 10, 2, 1, en.vir = en.vir)) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 26 | WARN 2 | SKIP 0 | PASS 26 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rJava’
      All declared Imports should be used.
    ```

# NIMAA

<details>

* Version: 0.2.1
* GitHub: https://github.com/jafarilab/NIMAA
* Source code: https://github.com/cran/NIMAA
* Date/Publication: 2022-04-11 14:12:45 UTC
* Number of recursive dependencies: 153

Run `cloud_details(, "NIMAA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (6, 105)
      ── Failure (test-extract-nonmissing-submatrix.R:9:3): four shapes works ────────
      dim(sub_matrices$Rectangular_col) (`actual`) not equal to c(99, 2) (`expected`).
      
      `actual` is an integer vector (99, 2)
      `expected` is a double vector (99, 2)
      ── Failure (test-extract-nonmissing-submatrix.R:10:3): four shapes works ───────
      dim(sub_matrices$Rectangular_element_max) (`actual`) not equal to c(59, 79) (`expected`).
      
      `actual` is an integer vector (59, 79)
      `expected` is a double vector (59, 79)
      
      [ FAIL 7 | WARN 1 | SKIP 0 | PASS 5 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        doc   4.0Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 24 marked UTF-8 strings
    ```

# nlist

<details>

* Version: 0.3.3
* GitHub: https://github.com/poissonconsulting/nlist
* Source code: https://github.com/cran/nlist
* Date/Publication: 2021-09-02 14:50:05 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "nlist")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an S3 object of class <mcmc>, an integer vector
      ── Failure (test-subset.R:24:3): subset.mcmc.list ──────────────────────────────
      subset(mcmc.list, pars = "beta") (`actual`) not equal to as_mcmc_list(nlists(nlist(beta = 1:2), nlist(beta = 3:4))) (`expected`).
      
      `actual[[1]]` is an S3 object of class <mcmc>, a double vector
      `expected[[1]]` is an S3 object of class <mcmc>, an integer vector
      ── Failure (test-subset.R:32:3): subset.mcmc.list ──────────────────────────────
      subset(as_mcmc_list(nlist(beta = 1:2, theta = 1)), pars = "beta") (`actual`) not equal to as_mcmc_list(nlist(beta = 1:2)) (`expected`).
      
      `actual[[1]]` is an S3 object of class <mcmc>, a double vector
      `expected[[1]]` is an S3 object of class <mcmc>, an integer vector
      
      [ FAIL 8 | WARN 0 | SKIP 1 | PASS 436 ]
      Error: Test failures
      Execution halted
    ```

# nloptr

<details>

* Version: 2.0.0
* GitHub: https://github.com/astamm/nloptr
* Source code: https://github.com/cran/nloptr
* Date/Publication: 2022-01-26 18:42:43 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "nloptr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-derivative-checker.R:50:5): Test derivative checker. ──────────
      sum(res$flag_derivative_warning) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-derivative-checker.R:69:5): Test derivative checker. ──────────
      sum(res$flag_derivative_warning) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 48 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.3Mb
      sub-directories of 1Mb or more:
        libs  11.8Mb
    ```

# nutrientr

<details>

* Version: 0.1
* GitHub: NA
* Source code: https://github.com/cran/nutrientr
* Date/Publication: 2022-02-18 08:20:02 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "nutrientr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (200)
      ── Failure (test-query_api.R:38:3): yieldamount endpoint is reachable ──────────
      resp$response$status_code (`actual`) not equal to 200 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      ── Failure (test-query_api.R:43:3): Invalid endpoint will yield an error ───────
      resp$response$status_code (`actual`) not equal to 200 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      
      [ FAIL 25 | WARN 0 | SKIP 1 | PASS 33 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggplot2’ ‘qpdf’ ‘stringr’
      All declared Imports should be used.
    ```

# oce

<details>

* Version: 1.7-2
* GitHub: https://github.com/dankelley/oce
* Source code: https://github.com/cran/oce
* Date/Publication: 2022-03-22 17:10:02 UTC
* Number of recursive dependencies: 116

Run `cloud_details(, "oce")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (20, 21, 22, 23, 24, ...)
      ── Failure (test_subset.R:80:5): subset a CTD by pressure (5) ──────────────────
      d[["pressure"]] (`actual`) not equal to 20:30 (`expected`).
      
      `actual` is a double vector (20, 21, 22, 23, 24, ...)
      `expected` is an integer vector (20, 21, 22, 23, 24, ...)
      ── Failure (test_subset.R:95:5): subset a CTD by pressure (6) ──────────────────
      d[["pressure"]] (`actual`) not equal to 20:30 (`expected`).
      
      `actual` is a double vector (20, 21, 22, 23, 24, ...)
      `expected` is an integer vector (20, 21, 22, 23, 24, ...)
      
      [ FAIL 384 | WARN 0 | SKIP 14 | PASS 2379 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 18.3Mb
      sub-directories of 1Mb or more:
        R      2.5Mb
        data   1.0Mb
        doc    2.0Mb
        help   3.5Mb
        libs   8.5Mb
    ```

# OlinkAnalyze

<details>

* Version: 3.0.0
* GitHub: NA
* Source code: https://github.com/cran/OlinkAnalyze
* Date/Publication: 2022-02-10 19:20:05 UTC
* Number of recursive dependencies: 117

Run `cloud_details(, "OlinkAnalyze")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • Olink_boxplot/boxplot-site-10prots.svg
      • Olink_boxplot/boxplot-time-and-site.svg
      • Olink_boxplot/boxplot-time-with-coloroption.svg
      • Olink_boxplot/boxplot-time.svg
      • Volcano_plot/volcano-plot-with-coloroption.svg
      • dist_plot/distribution-plot-col-by-treatment.svg
      • linear_mixed_model/lmer-plot-more-prots-than-space.svg
      • olink_qc_plot/qc-plot-with-coloroption.svg
      • pca_plot/pca-plot-color-by-treatment.svg
      • pca_plot/pca-plot-drop-assays-and-drop-samples.svg
      • pca_plot/pca-plot-panel-1.svg
      • pca_plot/pca-plot-panel-2.svg
      • pca_plot/pca-plot-with-loadings.svg
      Error: Test failures
      Execution halted
    ```

# oolong

<details>

* Version: 0.4.1
* GitHub: https://github.com/chainsawriot/oolong
* Source code: https://github.com/cran/oolong
* Date/Publication: 2021-11-09 10:20:11 UTC
* Number of recursive dependencies: 151

Run `cloud_details(, "oolong")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Parallel computing: 8 of 8 threads used.
      See https://quanteda.io for tutorials and examples.
      ......................................................................................F.................SS......................New names:
      * `` -> `...1`
      `geom_smooth()` using formula 'y ~ x'
      `geom_smooth()` using formula 'y ~ x'
      .....................New names:
      * `` -> `...1`
      `geom_smooth()` using formula 'y ~ x'
      `geom_smooth()` using formula 'y ~ x'
      .SSSS
      Deleting unused snapshots:
      • printing.md
      Error: Test failures
      Execution halted
    ```

# ooplah

<details>

* Version: 0.2.0
* GitHub: https://github.com/xoopR/ooplah
* Source code: https://github.com/cran/ooplah
* Date/Publication: 2022-01-21 09:32:45 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "ooplah")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > test_check("ooplah")
      Loading required package: ooplah
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 108 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-vxapply.R:13:2): vxapply ──────────────────────────────────────
      length(vnapply(objs, "generate", 1)) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 108 ]
      Error: Test failures
      Execution halted
    ```

# openintro

<details>

* Version: 2.3.0
* GitHub: https://github.com/OpenIntroStat/openintro
* Source code: https://github.com/cran/openintro
* Date/Publication: 2022-02-23 12:50:05 UTC
* Number of recursive dependencies: 90

Run `cloud_details(, "openintro")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1131)
      ── Failure (test-data-biontech_adolescents.R:4:3): biontech_adolescents counts match ──
      ... %>% nrow() (`actual`) not equal to 18 (`expected`).
      
      `actual` is an integer vector (18)
      `expected` is a double vector (18)
      ── Failure (test-data-biontech_adolescents.R:5:3): biontech_adolescents counts match ──
      ... %>% nrow() (`actual`) not equal to 1129 - 18 (`expected`).
      
      `actual` is an integer vector (1111)
      `expected` is a double vector (1111)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.1Mb
      sub-directories of 1Mb or more:
        data   4.2Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2524 marked UTF-8 strings
    ```

# OpenSpecy

<details>

* Version: 0.9.3
* GitHub: https://github.com/wincowgerDEV/OpenSpecy
* Source code: https://github.com/cran/OpenSpecy
* Date/Publication: 2021-10-13 15:12:11 UTC
* Number of recursive dependencies: 128

Run `cloud_details(, "OpenSpecy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7154)
      ── Failure (test-read_spec.R:78:3): read_spc() gives expected output ───────────
      nrow(spc) (`actual`) not equal to 559 (`expected`).
      
      `actual` is an integer vector (559)
      `expected` is a double vector (559)
      ── Failure (test-read_spec.R:88:3): read_0() gives expected output ─────────────
      nrow(f0) (`actual`) not equal to 2126 (`expected`).
      
      `actual` is an integer vector (2126)
      `expected` is a double vector (2126)
      
      [ FAIL 8 | WARN 0 | SKIP 4 | PASS 95 ]
      Error: Test failures
      Execution halted
    ```

# paleopop

<details>

* Version: 2.1.2
* GitHub: https://github.com/GlobalEcologyLab/paleopop
* Source code: https://github.com/cran/paleopop
* Date/Publication: 2021-10-14 04:20:02 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "paleopop")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-PaleoPopResults.R:45:3): occupancy ────────────────────────────
      results_model$occupancy[1:4, 6:10] (`actual`) not equal to array(rep(0), c(4, 5)) (`expected`).
      
      `actual` is an integer vector (0, 0, 0, 0, 0, ...)
      `expected` is a double vector (0, 0, 0, 0, 0, ...)
      ── Failure (test-PaleoRegion.R:13:3): temporal mask ────────────────────────────
      length(raster::values(raster_stack)[!is.na(raster::values(raster_stack))]) (`actual`) not equal to sum(rowSums(region$temporal_mask)) (`expected`).
      
      `actual` is an integer vector (161)
      `expected` is a double vector (161)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 29 ]
      Error: Test failures
      Execution halted
    ```

# param6

<details>

* Version: 0.2.4
* GitHub: https://github.com/xoopR/param6
* Source code: https://github.com/cran/param6
* Date/Publication: 2022-02-15 10:00:09 UTC
* Number of recursive dependencies: 38

Run `cloud_details(, "param6")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-paramset.R:47:3): ParamSet actives - not values or tag propeties ──
      length(p) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-paramset.R:390:3): rep ────────────────────────────────────────
      length(p1) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 375 ]
      Error: Test failures
      Execution halted
    ```

# parameters

<details>

* Version: 0.17.0
* GitHub: https://github.com/easystats/parameters
* Source code: https://github.com/cran/parameters
* Date/Publication: 2022-03-10 10:10:02 UTC
* Number of recursive dependencies: 382

Run `cloud_details(, "parameters")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (22, 22, 22, 22, 22, ...)
      ── Failure (test-model_parameters_df_method.R:47:5): model_parameters, ci_method wald (t) ──
      mp4$df (`actual`) not equal to c(22, 22, 22, 22, 22, 22, 22, 22) (`expected`).
      
      `actual` is an integer vector (22, 22, 22, 22, 22, ...)
      `expected` is a double vector (22, 22, 22, 22, 22, ...)
      ── Failure (test-parameters_selection.R:5:5): select_parameters ────────────────
      n_parameters(model) - n_parameters(x) (`actual`) not equal to 7 (`expected`).
      
      `actual` is an integer vector (7)
      `expected` is a double vector (7)
      
      [ FAIL 29 | WARN 3 | SKIP 10 | PASS 446 ]
      Error: Test failures
      Execution halted
    ```

# parsermd

<details>

* Version: 0.1.2
* GitHub: https://github.com/rundel/parsermd
* Source code: https://github.com/cran/parsermd
* Date/Publication: 2021-05-20 15:00:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "parsermd")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure (test-parse-markdown.R:88:3): markdown ──────────────────────────────
      parsermd:::check_markdown_parser("# h1\n## h2\ntest\n### h3\nhello\n") (`actual`) not equal to list(...) (`expected`).
      
      `actual[[1]]$level` is an integer vector (1)
      `expected[[1]]$level` is a double vector (1)
      
      `actual[[2]]$level` is an integer vector (2)
      `expected[[2]]$level` is a double vector (2)
      
      `actual[[4]]$level` is an integer vector (3)
      `expected[[4]]$level` is a double vector (3)
      
      [ FAIL 13 | WARN 0 | SKIP 14 | PASS 163 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.5Mb
      sub-directories of 1Mb or more:
        libs  10.1Mb
    ```

# particle.swarm.optimisation

<details>

* Version: 1.0
* GitHub: NA
* Source code: https://github.com/cran/particle.swarm.optimisation
* Date/Publication: 2021-05-21 08:00:02 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "particle.swarm.optimisation")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(particle.swarm.optimisation)
      > 
      > test_check("particle.swarm.optimisation")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 82 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-ParticleSwarm.R:118:3): ParticleSwarm generate_pop ────────────
      length(swarm_test$pop) (`actual`) not equal to swarm_test$pop_size (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 82 ]
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
      `expected` is a double vector (0)
      ── Failure (test-partitioners-helpers-work.R:10:3): simulate_block_data() works ──
      nrow(df2) (`actual`) not equal to `n` (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      ── Failure (test-permutations-return-correctly.R:25:3): permutations are correct ──
      nrow(perms) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 163 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 11.0Mb
      sub-directories of 1Mb or more:
        doc    1.2Mb
        libs   8.7Mb
    ```

# patrick

<details>

* Version: 0.1.0
* GitHub: https://github.com/google/patrick
* Source code: https://github.com/cran/patrick
* Date/Publication: 2021-10-11 21:30:02 UTC
* Number of recursive dependencies: 35

Run `cloud_details(, "patrick")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > 
      > test_check("patrick")
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 15 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-with_parameters.R:117:3): patrick reports the correct line numbers ──
      `lines` (`actual`) not equal to c(3, 3) (`expected`).
      
      `actual` is an integer vector (3, 3)
      `expected` is a double vector (3, 3)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

# pavo

<details>

* Version: 2.7.1
* GitHub: https://github.com/rmaia/pavo
* Source code: https://github.com/cran/pavo
* Date/Publication: 2021-09-21 13:10:21 UTC
* Number of recursive dependencies: 87

Run `cloud_details(, "pavo")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (401, 3)
      ── Failure (test-processing.R:59:3): Aggregation ───────────────────────────────
      dim(aggspec(teal[, -1], by = ind)) (`actual`) not equal to c(401, 3) (`expected`).
      
      `actual` is an integer vector (401, 3)
      `expected` is a double vector (401, 3)
      ── Failure (test-processing.R:60:3): Aggregation ───────────────────────────────
      dim(aggspec(teal)) (`actual`) not equal to c(401, 2) (`expected`).
      
      `actual` is an integer vector (401, 2)
      `expected` is a double vector (401, 2)
      
      [ FAIL 41 | WARN 36 | SKIP 2 | PASS 348 ]
      Error: Test failures
      Execution halted
    ```

# performance

<details>

* Version: 0.9.0
* GitHub: https://github.com/easystats/performance
* Source code: https://github.com/cran/performance
* Date/Publication: 2022-03-30 07:40:05 UTC
* Number of recursive dependencies: 251

Run `cloud_details(, "performance")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (15)
      ── Failure (test-check_collinearity.R:97:7): check_collinearity | afex ─────────
      nrow(ccoW) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-check_collinearity.R:98:7): check_collinearity | afex ─────────
      nrow(ccoB) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 6 | WARN 1 | SKIP 2 | PASS 168 ]
      Error: Test failures
      Execution halted
    ```

# periscope

<details>

* Version: 1.0.1
* GitHub: https://github.com/cb4ds/periscope
* Source code: https://github.com/cran/periscope
* Date/Publication: 2022-01-03 19:40:05 UTC
* Number of recursive dependencies: 97

Run `cloud_details(, "periscope")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─periscope check_sidebar_result(...) at test_ui_functions.R:98:4
       2.   └─testthat::expect_equal(length(result.children), 2) at test_ui_functions.R:21:4
      ── Failure (test_ui_functions.R:98:5): fw_create_sidebar basic and advanced ────
      length(result.subchilds) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      Backtrace:
          ▆
       1. └─periscope check_sidebar_result(...) at test_ui_functions.R:98:4
       2.   └─testthat::expect_equal(length(result.subchilds), 3) at test_ui_functions.R:36:4
      
      [ FAIL 2 | WARN 0 | SKIP 21 | PASS 457 ]
      Error: Test failures
      Execution halted
    ```

# pillar

<details>

* Version: 1.7.0
* GitHub: https://github.com/r-lib/pillar
* Source code: https://github.com/cran/pillar
* Date/Publication: 2022-02-01 08:30:02 UTC
* Number of recursive dependencies: 98

Run `cloud_details(, "pillar")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test-format_numeric.R:5:3): same pillar at different widths ────────
      get_width(x$data) (`actual`) not equal to 13 (`expected`).
      
      `actual` is an integer vector (13)
      `expected` is a double vector (13)
      ── Failure (test-new-pillar-title.R:13:3): titles are left-adjusted ────────────
      get_extent(format(new_pillar_title(c("ab", "c")))) (`actual`) not equal to c(2, 2) (`expected`).
      
      `actual` is an integer vector (2, 2)
      `expected` is a double vector (2, 2)
      
      [ FAIL 13 | WARN 2 | SKIP 91 | PASS 302 ]
      Error: Test failures
      Execution halted
    ```

# pkgdown

<details>

* Version: 2.0.3
* GitHub: https://github.com/r-lib/pkgdown
* Source code: https://github.com/cran/pkgdown
* Date/Publication: 2022-04-24 14:30:02 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "pkgdown")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-tweak-tags.R:108:3): empty headings are skipped ───────────────
      xpath_length(html, ".//h1/a") (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 45 | WARN 0 | SKIP 70 | PASS 477 ]
      Deleting unused snapshots:
      • build-search-docs/search-no-url.json
      • build-search-docs/search.json
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘usethis’
    ```

# PKPDsim

<details>

* Version: 1.1.1
* GitHub: NA
* Source code: https://github.com/cran/PKPDsim
* Date/Publication: 2022-04-01 08:10:02 UTC
* Number of recursive dependencies: 46

Run `cloud_details(, "PKPDsim")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test_shift_regimen.R:18:5): Shifting by N works ────────────────────
      length(reg2_s1$t_inf) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test_time_rounding_bug.R:14:3): No NAs related to rounding ─────────
      sum(is.na(dat1$y)) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 40 | WARN 1 | SKIP 25 | PASS 331 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.4Mb
      sub-directories of 1Mb or more:
        libs   9.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘BH’
      All declared Imports should be used.
    ```

# PLORN

<details>

* Version: 0.1.1
* GitHub: https://github.com/takakoizumi/PLORN
* Source code: https://github.com/cran/PLORN
* Date/Publication: 2022-03-21 08:00:11 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "PLORN")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_PLORN.R:6:3): sort ────────────────────────────────────────────
      nrow(p.sort(x, y)) (`actual`) not equal to 30 (`expected`).
      
      `actual` is an integer vector (30)
      `expected` is a double vector (30)
      ── Failure (test_PLORN.R:7:3): sort ────────────────────────────────────────────
      ncol(p.sort(x, y)) (`actual`) not equal to 30 (`expected`).
      
      `actual` is an integer vector (30)
      `expected` is a double vector (30)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# plu

<details>

* Version: 0.2.1
* GitHub: https://github.com/rossellhayes/plu
* Source code: https://github.com/cran/plu
* Date/Publication: 2021-04-07 20:30:03 UTC
* Number of recursive dependencies: 45

Run `cloud_details(, "plu")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual[[1]]` is an integer vector (1)
      `expected[[1]]` is a double vector (1)
      
      `actual[[2]]` is an integer vector (2)
      `expected[[2]]` is a double vector (2)
      ── Failure (test-plu_more.R:71:3): automatic type ──────────────────────────────
      plu_more(as.list(1:3), max = 1) (`actual`) not equal to list(1, "2 more integers") (`expected`).
      
      `actual[[1]]` is an integer vector (1)
      `expected[[1]]` is a double vector (1)
      
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 280 ]
      Error: Test failures
      Execution halted
    ```

# polypharmacy

<details>

* Version: 1.0.0
* GitHub: https://github.com/guiboucher/polypharmacy
* Source code: https://github.com/cran/polypharmacy
* Date/Publication: 2021-07-12 09:30:02 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "polypharmacy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected[[1]]` is an integer vector (1, 1, 1, 2, 2, ...)
      ── Failure (test-data_process.R:283:3): data_process.grace_fctr_cst ────────────
      data_process(...) (`actual`) not equal to data.table(...) (`expected`).
      
      `actual[[1]]` is an integer vector (1, 1)
      `expected[[1]]` is a double vector (1, 1)
      ── Failure (test-data_process.R:293:3): data_process.grace_fctr_cst ────────────
      data_process(...) (`actual`) not equal to data.table(...) (`expected`).
      
      `actual[[1]]` is an integer vector (1)
      `expected[[1]]` is a double vector (1)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 39 ]
      Error: Test failures
      Execution halted
    ```

# popsom

<details>

* Version: 6.0
* GitHub: https://github.com/lutzhamel/popsom
* Source code: https://github.com/cran/popsom
* Date/Publication: 2021-12-20 20:40:02 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "popsom")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(popsom)
      > 
      > test_check("popsom")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-position.R:15:3): map.position function works ─────────────────
      ncol(p) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
      Error: Test failures
      Execution halted
    ```

# powerjoin

<details>

* Version: 0.0.1
* GitHub: https://github.com/moodymudskipper/powerjoin
* Source code: https://github.com/cran/powerjoin
* Date/Publication: 2022-01-13 08:52:43 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "powerjoin")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected$val2` is a double vector (2)
      ── Failure (test-standard_joins.R:48:3): dplyr code is still covered ───────────
      power_left_join(df1, df2, by = list(x = "id", y = "id")) (`actual`) not equal to data.frame(id = 1:2, val1 = 1:2, val2 = c(NA, 2)) (`expected`).
      
      `actual$val2` is an integer vector (NA, 2)
      `expected$val2` is a double vector (NA, 2)
      ── Failure (test-standard_joins.R:53:3): dplyr code is still covered ───────────
      power_right_join(df1, df2, by = "id", na_matches = "never") (`actual`) not equal to data.frame(id = 2:3, val1 = c(2, NA), val2 = 2:3) (`expected`).
      
      `actual$val1` is an integer vector (2, NA)
      `expected$val1` is a double vector (2, NA)
      
      [ FAIL 41 | WARN 0 | SKIP 0 | PASS 70 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘generics’ ‘lifecycle’ ‘magrittr’
      All declared Imports should be used.
    ```

# powerly

<details>

* Version: 1.7.4
* GitHub: https://github.com/mihaiconstantin/powerly
* Source code: https://github.com/cran/powerly
* Date/Publication: 2022-05-01 15:40:02 UTC
* Number of recursive dependencies: 155

Run `cloud_details(, "powerly")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (3)
      ── Failure (test-step-three.R:136:5): 'StepThree' performs the bootstrap procedure correctly ──
      dim(step_3$boot_statistics) (`actual`) not equal to c(1000, range$sequence_length) (`expected`).
      
      `actual` is an integer vector (1000, 901)
      `expected` is a double vector (1000, 901)
      ── Failure (test-step-three.R:151:5): 'StepThree' performs the bootstrap procedure correctly ──
      dim(step_3$boot_statistics) (`actual`) not equal to c(1000, range$sequence_length) (`expected`).
      
      `actual` is an integer vector (1000, 901)
      `expected` is a double vector (1000, 901)
      
      [ FAIL 15 | WARN 0 | SKIP 0 | PASS 137 ]
      Error: Test failures
      Execution halted
    ```

# ppsr

<details>

* Version: 0.0.2
* GitHub: NA
* Source code: https://github.com/cran/ppsr
* Date/Publication: 2021-03-02 10:10:02 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "ppsr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 40 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-score.R:108:3): Scoring functions work as expected ────────────
      nrow(result_df) (`actual`) not equal to ncol(df)^2 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 40 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘rpart’ ‘withr’
      All declared Imports should be used.
    ```

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# predint

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/predint
* Date/Publication: 2022-04-29 22:40:05 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "predint")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (6)
      ── Failure (test-quasi_pois_pi.R:77:9): alternative ────────────────────────────
      `ncol_lower_nd` (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      ── Failure (test-quasi_pois_pi.R:78:9): alternative ────────────────────────────
      `ncol_both_nd` (`actual`) not equal to 7 (`expected`).
      
      `actual` is an integer vector (7)
      `expected` is a double vector (7)
      
      [ FAIL 36 | WARN 0 | SKIP 0 | PASS 83 ]
      Error: Test failures
      Execution halted
    ```

# prinvars

<details>

* Version: 0.1.0
* GitHub: https://github.com/Ronho/prinvars
* Source code: https://github.com/cran/prinvars
* Date/Publication: 2022-01-11 19:22:41 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "prinvars")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 4, 3)
      ── Failure (test-utils.R:74:3): create_block ───────────────────────────────────
      blocks[[2]]@features (`actual`) not equal to c(2, 3) (`expected`).
      
      `actual` is an integer vector (2, 3)
      `expected` is a double vector (2, 3)
      ── Failure (test-utils.R:86:3): get_zero_count ─────────────────────────────────
      get_zero_count(matrix) (`actual`) not equal to c(2, 2, 1) (`expected`).
      
      `actual` is an integer vector (2, 2, 1)
      `expected` is a double vector (2, 2, 1)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 76 ]
      Error: Test failures
      Execution halted
    ```

# prioriactions

<details>

* Version: 0.4
* GitHub: https://github.com/prioriactions/prioriactions
* Source code: https://github.com/cran/prioriactions
* Date/Publication: 2022-02-09 22:30:06 UTC
* Number of recursive dependencies: 128

Run `cloud_details(, "prioriactions")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (10)
      ── Failure (test_getPotentialBenefit.R:95:3): random values with conservation benefits, threat amount equal to 1 and no locked actions ──
      f$dist[1] (`actual`) not equal to sum(d$data$dist_features$feature == 1, na.rm = TRUE) (`expected`).
      
      `actual` is a double vector (10)
      `expected` is an integer vector (10)
      ── Failure (test_getPotentialBenefit.R:96:3): random values with conservation benefits, threat amount equal to 1 and no locked actions ──
      f$dist[2] (`actual`) not equal to sum(d$data$dist_features$feature == 2, na.rm = TRUE) (`expected`).
      
      `actual` is a double vector (10)
      `expected` is an integer vector (10)
      
      [ FAIL 9 | WARN 0 | SKIP 16 | PASS 115 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘gurobi’
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 20.9Mb
      sub-directories of 1Mb or more:
        doc    3.4Mb
        libs  16.4Mb
    ```

# prismatic

<details>

* Version: 1.1.0
* GitHub: https://github.com/EmilHvitfeldt/prismatic
* Source code: https://github.com/cran/prismatic
* Date/Publication: 2021-10-17 04:30:02 UTC
* Number of recursive dependencies: 42

Run `cloud_details(, "prismatic")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(prismatic)
      > 
      > test_check("prismatic")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 255 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-contrast_ratio.R:17:3): contrast_ratio works ──────────────────
      length(contrast_ratio("blue", rainbow(10))) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 255 ]
      Error: Test failures
      Execution halted
    ```

# proceduralnames

<details>

* Version: 0.2.1
* GitHub: https://github.com/mikemahoney218/proceduralnames
* Source code: https://github.com/cran/proceduralnames
* Date/Publication: 2021-10-12 15:20:02 UTC
* Number of recursive dependencies: 41

Run `cloud_details(, "proceduralnames")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-english_names.R:2:3): make_english_names works ────────────────
      length(make_english_names(2)) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-spanish_names.R:2:3): make_spanish_names works ────────────────
      length(make_spanish_names(2)) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 3 ]
      Error: Test failures
      Execution halted
    ```

# projections

<details>

* Version: 0.5.4
* GitHub: https://github.com/reconhub/projections
* Source code: https://github.com/cran/projections
* Date/Publication: 2021-04-22 09:30:05 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "projections")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • plots/evd-proj-box-no-outliers.svg
      • plots/evd-proj-box-only.svg
      • plots/evd-proj-full-red-ribbon-narrow-range.svg
      • plots/evd-proj-no-box-custom-lines.svg
      • plots/evd-proj-no-ribbon.svg
      • plots/evd-proj-red-box.svg
      • plots/evd-proj-red-ribbon.svg
      • plots/evd-proj-ribbon-only.svg
      • plots/evd-proj-with-incidence-incidence-and-custom.svg
      • plots/evd-proj-with-incidence-incidence-box-only.svg
      • plots/evd-proj-with-incidence-incidence-no-box.svg
      • plots/evd-proj-with-incidence-incidence.svg
      • plots/evd-proj.svg
      Error: Test failures
      Execution halted
    ```

# prompt

<details>

* Version: 1.0.1
* GitHub: https://github.com/gaborcsardi/prompt
* Source code: https://github.com/cran/prompt
* Date/Publication: 2021-03-12 17:30:02 UTC
* Number of recursive dependencies: 39

Run `cloud_details(, "prompt")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (5)
      • no git (2)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-prompt-fancy.R:41:3): has_emoji ───────────────────────────────
      length(he) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 38 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# ps

<details>

* Version: 1.7.0
* GitHub: https://github.com/r-lib/ps
* Source code: https://github.com/cran/ps
* Date/Publication: 2022-04-23 16:10:02 UTC
* Number of recursive dependencies: 41

Run `cloud_details(, "ps")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 5. Failure (test-posix.R:36:3): username, uids, gids ────────────────────────
      ps_uids(ps)[["real"]] (`actual`) not equal to as.numeric(ps2_uid) (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      ── 6. Failure (test-posix.R:39:3): username, uids, gids ────────────────────────
      ps_gids(ps)[["real"]] (`actual`) not equal to as.numeric(ps2_gid) (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

# psdr

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/psdr
* Date/Publication: 2021-06-04 07:50:02 UTC
* Number of recursive dependencies: 95

Run `cloud_details(, "psdr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-window.R:50:3): GetSubsetOfWindows works ──────────────────────
      length(subset.list.of.homogeneous.windows) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-window.R:98:3): GetSubsetOfWindowsTwoLevels works ─────────────
      length(result) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 27 | WARN 0 | SKIP 0 | PASS 44 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘qpdf’
      All declared Imports should be used.
    ```

# psp

<details>

* Version: 0.1
* GitHub: NA
* Source code: https://github.com/cran/psp
* Date/Publication: 2021-06-07 06:50:02 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "psp")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [1] "iteration [298]: found 100"
      [1] "iteration [299]: found 100"
      [1] "iteration [300]: found 100"
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-polytope.R:41:12): PSP finds all 100 regions in a 5 parameter model ──
      length(out[[2]]) (`actual`) not equal to 100 (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# pTITAN2

<details>

* Version: 1.0.2
* GitHub: https://github.com/USEPA/pTITAN2
* Source code: https://github.com/cran/pTITAN2
* Date/Publication: 2022-03-07 17:00:02 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "pTITAN2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (251, 2)
      ── Failure (test-datasets.R:5:13): data set dimensions are as expected ─────────
      dim(CD_06_Mall_wID) (`actual`) not equal to c(251, 501) (`expected`).
      
      `actual` is an integer vector (251, 501)
      `expected` is a double vector (251, 501)
      ── Failure (test-datasets.R:6:13): data set dimensions are as expected ─────────
      dim(CN_06_Mall_wID) (`actual`) not equal to c(124, 501) (`expected`).
      
      `actual` is an integer vector (124, 501)
      `expected` is a double vector (124, 501)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# purrrlyr

<details>

* Version: 0.0.8
* GitHub: https://github.com/hadley/purrrlyr
* Source code: https://github.com/cran/purrrlyr
* Date/Publication: 2022-03-29 13:00:02 UTC
* Number of recursive dependencies: 46

Run `cloud_details(, "purrrlyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (32, 3)
      ── Failure (test-rows.R:183:3): by_slice() does not create .row column ─────────
      dim(rows_vectors) (`actual`) not equal to c(9, 2) (`expected`).
      
      `actual` is an integer vector (9, 2)
      `expected` is a double vector (9, 2)
      ── Failure (test-rows.R:187:3): by_slice() does not create .row column ─────────
      dim(rows_dfs) (`actual`) not equal to c(9, 3) (`expected`).
      
      `actual` is an integer vector (9, 3)
      `expected` is a double vector (9, 3)
      
      [ FAIL 29 | WARN 0 | SKIP 0 | PASS 55 ]
      Error: Test failures
      Execution halted
    ```

# qad

<details>

* Version: 1.0.1
* GitHub: https://github.com/griefl/qad
* Source code: https://github.com/cran/qad
* Date/Publication: 2021-12-02 14:30:02 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "qad")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-qad.R:56:3): pairwise qad ─────────────────────────────────────
      length(pw_fit) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      ── Failure (test-utilityfunctions.R:16:3): summary.qad ─────────────────────────
      test$SampleSize (`actual`) not equal to `n` (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      
      [ FAIL 10 | WARN 5 | SKIP 0 | PASS 72 ]
      Error: Test failures
      Execution halted
    ```

# quadtree

<details>

* Version: 0.1.9
* GitHub: https://github.com/dfriend21/quadtree
* Source code: https://github.com/cran/quadtree
* Date/Publication: 2022-02-01 16:00:12 UTC
* Number of recursive dependencies: 52

Run `cloud_details(, "quadtree")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$xmin` is a double vector (11000, 11000, 12000, 13000, 14000, ...)
      `expected$xmin` is an integer vector (11000, 11000, 12000, 13000, 14000, ...)
      
      `actual$xmax` is a double vector (12000, 12000, 13000, 14000, 15000, ...)
      `expected$xmax` is an integer vector (12000, 12000, 13000, 14000, 15000, ...)
      
      `actual$ymin` is a double vector (6000, 7000, 5000, 5000, 5000, ...)
      `expected$ymin` is an integer vector (6000, 7000, 5000, 5000, 5000, ...)
      
      `actual$ymax` is a double vector (7000, 8000, 6000, 6000, 6000, ...)
      `expected$ymax` is an integer vector (7000, 8000, 6000, 6000, 6000, ...)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 172 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 16.4Mb
      sub-directories of 1Mb or more:
        doc    1.7Mb
        libs  13.7Mb
    ```

# QuESTr

<details>

* Version: 0.1.1
* GitHub: https://github.com/takakoizumi/QuESTr
* Source code: https://github.com/cran/QuESTr
* Date/Publication: 2022-02-15 20:00:04 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "QuESTr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_QuEST.R:6:3): sort ────────────────────────────────────────────
      nrow(q.sort(x, y)) (`actual`) not equal to 30 (`expected`).
      
      `actual` is an integer vector (30)
      `expected` is a double vector (30)
      ── Failure (test_QuEST.R:7:3): sort ────────────────────────────────────────────
      ncol(q.sort(x, y)) (`actual`) not equal to 100 (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# r2dii.plot

<details>

* Version: 0.2.0
* GitHub: https://github.com/2DegreesInvesting/r2dii.plot
* Source code: https://github.com/cran/r2dii.plot
* Date/Publication: 2021-10-16 04:10:02 UTC
* Number of recursive dependencies: 90

Run `cloud_details(, "r2dii.plot")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (38)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-plot_techmix.R:90:3): with input data before start year of 'projected' prep_techmix
                outputs data with start year of 'projected' ──
      min(prep_techmix(data)$year, na.rm = TRUE) (`actual`) not equal to `start_year` (`expected`).
      
      `actual` is a double vector (2020)
      `expected` is an integer vector (2020)
      
      [ FAIL 1 | WARN 0 | SKIP 38 | PASS 97 ]
      Error: Test failures
      Execution halted
    ```

# r2pptx

<details>

* Version: 0.1.0
* GitHub: https://github.com/mattle24/r2pptx
* Source code: https://github.com/cran/r2pptx
* Date/Publication: 2021-09-15 18:40:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "r2pptx")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-presentation.R:33:5): add slide: can add a slide ──────────────
      length(p) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-presentation.R:41:5): add slide: can add a slideList ──────────
      length(p) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 27 ]
      Error: Test failures
      Execution halted
    ```

# r2rtf

<details>

* Version: 0.3.4
* GitHub: https://github.com/Merck/r2rtf
* Source code: https://github.com/cran/r2rtf
* Date/Publication: 2022-04-08 12:50:03 UTC
* Number of recursive dependencies: 105

Run `cloud_details(, "r2rtf")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-independent-testing-rtf_subset.R:70:3): Test whether other attributes were passed correctly ──
      attr(tbl_sub, "row.names") (`actual`) not equal to c(1, 2) (`expected`).
      
      `actual` is an integer vector (1, 2)
      `expected` is a double vector (1, 2)
      ── Failure (test-independent-testing-update_cellx.R:19:3): border twips were updated to maxinum as expected ──
      sum(...) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 4 | WARN 0 | SKIP 49 | PASS 551 ]
      Error: Test failures
      Execution halted
    ```

# r6methods

<details>

* Version: 0.1.0
* GitHub: https://github.com/jakubsob/r6methods
* Source code: https://github.com/cran/r6methods
* Date/Publication: 2021-03-16 08:30:02 UTC
* Number of recursive dependencies: 57

Run `cloud_details(, "r6methods")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (9)
      ── Failure (test-find_closing.R:14:3): match on arbitrary characters ───────────
      find_closing("[xxxx X", "\\[", "X") (`actual`) not equal to 7 (`expected`).
      
      `actual` is an integer vector (7)
      `expected` is a double vector (7)
      ── Failure (test-insert_methods.R:298:3): number of lines after insertion ──────
      n_lines + 3 (`actual`) not equal to `new_n_lines` (`expected`).
      
      `actual` is a double vector (18)
      `expected` is an integer vector (18)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 16 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# RABR

<details>

* Version: 0.1.0
* GitHub: https://github.com/tian-yu-zhan/RABR
* Source code: https://github.com/cran/RABR
* Date/Publication: 2021-05-26 11:40:05 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "RABR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test_continuous.R:68:3): Length of overall probability is 1 ────────
      length(RABRtest$ProbAdjOverall) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_continuous.R:84:3): Length of ASN is the number of treatment groups ──
      length(RABRtest$ASN) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 10 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘asd’ ‘cubature’ ‘data.table’ ‘ggplot2’ ‘multxpert’ ‘survival’
      All declared Imports should be used.
    ```

# Rage

<details>

* Version: 1.2.0
* GitHub: https://github.com/jonesor/Rage
* Source code: https://github.com/cran/Rage
* Date/Publication: 2021-10-15 21:10:02 UTC
* Number of recursive dependencies: 109

Run `cloud_details(, "Rage")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5)
      ── Failure (test-perturb_trans.R:11:3): perturb_trans works correctly ──────────
      length(x_elas) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test-perturb_vr.R:7:3): perturb_vr works correctly ─────────────────
      length(x) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 11 | WARN 0 | SKIP 0 | PASS 406 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcompadre’
      All declared Imports should be used.
    ```

# rankUncertainty

<details>

* Version: 1.0.2.0
* GitHub: NA
* Source code: https://github.com/cran/rankUncertainty
* Date/Publication: 2021-11-15 19:20:02 UTC
* Number of recursive dependencies: 48

Run `cloud_details(, "rankUncertainty")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-simple.R:59:3): topSet is correct for simple intervals ────────
      length(topSet(intervals, 2)) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-simple.R:60:3): topSet is correct for simple intervals ────────
      length(topSet(intervals, 3)) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 86 | WARN 0 | SKIP 0 | PASS 284 ]
      Error: Test failures
      Execution halted
    ```

# ratdat

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/ratdat
* Date/Publication: 2022-04-05 09:40:04 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "ratdat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (24)
      ── Failure (test-data.R:14:3): species is the right size ───────────────────────
      nrow(species) (`actual`) not equal to 54 (`expected`).
      
      `actual` is an integer vector (54)
      `expected` is a double vector (54)
      ── Failure (test-data.R:18:3): surveys is the right size ───────────────────────
      nrow(surveys) (`actual`) not equal to 35549 (`expected`).
      
      `actual` is an integer vector (35549)
      `expected` is a double vector (35549)
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 5 ]
      Error: Test failures
      Execution halted
    ```

# rater

<details>

* Version: 1.2.0
* GitHub: https://github.com/jeffreypullin/rater
* Source code: https://github.com/cran/rater
* Date/Publication: 2021-07-13 14:40:02 UTC
* Number of recursive dependencies: 87

Run `cloud_details(, "rater")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure (test_models.R:54:3): Computation of K is correct in dawid_skene() ──
      get_K(dawid_skene(beta = array(1, c(3, 2, 2)))) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test_plotting.R:52:3): plot_raters output has correct type ─────────
      get_facet_dim(ds_plot) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 43 | WARN 0 | SKIP 10 | PASS 246 ]
      Error: Test failures
      In addition: There were 12 warnings (use warnings() to see them)
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 126.1Mb
      sub-directories of 1Mb or more:
        libs  125.3Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# rbioacc

<details>

* Version: 1.1-0
* GitHub: https://github.com/aursiber/rbioacc
* Source code: https://github.com/cran/rbioacc
* Date/Publication: 2022-01-12 10:52:46 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "rbioacc")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-psrf.R:22:3): psrf ────────────────────────────────────────────
      length(psrf(fit_MGS)[, 1]) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-psrf.R:23:3): psrf ────────────────────────────────────────────
      length(psrf(fit_MGSG)[, 1]) (`actual`) not equal to 16 (`expected`).
      
      `actual` is an integer vector (16)
      `expected` is a double vector (16)
      
      [ FAIL 2 | WARN 51 | SKIP 9 | PASS 78 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 104.4Mb
      sub-directories of 1Mb or more:
        libs  103.8Mb
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# rbmi

<details>

* Version: 1.1.3
* GitHub: https://github.com/insightsengineering/rbmi
* Source code: https://github.com/cran/rbmi
* Date/Publication: 2022-03-21 15:50:07 UTC
* Number of recursive dependencies: 111

Run `cloud_details(, "rbmi")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       2.   └─testthat::expect_equal(nrow(res), n_visits * n) at test-simulate_data.R:20:4
      ── Failure (test-simulate_data.R:423:5): generic tests to ensure simulate_data is working as expected ──
      `count` (`actual`) not equal to c(simpar_c$n, simpar_t$n) * 3 (`expected`).
      
      `actual` is an integer vector (27000, 21000)
      `expected` is a double vector (27000, 21000)
      ── Failure (test-simulate_data.R:435:5): generic tests to ensure simulate_data is working as expected ──
      `control_nrow` (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 44 | WARN 0 | SKIP 12 | PASS 1001 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 57.3Mb
      sub-directories of 1Mb or more:
        libs  56.0Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RcppParallel’ ‘rstantools’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# rcites

<details>

* Version: 1.2.0
* GitHub: https://github.com/ropensci/rcites
* Source code: https://github.com/cran/rcites
* Date/Publication: 2021-11-04 20:20:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "rcites")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7)
      ── Failure (test-taxonconcept.R:38:3): spp_taxonconcept() CMS works ────────────
      nrow(res[[1L]]) (`actual`) not equal to 20 (`expected`).
      
      `actual` is an integer vector (20)
      `expected` is a double vector (20)
      ── Failure (test-taxonconcept.R:49:3): spp_taxonconcept() page selection works ──
      nrow(res[[1L]]) (`actual`) not equal to 20 (`expected`).
      
      `actual` is an integer vector (20)
      `expected` is a double vector (20)
      
      [ FAIL 9 | WARN 0 | SKIP 6 | PASS 100 ]
      Error: Test failures
      Execution halted
    ```

# RCLabels

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/RCLabels
* Date/Publication: 2022-03-05 16:00:02 UTC
* Number of recursive dependencies: 89

Run `cloud_details(, "RCLabels")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-utilities.R:18:3): prepositions make good "or" patterns ───────
      attr(res[[2]], which = "match.length") (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-utilities.R:19:3): prepositions make good "or" patterns ───────
      attr(res[[3]], which = "match.length") (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 221 ]
      Error: Test failures
      Execution halted
    ```

# rcmdcheck

<details>

* Version: 1.4.0
* GitHub: https://github.com/r-Lib/rcmdcheck
* Source code: https://github.com/cran/rcmdcheck
* Date/Publication: 2021-09-27 15:10:02 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "rcmdcheck")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── 3. Failure (test-color.R:17:3): colors can be turned on and off ─────────────
      rcmdcheck_color(cli::num_ansi_colors)() (`actual`) not equal to 300 (`expected`).
      
      `actual` is an integer vector (300)
      `expected` is a double vector (300)
      
      ── 4. Failure (test-tests.R:13:3): parsing tests for multiple architectures ────
      length(tf) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      ══ DONE ════════════════════════════════════════════════════════════════════════
      Error: Test failures
      Execution halted
    ```

# rdecision

<details>

* Version: 1.1.0
* GitHub: NA
* Source code: https://github.com/cran/rdecision
* Date/Publication: 2021-09-08 22:00:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "rdecision")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-Transition.R:47:3): ModVars are identified and their values are returned ──
      length(mv) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-Transition.R:57:3): ModVars are identified and their values are returned ──
      length(mv) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 73 | WARN 0 | SKIP 14 | PASS 851 ]
      Error: Test failures
      Execution halted
    ```

# readr

<details>

* Version: 2.1.2
* GitHub: https://github.com/tidyverse/readr
* Source code: https://github.com/cran/readr
* Date/Publication: 2022-01-30 22:30:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "readr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘first_edition.R’
    Running the tests in ‘tests/first_edition.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-tokenizer-delim.R:41:3): problem if unterminated escape ───────
      p$col (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-type-convert.R:5:3): missing values removed before guessing col type ──
      df2$x (`actual`) not equal to c(NA, 10L) (`expected`).
      
      `actual` is a double vector (NA, 10)
      `expected` is an integer vector (NA, 10)
      
      [ FAIL 85 | WARN 0 | SKIP 34 | PASS 634 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.8Mb
      sub-directories of 1Mb or more:
        libs   9.9Mb
    ```

# readxl

<details>

* Version: 1.4.0
* GitHub: https://github.com/tidyverse/readxl
* Source code: https://github.com/cran/readxl
* Date/Publication: 2022-03-28 18:30:02 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "readxl")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-missing-values.R:98:3): empty named column gives NA column ────
      ncol(df1) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-missing-values.R:102:3): empty named column gives NA column ───
      ncol(df2) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 4 | WARN 0 | SKIP 6 | PASS 365 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.1Mb
      sub-directories of 1Mb or more:
        libs   5.8Mb
    ```

# recipes

<details>

* Version: 0.2.0
* GitHub: https://github.com/tidymodels/recipes
* Source code: https://github.com/cran/recipes
* Date/Publication: 2022-02-18 23:20:02 UTC
* Number of recursive dependencies: 127

Run `cloud_details(, "recipes")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (150)
      ── Failure (test_sparsity.R:76:3): issue 206 - NA values are kept when requesting matrix composition ──
      nrow(res_mat) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test_sparsity.R:77:3): issue 206 - NA values are kept when requesting matrix composition ──
      nrow(res_sparse) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 57 | WARN 0 | SKIP 127 | PASS 1937 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘fastICA’, ‘dimRed’
    ```

# REDCapR

<details>

* Version: 1.0.0
* GitHub: https://github.com/OuhscBbmc/REDCapR
* Source code: https://github.com/cran/REDCapR
* Date/Publication: 2021-07-22 04:50:02 UTC
* Number of recursive dependencies: 92

Run `cloud_details(, "REDCapR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      ── Failure (test-validate.R:70:3): validate_field_names -concern dataset ───────
      nrow(ds) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      One uppercase field should be flagged
      ── Failure (test-validate.R:72:3): validate_field_names -concern dataset ───────
      ds$field_index (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 9 | WARN 0 | SKIP 109 | PASS 163 ]
      Error: Test failures
      Execution halted
    ```

# RedditExtractoR

<details>

* Version: 3.0.6
* GitHub: NA
* Source code: https://github.com/cran/RedditExtractoR
* Date/Publication: 2022-03-03 12:00:02 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "RedditExtractoR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (15)
      ── Failure (test_get_user_content.R:10:3): a regular user can be parsed correctly ──
      ncol(results$threads) (`actual`) not equal to 11 (`expected`).
      
      `actual` is an integer vector (11)
      `expected` is a double vector (11)
      ── Failure (test_get_user_content.R:15:3): about user info works ───────────────
      length(build_user_info_list(about_user_json)) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      
      [ FAIL 9 | WARN 0 | SKIP 0 | PASS 42 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘rlang’
      All declared Imports should be used.
    ```

# redist

<details>

* Version: 3.1.5
* GitHub: https://github.com/alarm-redist/redist
* Source code: https://github.com/cran/redist
* Date/Publication: 2021-10-05 23:20:19 UTC
* Number of recursive dependencies: 147

Run `cloud_details(, "redist")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (40)
      ── Failure (test_redist_plans.R:20:5): add_reference works ─────────────────────
      ncol(as.matrix(x)) (`actual`) not equal to ncol(plans_10) + 1 (`expected`).
      
      `actual` is an integer vector (928)
      `expected` is a double vector (928)
      ── Failure (test_redist_plans.R:31:5): subsetting works ────────────────────────
      ncol(as.matrix(x_ref)) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 13 | WARN 0 | SKIP 2 | PASS 80 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 36.1Mb
      sub-directories of 1Mb or more:
        libs  32.4Mb
    ```

# redistmetrics

<details>

* Version: 1.0.2
* GitHub: https://github.com/alarm-redist/redistmetrics
* Source code: https://github.com/cran/redistmetrics
* Date/Publication: 2022-04-11 14:40:02 UTC
* Number of recursive dependencies: 84

Run `cloud_details(, "redistmetrics")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1833)
      ── Failure (test-distances.R:37:3): dist_ham works ─────────────────────────────
      `a` (`actual`) not equal to `e` (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-incumbent.R:7:3): inc_pairs works ─────────────────────────────
      `a` (`actual`) not equal to `e` (`expected`).
      
      `actual` is an integer vector (1, 1)
      `expected` is a double vector (1, 1)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 79 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.0Mb
      sub-directories of 1Mb or more:
        libs   8.2Mb
    ```

# remiod

<details>

* Version: 1.0.0
* GitHub: https://github.com/xsswang/remiod
* Source code: https://github.com/cran/remiod
* Date/Publication: 2022-03-14 08:50:02 UTC
* Number of recursive dependencies: 125

Run `cloud_details(, "remiod")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_mcmcplot.R:20:1): (code run outside of `test_that()`) ─────────
      length(unique(model$data$chain)) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test_summary.R:23:1): (code run outside of `test_that()`) ──────────
      sum(colnames(model$res[[1]]$regcoef) %in% c("GR-crit", "MCE/SD")) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘reshape2’
      All declared Imports should be used.
    ```

# report

<details>

* Version: 0.5.1
* GitHub: https://github.com/easystats/report
* Source code: https://github.com/cran/report
* Date/Publication: 2022-02-22 13:00:02 UTC
* Number of recursive dependencies: 174

Run `cloud_details(, "report")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-report.sessionInfo.R:29:3): report.sessionInfo - Core ─────────
      length(as.character(summary(r))) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-report_participants.R:14:3): report_participants ──────────────
      nchar(...) (`actual`) not equal to 160 (`expected`).
      
      `actual` is an integer vector (160)
      `expected` is a double vector (160)
      
      [ FAIL 22 | WARN 7 | SKIP 13 | PASS 85 ]
      Error: Test failures
      Execution halted
    ```

# repr

<details>

* Version: 1.1.4
* GitHub: https://github.com/IRkernel/repr
* Source code: https://github.com/cran/repr
* Date/Publication: 2022-01-04 14:20:06 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "repr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(repr)
      > 
      > test_check('repr')
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 130 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_repr_array_df.r:139:2): matrices in data.frames work ──────────
      dim(df$Sepal.Width) (`actual`) not equal to c(3, 2) (`expected`).
      
      `actual` is an integer vector (3, 2)
      `expected` is a double vector (3, 2)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 130 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Packages which this enhances but not available for checking:
      'data.table', 'vegalite', 'plotly', 'geojsonio'
    ```

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘geojsonio’, ‘plotly’, ‘vegalite’
    ```

# rethnicity

<details>

* Version: 0.2.2
* GitHub: https://github.com/fangzhou-xie/rethnicity
* Source code: https://github.com/cran/rethnicity
* Date/Publication: 2021-11-30 09:30:02 UTC
* Number of recursive dependencies: 52

Run `cloud_details(, "rethnicity")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test_prediction.R:6:3): no error ───────────────────────────────────
      nrow(predict_ethnicity(lastnames = "Freeman", method = "lastname")) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_prediction.R:7:3): no error ───────────────────────────────────
      nrow(...) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 30.8Mb
      sub-directories of 1Mb or more:
        include   1.9Mb
        libs     27.2Mb
        models    1.6Mb
    ```

# retroharmonize

<details>

* Version: 0.2.0
* GitHub: https://github.com/rOpenGov/retroharmonize
* Source code: https://github.com/cran/retroharmonize
* Date/Publication: 2021-11-02 22:20:12 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "retroharmonize")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (35)
      ── Failure (test-pull_survey.R:10:3): pulling works ────────────────────────────
      nrow(pull_survey(example_surveys, filename = "ZA5913.rds")) (`actual`) not equal to 35 (`expected`).
      
      `actual` is an integer vector (35)
      `expected` is a double vector (35)
      ── Failure (test-read_surveys.R:9:3): All files are read ───────────────────────
      length(example_surveys) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 11 | WARN 0 | SKIP 3 | PASS 96 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc        1.1Mb
        examples   1.9Mb
    ```

# ricu

<details>

* Version: 0.5.2
* GitHub: https://github.com/eth-mds/ricu
* Source code: https://github.com/cran/ricu
* Date/Publication: 2022-04-26 22:00:02 UTC
* Number of recursive dependencies: 112

Run `cloud_details(, "ricu")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual` is a double vector (1)
      `expected` is an integer vector (1)
      ── Failure (test-utils-ts.R:17:3): collapse/expand ─────────────────────────────
      `tbl` (`actual`) not equal to `col` (`expected`).
      
      `actual[[2]]` is an S3 object of class <difftime>, an integer vector
      `expected[[2]]` is an S3 object of class <difftime>, a double vector
      
      `actual[[3]]` is an S3 object of class <difftime>, an integer vector
      `expected[[3]]` is an S3 object of class <difftime>, a double vector
      
      [ FAIL 5 | WARN 0 | SKIP 8 | PASS 595 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘jss.Rmd’ using rmarkdown
    A new version of TeX Live has been released. If you need to install or update any LaTeX packages, you have to upgrade TinyTeX with tinytex::reinstall_tinytex(). If it fails to upgrade, you might be using a default random CTAN mirror that has not been fully synced to the main CTAN repository, and you need to wait for a few more days or use a CTAN mirror that is known to be up-to-date (see the "repository" argument on the help page ?tinytex::install_tinytex).
    
    tlmgr: Local TeX Live (2021) is older than remote repository (2022).
    Cross release updates are only supported with
      update-tlmgr-latest(.sh/.exe) --update
    See https://tug.org/texlive/upgrade.html for details.
    Warning in system2("tlmgr", args, ...) :
      running command ''tlmgr' search --file --global '/standalone.cls'' had status 1
    ...
    --- finished re-building ‘ricu.Rmd’
    
    --- re-building ‘uom.Rmd’ using rmarkdown
    --- finished re-building ‘uom.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘jss.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# rigr

<details>

* Version: 1.0.1
* GitHub: https://github.com/statdivlab/rigr
* Source code: https://github.com/cran/rigr
* Date/Publication: 2021-09-15 09:20:02 UTC
* Number of recursive dependencies: 115

Run `cloud_details(, "rigr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (50)
      ── Failure (test_wilcoxon.R:552:3): wilcoxon() returns correct numbers for two-sample uncorrected test ──
      wil1$table[2, 1] (`actual`) not equal to length(b) (`expected`).
      
      `actual` is a double vector (50)
      `expected` is an integer vector (50)
      ── Failure (test_wilcoxon.R:553:3): wilcoxon() returns correct numbers for two-sample uncorrected test ──
      wil1$table[3, 1] (`actual`) not equal to length(a) + length(b) (`expected`).
      
      `actual` is a double vector (100)
      `expected` is an integer vector (100)
      
      [ FAIL 183 | WARN 0 | SKIP 0 | PASS 2113 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Exact’ ‘plyr’ ‘tibble’
      All declared Imports should be used.
    ```

# riskmetric

<details>

* Version: 0.1.2
* GitHub: https://github.com/pharmaR/riskmetric
* Source code: https://github.com/cran/riskmetric
* Date/Publication: 2022-01-28 21:10:02 UTC
* Number of recursive dependencies: 94

Run `cloud_details(, "riskmetric")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_assess_has_news.R:3:3): assess_has_news returns expected result for source packages ──
      unclass(assess_source_good$has_news[[1]]) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test_assess_has_news.R:4:3): assess_has_news returns expected result for source packages ──
      unclass(assess_source_bad$has_news[[1]]) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 2 | WARN 0 | SKIP 10 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# rlang

<details>

* Version: 1.0.2
* GitHub: https://github.com/r-lib/rlang
* Source code: https://github.com/cran/rlang
* Date/Publication: 2022-03-04 15:30:06 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "rlang")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘sink.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-trace.R:88:3): trace_simplify_branch() extracts last branch ───
      sum(x3$visible) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-trace.R:89:3): trace_simplify_branch() extracts last branch ───
      sum(trace_simplify_branch(x3)$visible) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 32 | WARN 2 | SKIP 213 | PASS 3540 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘winch’
    ```

# rmangal

<details>

* Version: 2.1.0
* GitHub: https://github.com/ropensci/rmangal
* Source code: https://github.com/cran/rmangal
* Date/Publication: 2021-11-24 19:10:02 UTC
* Number of recursive dependencies: 192

Run `cloud_details(, "rmangal")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (47966)
      ── Failure (test-search_taxonomy.R:24:5): search_taxonomy() querying specific id works ──
      resEol$taxonomy.eol (`actual`) not equal to 583069 (`expected`).
      
      `actual` is an integer vector (583069)
      `expected` is a double vector (583069)
      ── Failure (test-search_taxonomy.R:25:5): search_taxonomy() querying specific id works ──
      resBold$taxonomy.bold (`actual`) not equal to 100987 (`expected`).
      
      `actual` is an integer vector (100987)
      `expected` is a double vector (100987)
      
      [ FAIL 25 | WARN 0 | SKIP 0 | PASS 67 ]
      Error: Test failures
      Execution halted
    ```

# rmBayes

<details>

* Version: 0.1.13
* GitHub: https://github.com/zhengxiaoUVic/rmBayes
* Source code: https://github.com/cran/rmBayes
* Date/Publication: 2021-09-15 18:00:06 UTC
* Number of recursive dependencies: 71

Run `cloud_details(, "rmBayes")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-errors.R:186:3): Diagnostics of within-subjects HDI ───────────
      length(rmHDI(data.wide = recall.wide, seed = 277, diagnostics = TRUE)) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-errors.R:190:3): Diagnostics of standard HDI ──────────────────
      length(...) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 2 | WARN 0 | SKIP 10 | PASS 24 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 308.7Mb
      sub-directories of 1Mb or more:
        libs  308.3Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘RcppParallel’ ‘rstantools’
      All declared Imports should be used.
    ```

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# roahd

<details>

* Version: 1.4.3
* GitHub: https://github.com/astamm/roahd
* Source code: https://github.com/cran/roahd
* Date/Publication: 2021-11-04 00:10:02 UTC
* Number of recursive dependencies: 86

Run `cloud_details(, "roahd")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual$values` is a double vector (2, 2, 2, 2, 2, ...)
      `expected$values` is an integer vector (2, 2, 2, 2, 2, ...)
      ── Failure (test-fData.R:131:3): Algebraic operations work as expected on `fData` objects ──
      (fD * 4)/2 (`actual`) not equal to fD + fD (`expected`).
      
      `actual$values` is a double vector (2, 2, 2, 2, 2, ...)
      `expected$values` is an integer vector (2, 2, 2, 2, 2, ...)
      
      [ FAIL 3 | WARN 0 | SKIP 24 | PASS 125 ]
      Deleting unused snapshots:
      • fData/s3-plot-method-for-fdata-object-subsetted-from-mfdata-object.svg
      • fData/s3-plot-method-for-fdata-objects.svg
      • fData/s3-plot-method-for-mfdata-objects.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        data   2.9Mb
        doc    1.7Mb
    ```

# robcp

<details>

* Version: 0.3.5
* GitHub: NA
* Source code: https://github.com/cran/robcp
* Date/Publication: 2022-03-30 11:00:02 UTC
* Number of recursive dependencies: 36

Run `cloud_details(, "robcp")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Loading required package: robcp
      [ FAIL 1 | WARN 0 | SKIP 5 | PASS 267 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (5)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-cor.R:133:3): CUSUM test for changes in the scale is performed correctly ──
      attr(cor_cusum(x, "rho")$statistic, "cp-location") not equal to 250.
      1/1 mismatches
      [1] 196 - 250 == -54
      
      [ FAIL 1 | WARN 0 | SKIP 5 | PASS 267 ]
      Error: Test failures
      Execution halted
    ```

# robnptests

<details>

* Version: 1.0.0
* GitHub: https://github.com/s-abbas/robnptests
* Source code: https://github.com/cran/robnptests
* Date/Publication: 2021-11-08 15:40:02 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "robnptests")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_scale_estimators.R:39:3): win_var works correctly ─────────────
      win_var(x = 2 * x, gamma = 0) (`actual`) not equal to list(var = 4 * win_var(x, gamma = 0)$var, h = length(x)) (`expected`).
      
      `actual$h` is a double vector (10)
      `expected$h` is an integer vector (10)
      ── Failure (test_scale_estimators.R:56:3): win_var works correctly ─────────────
      win_var(x = x) (`actual`) not equal to list(var = var(x), h = length(x)) (`expected`).
      
      `actual$h` is a double vector (10)
      `expected$h` is an integer vector (10)
      
      [ FAIL 2 | WARN 0 | SKIP 10 | PASS 158 ]
      Error: Test failures
      Execution halted
    ```

# robust2sls

<details>

* Version: 0.2.0
* GitHub: https://github.com/jkurle/robust2sls
* Source code: https://github.com/cran/robust2sls
* Date/Publication: 2022-02-14 12:30:02 UTC
* Number of recursive dependencies: 107

Run `cloud_details(, "robust2sls")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure (test-utility.R:441:3): update_list() works correctly ───────────────
      length(u2$type) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 120 | WARN 0 | SKIP 25 | PASS 938 ]
      Deleting unused snapshots:
      • class/test1_default.png
      • class/test1_m0.png
      • class/test1_m4.png
      • class/test2_default.png
      • class/test3_default.png
      Error: Test failures
      Execution halted
    ```

# rocker

<details>

* Version: 0.3.0
* GitHub: https://github.com/nikolaus77/rocker
* Source code: https://github.com/cran/rocker
* Date/Publication: 2022-01-04 23:20:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "rocker")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (32)
      ── Failure (test_misc.R:71:3): Auto connect ────────────────────────────────────
      nrow(out) (`actual`) not equal to 32 (`expected`).
      
      `actual` is an integer vector (32)
      `expected` is a double vector (32)
      ── Failure (test_misc.R:76:3): Auto connect ────────────────────────────────────
      `out` (`actual`) not equal to 12 (`expected`).
      
      `actual` is an integer vector (12)
      `expected` is a double vector (12)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 668 ]
      Error: Test failures
      Execution halted
    ```

# roistats

<details>

* Version: 0.1.1
* GitHub: https://github.com/Irisfee/roistats
* Source code: https://github.com/cran/roistats
* Date/Publication: 2021-03-10 17:20:02 UTC
* Number of recursive dependencies: 62

Run `cloud_details(, "roistats")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (8)
      ── Failure (test-t_test.R:13:3): t-test-one-sample output ──────────────────────
      NROW(...) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      ── Failure (test-t_test.R:29:3): t-test-two-sample output ──────────────────────
      NROW(...) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

# rrd

<details>

* Version: 0.2.4
* GitHub: https://github.com/andrie/rrd
* Source code: https://github.com/cran/rrd
* Date/Publication: 2022-03-07 17:30:05 UTC
* Number of recursive dependencies: 67

Run `cloud_details(, "rrd")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘test-all.R’
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test-1-import.R:85:3): read_rra from rrd_content_1 using n_rows ────
      nrow(z) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      ── Failure (test-1-import.R:86:3): read_rra from rrd_content_1 using n_rows ────
      ncol(z) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 16 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 13.1Mb
      sub-directories of 1Mb or more:
        extdata  12.8Mb
    ```

# rsprite2

<details>

* Version: 0.1.0
* GitHub: https://github.com/LukasWallrich/rsprite2
* Source code: https://github.com/cran/rsprite2
* Date/Publication: 2021-09-22 15:00:02 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "rsprite2")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 15 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-core-and-plot-functions.R:15:3): Adjusting mean works ─────────
      sum(vec == 7) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

# rTLS

<details>

* Version: 0.2.5.2
* GitHub: https://github.com/Antguz/rTLS
* Source code: https://github.com/cran/rTLS
* Date/Publication: 2021-12-10 23:50:02 UTC
* Number of recursive dependencies: 78

Run `cloud_details(, "rTLS")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ncol(to_test) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      Columns of voxels
      ── Failure (test-voxels.R:32:3): Test whether the voxel function works ─────────
      nrow(to_test) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      n of voxels
      
      [ FAIL 31 | WARN 0 | SKIP 0 | PASS 107 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 12.8Mb
      sub-directories of 1Mb or more:
        data      3.4Mb
        extdata   1.4Mb
        libs      7.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘RcppProgress’
      All declared Imports should be used.
    ```

# rvest

<details>

* Version: 1.0.2
* GitHub: https://github.com/tidyverse/rvest
* Source code: https://github.com/cran/rvest
* Date/Publication: 2021-10-16 23:30:07 UTC
* Number of recursive dependencies: 76

Run `cloud_details(, "rvest")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-selectors.R:56:3): empty matches returns empty list ───────────
      none %>% html_element("none") %>% length() (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-selectors.R:57:3): empty matches returns empty list ───────────
      none %>% html_elements("none") %>% length() (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 13 | WARN 0 | SKIP 30 | PASS 79 ]
      Error: Test failures
      Execution halted
    ```

# sageR

<details>

* Version: 0.3.0
* GitHub: https://github.com/fbertran/sageR
* Source code: https://github.com/cran/sageR
* Date/Publication: 2021-07-20 07:20:05 UTC
* Number of recursive dependencies: 193

Run `cloud_details(, "sageR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_plotcdf3.R:7:3): plotcdf3 ─────────────────────────────────────
      `x` (`actual`) not equal to `expected` (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      Backtrace:
          ▆
       1. └─testthat::expect_that(length(plot), equals(4)) at test_plotcdf3.R:7:2
       2.   └─testthat condition(object)
       3.     └─testthat::expect_equal(x, expected, ..., expected.label = label)
      
      [ FAIL 1 | WARN 1 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 91 marked UTF-8 strings
    ```

# sampsizeval

<details>

* Version: 1.0.0.0
* GitHub: https://github.com/mpavlou/sampsizeval
* Source code: https://github.com/cran/sampsizeval
* Date/Publication: 2021-05-28 07:30:02 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "sampsizeval")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(sampsizeval)
      > 
      > test_check("sampsizeval")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-sampsizeval.R:26:3): Output is a list of length 4 ─────────────
      length(a) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
      Error: Test failures
      Execution halted
    ```

# sass

<details>

* Version: 0.4.1
* GitHub: https://github.com/rstudio/sass
* Source code: https://github.com/cran/sass
* Date/Publication: 2022-03-23 17:10:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "sass")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `num_chars_no_precision` (`actual`) not equal to nchar(css) (`expected`).
      
      `actual` is a double vector (23)
      `expected` is an integer vector (23)
      ── Failure (test-options.R:73:3): precision works ──────────────────────────────
      num_chars_no_precision + 11 (`actual`) not equal to nchar(css) (`expected`).
      
      `actual` is a double vector (34)
      `expected` is an integer vector (34)
      
      [ FAIL 12 | WARN 0 | SKIP 4 | PASS 177 ]
      Deleting unused snapshots:
      • font-objects/font-css
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

# scales

<details>

* Version: 1.2.0
* GitHub: https://github.com/r-lib/scales
* Source code: https://github.com/cran/scales
* Date/Publication: 2022-04-13 22:40:02 UTC
* Number of recursive dependencies: 60

Run `cloud_details(, "scales")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (0, 1, 2, 3, 4, ...)
      ── Failure (test-trans-numeric.r:34:3): Boxcox is invertible ───────────────────
      trans$inv(trans$trans(0:10)) (`actual`) not equal to 0:10 (`expected`).
      
      `actual` is a double vector (0, 1, 2, 3, 4, ...)
      `expected` is an integer vector (0, 1, 2, 3, 4, ...)
      ── Failure (test-trans-numeric.r:36:3): Boxcox is invertible ───────────────────
      trans$inv(trans$trans(0:10)) (`actual`) not equal to 0:10 (`expected`).
      
      `actual` is a double vector (0, 1, 2, 3, 4, ...)
      `expected` is an integer vector (0, 1, 2, 3, 4, ...)
      
      [ FAIL 10 | WARN 0 | SKIP 8 | PASS 489 ]
      Error: Test failures
      Execution halted
    ```

# scDiffCom

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/scDiffCom
* Date/Publication: 2021-08-17 07:20:05 UTC
* Number of recursive dependencies: 248

Run `cloud_details(, "scDiffCom")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       3.     └─testthat::expect_equal(nrow(i), 30475) at test-everything.R:280:8
      ── Failure (test-everything.R:277:5): cci_template returns the correct number of CCIs ──
      nrow(i) (`actual`) not equal to 30475 (`expected`).
      
      `actual` is an integer vector (30475)
      `expected` is a double vector (30475)
      Backtrace:
          ▆
       1. └─base::lapply(...) at test-everything.R:277:4
       2.   └─scDiffCom FUN(X[[i]], ...)
       3.     └─testthat::expect_equal(nrow(i), 30475) at test-everything.R:280:8
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 79 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘utils’
      All declared Imports should be used.
    ```

# sdcLog

<details>

* Version: 0.5.0
* GitHub: https://github.com/matthiasgomolka/sdcLog
* Source code: https://github.com/cran/sdcLog
* Date/Publication: 2022-03-19 20:20:02 UTC
* Number of recursive dependencies: 89

Run `cloud_details(, "sdcLog")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected[[4]][[1]]` is an integer vector (1)
      Backtrace:
          ▆
       1. ├─testthat::capture_warnings(...) at test-sdc_descriptives.R:493:2
       2. │ └─base::withCallingHandlers(...)
       3. └─testthat::expect_equal(...)
      ── Failure (test-sdc_model.R:437:3): Bug from #79 is solved ────────────────────
      sdc_model(...) (`actual`) not equal to `ref_issue_79` (`expected`).
      
      `actual[[4]][[1]][[2]]` is an integer vector (1, 9)
      `expected[[4]][[1]][[2]]` is a double vector (1, 9)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 196 ]
      Error: Test failures
      Execution halted
    ```

# sehrnett

<details>

* Version: 0.0.3
* GitHub: https://github.com/chainsawriot/sehrnett
* Source code: https://github.com/cran/sehrnett
* Date/Publication: 2022-01-17 12:20:02 UTC
* Number of recursive dependencies: 55

Run `cloud_details(, "sehrnett")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5)
      ── Failure (test-rmd.R:71:5): chain ────────────────────────────────────────────
      nrow(x) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-rmd.R:76:5): get_outdegrees ───────────────────────────────────
      nrow(list_linktypes()) (`actual`) not equal to 28 (`expected`).
      
      `actual` is an integer vector (28)
      `expected` is a double vector (28)
      
      [ FAIL 17 | WARN 0 | SKIP 0 | PASS 99 ]
      Error: Test failures
      Execution halted
    ```

# selection.index

<details>

* Version: 1.1.3
* GitHub: https://github.com/zankrut20/selection.index
* Source code: https://github.com/cran/selection.index
* Date/Publication: 2021-09-25 16:20:01 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "selection.index")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7)
      ── Failure (test-rcomb.indices.R:5:3): Whether result is same as output ────────
      nrow(cindex) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      ── Failure (test-sel.score.rank.R:4:3): Whether result is same as output ───────
      nrow(sr) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

# SemiEstimate

<details>

* Version: 1.1.3
* GitHub: NA
* Source code: https://github.com/cran/SemiEstimate
* Date/Publication: 2021-09-06 07:10:02 UTC
* Number of recursive dependencies: 55

Run `cloud_details(, "SemiEstimate")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
        argument "Psi_fn" is missing, with no default
      Error in validate_method(method) : 
        x %in% c("implicit", "iterative") is not TRUE
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 27 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-save.R:8:3): save result test ─────────────────────────────────
      length(res$res_path) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 27 ]
      Error: Test failures
      Execution halted
    ```

# sessioninfo

<details>

* Version: 1.2.2
* GitHub: https://github.com/r-lib/sessioninfo
* Source code: https://github.com/cran/sessioninfo
* Date/Publication: 2021-12-06 11:50:02 UTC
* Number of recursive dependencies: 64

Run `cloud_details(, "sessioninfo")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      insert_instead(c[[1]], c[[2]], c[[3]], c[[4]]) (`actual`) not equal to c[[5]] (`expected`).
      
      `actual` is an integer vector (1, 11, 12, 13, 14, ...)
      `expected` is a double vector (1, 11, 12, 13, 14, ...)
      4
      ── Failure (test-diff.R:329:5): insert_instead ─────────────────────────────────
      insert_instead(c[[1]], c[[2]], c[[3]], c[[4]]) (`actual`) not equal to c[[5]] (`expected`).
      
      `actual` is an integer vector (1, 11, 12, 13, 14, ...)
      `expected` is a double vector (1, 11, 12, 13, 14, ...)
      11
      
      [ FAIL 3 | WARN 0 | SKIP 14 | PASS 114 ]
      Error: Test failures
      Execution halted
    ```

# shiny

<details>

* Version: 1.7.1
* GitHub: https://github.com/rstudio/shiny
* Source code: https://github.com/cran/shiny
* Date/Publication: 2021-10-02 04:30:02 UTC
* Number of recursive dependencies: 105

Run `cloud_details(, "shiny")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       22. └─testthat::expect_equal(rv$t, i) at test-test-server.R:206:6
      ── Failure (test-timer.R:22:3): Scheduling works ───────────────────────────────
      0 (`actual`) not equal to nrow(timerCallbacks$takeElapsed()) (`expected`).
      
      `actual` is a double vector (0)
      `expected` is an integer vector (0)
      ── Failure (test-utils.R:136:3): req works ─────────────────────────────────────
      1 (`actual`) not equal to do.call(req, as.list(1:1000)) (`expected`).
      
      `actual` is a double vector (1)
      `expected` is an integer vector (1)
      
      [ FAIL 124 | WARN 0 | SKIP 13 | PASS 1415 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 10.2Mb
      sub-directories of 1Mb or more:
        R     1.6Mb
        www   7.2Mb
    ```

# shinyfullscreen

<details>

* Version: 1.1.0
* GitHub: https://github.com/etiennebacher/shinyfullscreen
* Source code: https://github.com/cran/shinyfullscreen
* Date/Publication: 2021-01-11 20:50:03 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "shinyfullscreen")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 2 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (7)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-fullscreen_those.R:10:3): fullscreen_those creates nothing if no item ──
      length(x) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 7 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking LazyData ... NOTE
    ```
      'LazyData' is specified without a 'data' directory
    ```

# sift

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/sift
* Date/Publication: 2021-07-05 09:10:02 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "sift")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, NA)
      ── Failure (test-kluster.R:9:3): Test kluster behavior for various input types ──
      kluster(Sys.time()) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-kluster.R:14:3): Test kluster provides expected output ────────
      unique(kluster(mopac::rush_hour$time)) (`actual`) not equal to 1:7 (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 37 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 1231 marked UTF-8 strings
    ```

# simfam

<details>

* Version: 1.0.3
* GitHub: https://github.com/OchoaLab/simfam
* Source code: https://github.com/cran/simfam
* Date/Publication: 2021-10-05 23:20:10 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "simfam")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (10)
      ── Failure (test-simfam.R:633:5): geno_last_gen works ──────────────────────────
      ncol(X_G) (`actual`) not equal to n[[G]] (`expected`).
      
      `actual` is an integer vector (17)
      `expected` is a double vector (17)
      ── Failure (test-simfam.R:634:5): geno_last_gen works ──────────────────────────
      nrow(X_G) (`actual`) not equal to `m` (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 26 | WARN 0 | SKIP 0 | PASS 196 ]
      Error: Test failures
      Execution halted
    ```

# simMetric

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/simMetric
* Date/Publication: 2022-01-04 15:30:02 UTC
* Number of recursive dependencies: 36

Run `cloud_details(, "simMetric")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(simMetric)
      > 
      > test_check("simMetric")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 20 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-join_metrics.R:23:3): joining metrics works ───────────────────
      nrow(res) (`actual`) not equal to 20 (`expected`).
      
      `actual` is an integer vector (20)
      `expected` is a double vector (20)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# sjstats

<details>

* Version: 0.18.1
* GitHub: https://github.com/strengejacke/sjstats
* Source code: https://github.com/cran/sjstats
* Date/Publication: 2021-01-09 13:50:02 UTC
* Number of recursive dependencies: 167

Run `cloud_details(, "sjstats")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 16 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • empty test (3)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-grpmean.R:20:5): means_by_group, grouping ─────────────────────
      length(m) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 1 | WARN 0 | SKIP 3 | PASS 16 ]
      Error: Test failures
      Execution halted
    ```

# skater

<details>

* Version: 0.1.1
* GitHub: https://github.com/signaturescience/skater
* Source code: https://github.com/cran/skater
* Date/Publication: 2022-02-01 16:00:02 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "skater")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(skater)
      > 
      > test_check("skater")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 12 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-skater.R:5:3): Degree tibble ──────────────────────────────────
      3:9 %>% purrr::map(dibble) %>% purrr::map_int(nrow) (`actual`) not equal to (3:9) + 2 (`expected`).
      
      `actual` is an integer vector (5, 6, 7, 8, 9, ...)
      `expected` is a double vector (5, 6, 7, 8, 9, ...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 12 ]
      Error: Test failures
      Execution halted
    ```

# skewsamp

<details>

* Version: 1.0.0
* GitHub: NA
* Source code: https://github.com/cran/skewsamp
* Date/Publication: 2021-12-16 21:00:08 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "skewsamp")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(skewsamp)
      > 
      > test_check("skewsamp")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 55 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-empirical_cdf_helpers.R:18:3): sample extension works ─────────
      `xsamp` (`actual`) not equal to 0:6 (`expected`).
      
      `actual` is a double vector (0, 1, 2, 3, 4, ...)
      `expected` is an integer vector (0, 1, 2, 3, 4, ...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 55 ]
      Error: Test failures
      Execution halted
    ```

# slider

<details>

* Version: 0.2.2
* GitHub: https://github.com/DavisVaughan/slider
* Source code: https://github.com/cran/slider
* Date/Publication: 2021-07-01 19:50:01 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "slider")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual[[1]]` is an integer vector (1)
      `expected[[1]]` is a double vector (1)
      ── Failure (test-slide.R:437:3): slide() doesn't require `size = 1` ────────────
      slide(1:2, ~c(.x, 1)) (`actual`) not equal to list(c(1L, 1L), c(2L, 1L)) (`expected`).
      
      `actual[[1]]` is a double vector (1, 1)
      `expected[[1]]` is an integer vector (1, 1)
      
      `actual[[2]]` is a double vector (2, 1)
      `expected[[2]]` is an integer vector (2, 1)
      
      [ FAIL 21 | WARN 0 | SKIP 13 | PASS 1053 ]
      Error: Test failures
      Execution halted
    ```

# SOAs

<details>

* Version: 1.0-1
* GitHub: https://github.com/bertcarnell/SOAs
* Source code: https://github.com/cran/SOAs
* Date/Publication: 2021-12-16 21:00:11 UTC
* Number of recursive dependencies: 53

Run `cloud_details(, "SOAs")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure (test-utilitiesGF.R:86:3): gf_matmult ───────────────────────────────
      `x` (`actual`) not equal to `y` (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      Backtrace:
          ▆
       1. └─SOAs expect_all_equal(...) at test-utilitiesGF.R:86:2
       2.   └─base::mapply(...) at test-utilitiesGF.R:5:2
       3.     └─SOAs `<fn>`(dots[[1L]][[4L]], dots[[2L]][[4L]])
       4.       └─testthat::expect_equal(x, y, ...) at test-utilitiesGF.R:5:33
      
      [ FAIL 100 | WARN 9 | SKIP 13 | PASS 908 ]
      Error: Test failures
      Execution halted
    ```

# socialranking

<details>

* Version: 0.1.1
* GitHub: NA
* Source code: https://github.com/cran/socialranking
* Date/Publication: 2022-04-25 07:00:02 UTC
* Number of recursive dependencies: 64

Run `cloud_details(, "socialranking")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ── Failure (test-lexcel.R:30:3): manip paper works ─────────────────────────────
      lexcelScores(pr) (`actual`) not equal to structure(...) (`expected`).
      
      `actual$1` is an integer vector (0, 2, 1)
      `expected$1` is a double vector (0, 2, 1)
      
      `actual$2` is an integer vector (1, 2, 0)
      `expected$2` is a double vector (1, 2, 0)
      
      `actual$3` is an integer vector (1, 1, 1)
      `expected$3` is a double vector (1, 1, 1)
      
      [ FAIL 60 | WARN 0 | SKIP 0 | PASS 348 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘socialranking.Rmd’ using rmarkdown
    --- finished re-building ‘socialranking.Rmd’
    
    --- re-building ‘socialranking_pdf.Rnw’ using Sweave
    Error: processing vignette 'socialranking_pdf.Rnw' failed with diagnostics:
    Running 'texi2dvi' on 'socialranking_pdf.tex' failed.
    LaTeX errors:
    ! LaTeX Error: File `pdfpages.sty' not found.
    
    ...
    l.4 ^^M
           
    !  ==> Fatal error occurred, no output PDF file produced!
    --- failed re-building ‘socialranking_pdf.Rnw’
    
    SUMMARY: processing the following file failed:
      ‘socialranking_pdf.Rnw’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

# spacejamr

<details>

* Version: 0.2.1
* GitHub: https://github.com/dscolby/spacejamr
* Source code: https://github.com/cran/spacejamr
* Date/Publication: 2022-04-01 20:10:02 UTC
* Number of recursive dependencies: 126

Run `cloud_details(, "spacejamr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (5)
      ── Failure (test-compare.R:16:5): we can compare summary statistics of two networks ──
      dim(suppressWarnings(compare_networks(pl, apl))) (`actual`) not equal to c(2, 5) (`expected`).
      
      `actual` is an integer vector (2, 5)
      `expected` is a double vector (2, 5)
      ── Failure (test-spacejamr.R:14:5): we can create spacejamr objects ────────────
      length(ri) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 20 ]
      Error: Test failures
      Execution halted
    ```

# sparsegl

<details>

* Version: 0.3.0
* GitHub: https://github.com/dajmcdon/sparsegl
* Source code: https://github.com/cran/sparsegl
* Date/Publication: 2022-03-07 20:30:05 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "sparsegl")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (14, 1, 15)
      ── Failure (test-predict.R:37:3): tests for linear regression model ────────────
      predict(res1, type = "nonzero")[, 1] (`actual`) not equal to c(1, 2) (`expected`).
      
      `actual` is an integer vector (1, 2)
      `expected` is a double vector (1, 2)
      ── Failure (test-risk_estimation.R:33:3): check if function exact_df() works as expected ──
      length(exact_df(out, X)) (`actual`) not equal to 100 (`expected`).
      
      `actual` is an integer vector (100)
      `expected` is a double vector (100)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 63 ]
      Error: Test failures
      Execution halted
    ```

# sphunif

<details>

* Version: 1.0.1
* GitHub: https://github.com/egarpor/sphunif
* Source code: https://github.com/cran/sphunif
* Date/Publication: 2021-09-02 07:40:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "sphunif")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      drop(upper_tri_ind(7)) + 1 (`actual`) not equal to {
          ...
      } (`expected`).
      
      `actual` is a double vector (8, 15, 16, 22, 23, ...)
      `expected` is an integer vector (8, 15, 16, 22, 23, ...)
      ── Failure (test_Psi.R:24:3): sort_each_col and sort_index_each_col ────────────
      sphunif:::sort_index_each_col(A) (`actual`) not equal to apply(A, 2, order) (`expected`).
      
      `actual` is a double vector (4, 2, 1, 3, 1, ...)
      `expected` is an integer vector (4, 2, 1, 3, 1, ...)
      
      [ FAIL 11 | WARN 0 | SKIP 42 | PASS 599 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 26.9Mb
      sub-directories of 1Mb or more:
        libs  26.0Mb
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 189 marked UTF-8 strings
    ```

# splitTools

<details>

* Version: 0.3.2
* GitHub: https://github.com/mayer79/splitTools
* Source code: https://github.com/cran/splitTools
* Date/Publication: 2022-01-28 18:10:02 UTC
* Number of recursive dependencies: 52

Run `cloud_details(, "splitTools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-partition.R:99:3): basic splitting works with seed ────────────
      out[[1]][1:7] (`actual`) not equal to c(1, 3, 5, 7, 8, 10, 12) (`expected`).
      
      `actual` is an integer vector (1, 3, 5, 7, 8, ...)
      `expected` is a double vector (1, 3, 5, 7, 8, ...)
      ── Failure (test-partition.R:106:3): stratified splitting works with seed ──────
      out[[1]][1:7] (`actual`) not equal to c(1, 3, 5, 7, 8, 10, 11) (`expected`).
      
      `actual` is an integer vector (1, 3, 5, 7, 8, ...)
      `expected` is a double vector (1, 3, 5, 7, 8, ...)
      
      [ FAIL 8 | WARN 0 | SKIP 0 | PASS 58 ]
      Error: Test failures
      Execution halted
    ```

# sportyR

<details>

* Version: 1.0.1
* GitHub: https://github.com/rossdrucker/sportyR
* Source code: https://github.com/cran/sportyR
* Date/Publication: 2021-04-20 13:50:02 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "sportyR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("sportyR")
      z is not convertable. Skipping...
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 51 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-shapes.R:27:3): create_circle() correctly generates a unit circle ──
      nrow(unit_circle) (`actual`) not equal to sum(unit_circle$dist_okay) (`expected`).
      
      `actual` is an integer vector (1000)
      `expected` is a double vector (1000)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 51 ]
      Error: Test failures
      Execution halted
    ```

# spotoroo

<details>

* Version: 0.1.2
* GitHub: https://github.com/TengMCing/spotoroo
* Source code: https://github.com/cran/spotoroo
* Date/Publication: 2021-11-10 06:10:07 UTC
* Number of recursive dependencies: 110

Run `cloud_details(, "spotoroo")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 3, 7)
      ── Failure (test-transform_time_id.R:32:3): transform_time_id() works ──────────
      transform_time_id(obsTime, timeUnit = "m", timeStep = 60) (`actual`) not equal to c(1, 25, 73) (`expected`).
      
      `actual` is an integer vector (1, 25, 73)
      `expected` is a double vector (1, 25, 73)
      ── Failure (test-transform_time_id.R:34:3): transform_time_id() works ──────────
      transform_time_id(obsTime, timeUnit = "s", timeStep = 3600) (`actual`) not equal to c(1, 25, 73) (`expected`).
      
      `actual` is an integer vector (1, 25, 73)
      `expected` is a double vector (1, 25, 73)
      
      [ FAIL 17 | WARN 0 | SKIP 0 | PASS 48 ]
      Error: Test failures
      Execution halted
    ```

# sRdpData

<details>

* Version: 0.1.0
* GitHub: https://github.com/hgoers/sRdpData
* Source code: https://github.com/cran/sRdpData
* Date/Publication: 2022-03-29 07:30:05 UTC
* Number of recursive dependencies: 35

Run `cloud_details(, "sRdpData")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-access_data.R:3:3): srdp_orgs() returns the organization-level dataframe ──
      length(srdp_orgs()) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test-access_data.R:9:3): srdp_groups() returns the group-level dataframe ──
      length(srdp_groups()) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 35 marked UTF-8 strings
    ```

# sss

<details>

* Version: 0.2.0
* GitHub: https://github.com/andrie/sss
* Source code: https://github.com/cran/sss
* Date/Publication: 2021-12-14 14:50:02 UTC
* Number of recursive dependencies: 66

Run `cloud_details(, "sss")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (10)
      ── Failure (test-7-sample-5.R:25:3): parsing of .sss and .asc works ────────────
      ncol(test) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-7-sample-5.R:34:3): parsing of .sss and .asc works ────────────
      test$foyer (`actual`) not equal to 1:10 (`expected`).
      
      `actual` is a double vector (1, 2, 3, 4, 5, ...)
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      
      [ FAIL 12 | WARN 0 | SKIP 0 | PASS 22 ]
      Error: Test failures
      Execution halted
    ```

# starsTileServer

<details>

* Version: 0.1
* GitHub: NA
* Source code: https://github.com/cran/starsTileServer
* Date/Publication: 2022-01-21 09:00:02 UTC
* Number of recursive dependencies: 127

Run `cloud_details(, "starsTileServer")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (200)
      ── Failure (test-starsTileServer.R:27:3): tile server grid on file base same as grid input ──
      srv$call(make_req(path = "/map/L7_ETMs.tif/9/206/267"))$status (`actual`) not equal to 200 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      ── Failure (test-supportFun.R:16:3): target matrix ─────────────────────────────
      sum(...) (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 3 | WARN 0 | SKIP 3 | PASS 45 ]
      Error: Test failures
      Execution halted
    ```

# states

<details>

* Version: 0.3.1
* GitHub: https://github.com/andybega/states
* Source code: https://github.com/cran/states
* Date/Publication: 2021-04-14 12:50:02 UTC
* Number of recursive dependencies: 91

Run `cloud_details(, "states")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      > 
      > test_check("states")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 108 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-misc.R:25:3): id_date_sequence works with integer year dates ──
      id_date_sequence(yr) (`actual`) not equal to c(rep(1L, 4), rep(2L, 4)) (`expected`).
      
      `actual` is a double vector (1, 1, 1, 1, 2, ...)
      `expected` is an integer vector (1, 1, 1, 1, 2, ...)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 108 ]
      Error: Test failures
      Execution halted
    ```

# statpsych

<details>

* Version: 1.0.0
* GitHub: https://github.com/dgbonett/statpsych
* Source code: https://github.com/cran/statpsych
* Date/Publication: 2021-09-09 09:20:02 UTC
* Number of recursive dependencies: 34

Run `cloud_details(, "statpsych")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 3)
      ── Failure (test_statpsych3.R:297:3): test.prop.ps returns valid matrix ────────
      dim(res) (`actual`) not equal to c(1, length(colnames_expected)) (`expected`).
      
      `actual` is an integer vector (1, 3)
      `expected` is a double vector (1, 3)
      ── Failure (test_statpsych3.R:453:3): iqv returns valid matrix ─────────────────
      dim(res) (`actual`) not equal to c(1, length(colnames_expected)) (`expected`).
      
      `actual` is an integer vector (1, 3)
      `expected` is a double vector (1, 3)
      
      [ FAIL 75 | WARN 0 | SKIP 0 | PASS 237 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rdpack’ ‘mathjaxr’
      All declared Imports should be used.
    ```

# supercells

<details>

* Version: 0.8.2
* GitHub: https://github.com/Nowosad/supercells
* Source code: https://github.com/cran/supercells
* Date/Publication: 2022-03-08 13:10:02 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "supercells")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (7)
      ── Failure (test-supercells-v3.R:6:3): supercells works for 3 var ──────────────
      nrow(v3_a) (`actual`) not equal to 83 (`expected`).
      
      `actual` is an integer vector (83)
      `expected` is a double vector (83)
      ── Failure (test-supercells-v3.R:7:3): supercells works for 3 var ──────────────
      nrow(v3_b) (`actual`) not equal to 93 (`expected`).
      
      `actual` is an integer vector (93)
      `expected` is a double vector (93)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

# supernova

<details>

* Version: 2.5.1
* GitHub: https://github.com/UCLATALL/supernova
* Source code: https://github.com/cran/supernova
* Date/Publication: 2022-01-27 17:50:02 UTC
* Number of recursive dependencies: 98

Run `cloud_details(, "supernova")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-utils.R:35:3): pad_len/pad the padding can be placed at any index in the vector ──
      pad_len(1:2, 3, after = 1) (`actual`) not equal to c(1, NA_real_, 2) (`expected`).
      
      `actual` is an integer vector (1, NA, 2)
      `expected` is a double vector (1, NA, 2)
      
      [ FAIL 2 | WARN 0 | SKIP 13 | PASS 264 ]
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

# SuperRanker

<details>

* Version: 1.2.0
* GitHub: NA
* Source code: https://github.com/cran/SuperRanker
* Date/Publication: 2021-01-29 22:10:02 UTC
* Number of recursive dependencies: 47

Run `cloud_details(, "SuperRanker")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(SuperRanker)
      > 
      > test_check("SuperRanker")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 3 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-sra.R:5:3): Cimple computation works ──────────────────────────
      length(res1) (`actual`) not equal to 8 (`expected`).
      
      `actual` is an integer vector (8)
      `expected` is a double vector (8)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 3 ]
      Error: Test failures
      Execution halted
    ```

# sweater

<details>

* Version: 0.1.5
* GitHub: https://github.com/chainsawriot/sweater
* Source code: https://github.com/cran/sweater
* Date/Publication: 2022-04-20 12:30:02 UTC
* Number of recursive dependencies: 74

Run `cloud_details(, "sweater")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 199 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (6)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-no_es.R:80:5): ect, garg ──────────────────────────────────────
      nrow(garg_f1$P) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 1 | WARN 0 | SKIP 6 | PASS 199 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rsparse’
    ```

# SynthCast

<details>

* Version: 0.2.1
* GitHub: NA
* Source code: https://github.com/cran/SynthCast
* Date/Publication: 2022-03-08 14:50:02 UTC
* Number of recursive dependencies: 96

Run `cloud_details(, "SynthCast")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-syth-cast.R:146:6): Tests compute_result_tables() ─────────────
      length(result_tables) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-syth-cast.R:218:5): Tests run_synthetic_forecast() ────────────
      length(synthetic_forecast) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 15 ]
      Error: Test failures
      Execution halted
    ```

# tabbycat

<details>

* Version: 0.17.0
* GitHub: NA
* Source code: https://github.com/cran/tabbycat
* Date/Publication: 2021-11-23 07:50:02 UTC
* Number of recursive dependencies: 42

Run `cloud_details(, "tabbycat")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$na` is an integer vector (0, 0, 0, 0)
      `expected$na` is a double vector (0, 0, 0, 0)
      ── Failure (test_summarise.R:247:5): cat_summarise uses option for default clean_names argument ──
      `observed` (`actual`) not equal to `expected` (`expected`).
      
      `actual$n` is an integer vector (11, 6, 14, 1)
      `expected$n` is a double vector (11, 6, 14, 1)
      
      `actual$na` is an integer vector (0, 0, 0, 0)
      `expected$na` is a double vector (0, 0, 0, 0)
      
      [ FAIL 56 | WARN 0 | SKIP 0 | PASS 284 ]
      Error: Test failures
      Execution halted
    ```

# tabxplor

<details>

* Version: 1.0.3
* GitHub: https://github.com/BriceNocenti/tabxplor
* Source code: https://github.com/cran/tabxplor
* Date/Publication: 2022-04-09 16:40:02 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "tabxplor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (6)
      ── Failure (test-fmt_class.R:86:3): math (sum and mean) between fmt and fmt works ──
      get_n(sum(fmt(1), fmt(1))) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-fmt_class.R:87:3): math (sum and mean) between fmt and fmt works ──
      get_n(mean(fmt(1, "n", 2), fmt(1, "n", 2))) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 116 ]
      Error: Test failures
      Execution halted
    ```

# tarchetypes

<details>

* Version: 0.6.0
* GitHub: https://github.com/ropensci/tarchetypes
* Source code: https://github.com/cran/tarchetypes
* Date/Publication: 2022-04-19 15:40:09 UTC
* Number of recursive dependencies: 61

Run `cloud_details(, "tarchetypes")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-tar_rep.R:17:3): tar_rep(iteration = 'list') ──────────────────
      length(out[[2]]) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-utils_functional.R:10:3): map_int() ───────────────────────────
      unname(map_int(letters, ~length(.x))) (`actual`) not equal to rep(1, length(letters)) (`expected`).
      
      `actual` is an integer vector (1, 1, 1, 1, 1, ...)
      `expected` is a double vector (1, 1, 1, 1, 1, ...)
      
      [ FAIL 24 | WARN 0 | SKIP 15 | PASS 780 ]
      Error: Test failures
      Execution halted
    ```

# targets

<details>

* Version: 0.12.0
* GitHub: https://github.com/ropensci/targets
* Source code: https://github.com/cran/targets
* Date/Publication: 2022-04-19 15:40:02 UTC
* Number of recursive dependencies: 168

Run `cloud_details(, "targets")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-tar_progress_branches.R:46:3): tar_progress_branches() ────────
      out$canceled (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-tar_progress_branches.R:47:3): tar_progress_branches() ────────
      out$errored (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 37 | WARN 0 | SKIP 136 | PASS 3206 ]
      Error: Test failures
      Execution halted
    ```

# tastypie

<details>

* Version: 0.1.0
* GitHub: https://github.com/PaoloDalena/tastypie
* Source code: https://github.com/cran/tastypie
* Date/Publication: 2021-05-15 19:40:02 UTC
* Number of recursive dependencies: 77

Run `cloud_details(, "tastypie")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (6)
      ── Failure (test-templates.R:12:3): choice of number of groups is respected ────
      length(e$data[, 1]) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test-templates.R:13:3): choice of number of groups is respected ────
      length(f$data[, 1]) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      
      [ FAIL 14 | WARN 0 | SKIP 0 | PASS 105 ]
      Error: Test failures
      Execution halted
    ```

# taxonbridge

<details>

* Version: 1.2.1
* GitHub: https://github.com/MoultDB/taxonbridge
* Source code: https://github.com/cran/taxonbridge
* Date/Publication: 2022-05-02 11:50:02 UTC
* Number of recursive dependencies: 75

Run `cloud_details(, "taxonbridge")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2000)
      ── Failure (test-load_methods.R:3:13): load_sample() is functional ─────────────
      dim(load_sample()) (`actual`) not equal to c(2000, 29) (`expected`).
      
      `actual` is an integer vector (2000, 29)
      `expected` is a double vector (2000, 29)
      ── Failure (test-load_methods.R:16:13): load_taxonomies() is functional ────────
      dim(load_taxonomies(GBIF_stub, NCBI_stub)) (`actual`) not equal to c(5, 29) (`expected`).
      
      `actual` is an integer vector (5, 29)
      `expected` is a double vector (5, 29)
      
      [ FAIL 19 | WARN 0 | SKIP 0 | PASS 22 ]
      Error: Test failures
      Execution halted
    ```

# taylor

<details>

* Version: 1.0.0
* GitHub: https://github.com/wjakethompson/taylor
* Source code: https://github.com/cran/taylor
* Date/Publication: 2021-12-14 13:30:02 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "taylor")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • ggplot2-color-scales/red-tv-fill-d.svg
      • ggplot2-color-scales/reputation-color-b.svg
      • ggplot2-color-scales/reputation-color-c.svg
      • ggplot2-color-scales/reputation-color-d.svg
      • ggplot2-color-scales/reputation-fill-b.svg
      • ggplot2-color-scales/reputation-fill-c.svg
      • ggplot2-color-scales/reputation-fill-d.svg
      • ggplot2-color-scales/speak-now-color-b.svg
      • ggplot2-color-scales/speak-now-color-c.svg
      • ggplot2-color-scales/speak-now-color-d.svg
      • ggplot2-color-scales/speak-now-fill-b.svg
      • ggplot2-color-scales/speak-now-fill-c.svg
      • ggplot2-color-scales/speak-now-fill-d.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 50 marked UTF-8 strings
    ```

# text2map

<details>

* Version: 0.1.4
* GitHub: NA
* Source code: https://github.com/cran/text2map
* Date/Publication: 2022-04-12 07:10:02 UTC
* Number of recursive dependencies: 130

Run `cloud_details(, "text2map")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-utils-dtm.R:220:5): dtm_builder chunks correctly ──────────────
      sum(dtm.e[1, ]) (`actual`) not equal to `chunk` (`expected`).
      
      `actual` is a double vector (3)
      `expected` is an integer vector (3)
      
      [ FAIL 1 | WARN 0 | SKIP 4 | PASS 395 ]
      Error: Test failures
      In addition: Warning messages:
      1: In .recacheSubclasses(def@className, def, env) :
        undefined subclass "packedMatrix" of class "replValueSp"; definition not updated
      2: In .recacheSubclasses(def@className, def, env) :
        undefined subclass "packedMatrix" of class "mMatrix"; definition not updated
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# textrecipes

<details>

* Version: 0.5.1
* GitHub: https://github.com/tidymodels/textrecipes
* Source code: https://github.com/cran/textrecipes
* Date/Publication: 2022-03-29 22:40:01 UTC
* Number of recursive dependencies: 122

Run `cloud_details(, "textrecipes")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2, 3)
      ── Failure (test-untokenize.R:25:3): output is not a list ──────────────────────
      dim(tidy(rec, 2)) (`actual`) not equal to c(1, 3) (`expected`).
      
      `actual` is an integer vector (1, 3)
      `expected` is a double vector (1, 3)
      ── Failure (test-untokenize.R:26:3): output is not a list ──────────────────────
      dim(tidy(obj, 2)) (`actual`) not equal to c(1, 3) (`expected`).
      
      `actual` is an integer vector (1, 3)
      `expected` is a double vector (1, 3)
      
      [ FAIL 56 | WARN 0 | SKIP 84 | PASS 271 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4 marked UTF-8 strings
    ```

# tgver

<details>

* Version: 0.2.0
* GitHub: https://github.com/tgve/tgver
* Source code: https://github.com/cran/tgver
* Date/Publication: 2022-03-08 20:50:02 UTC
* Number of recursive dependencies: 143

Run `cloud_details(, "tgver")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘skip-download.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 37 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (2)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-tgve_server.R:4:3): tgve returns a plumber instance ───────────
      length(server$mounts) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 37 ]
      Error: Test failures
      Execution halted
    ```

# themis

<details>

* Version: 0.2.1
* GitHub: https://github.com/tidymodels/themis
* Source code: https://github.com/cran/themis
* Date/Publication: 2022-04-13 19:00:02 UTC
* Number of recursive dependencies: 103

Run `cloud_details(, "themis")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (2)
      ── Failure (test-step_tomek.R:143:3): id variables are ignored ─────────────────
      ncol(bake(rec_id, new_data = NULL)) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test-step_upsample.R:23:3): tunable ────────────────────────────────
      nrow(rec_param) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 12 | WARN 0 | SKIP 45 | PASS 279 ]
      Error: Test failures
      Execution halted
    ```

# tibble

<details>

* Version: 3.1.6
* GitHub: https://github.com/tidyverse/tibble
* Source code: https://github.com/cran/tibble
* Date/Publication: 2021-11-07 17:30:02 UTC
* Number of recursive dependencies: 101

Run `cloud_details(, "tibble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (140)
      ── Failure (test-zzz-tbl-df.R:56:3): [ with 0 cols returns correct number of rows ──
      nrow(iris_tbl[-(1:10), ][0]) (`actual`) not equal to nrow_iris - 10 (`expected`).
      
      `actual` is an integer vector (140)
      `expected` is a double vector (140)
      ── Failure (test-zzz-tbl-df.R:57:3): [ with 0 cols returns correct number of rows ──
      nrow(iris_tbl[-(1:10), 0]) (`actual`) not equal to nrow_iris - 10 (`expected`).
      
      `actual` is an integer vector (140)
      `expected` is a double vector (140)
      
      [ FAIL 83 | WARN 0 | SKIP 140 | PASS 1274 ]
      Error: Test failures
      Execution halted
    ```

# tidycmprsk

<details>

* Version: 0.1.2
* GitHub: https://github.com/MSKCC-Epi-Bio/tidycmprsk
* Source code: https://github.com/cran/tidycmprsk
* Date/Publication: 2022-03-04 16:50:02 UTC
* Number of recursive dependencies: 100

Run `cloud_details(, "tidycmprsk")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0, 1, 0, 1, 1, ...)
      ── Failure (test-cuminc-broom_methods.R:185:3): broom methods ──────────────────
      survfit_check1_time$n.risk.x (`actual`) not equal to survfit_check1_time$n.risk.y (`expected`).
      
      `actual` is an integer vector (200, 199, 189, 158, 116)
      `expected` is a double vector (200, 199, 189, 158, 116)
      ── Failure (test-cuminc-broom_methods.R:190:3): broom methods ──────────────────
      survfit_check1_time$n.event.x (`actual`) not equal to survfit_check1_time$n.event.y (`expected`).
      
      `actual` is an integer vector (0, 0, 6, 18, 19)
      `expected` is a double vector (0, 0, 6, 18, 19)
      
      [ FAIL 8 | WARN 1 | SKIP 0 | PASS 88 ]
      Error: Test failures
      Execution halted
    ```

# tidyEmoji

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/tidyEmoji
* Date/Publication: 2022-02-18 21:10:02 UTC
* Number of recursive dependencies: 79

Run `cloud_details(, "tidyEmoji")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (3)
      ── Failure (test-dimensions.R:19:3): emoji_summary dimension ───────────────────
      df %>% emoji_summary(tweets) %>% pull(total_tweets) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      ── Failure (test-dimensions.R:29:3): emoji_tweets dimension ────────────────────
      df %>% emoji_tweets(tweets) %>% dim() %>% .[1] (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 1 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 4546 marked UTF-8 strings
    ```

# TidyMultiqc

<details>

* Version: 1.0.2
* GitHub: https://github.com/multimeric/TidyMultiqc
* Source code: https://github.com/cran/TidyMultiqc
* Date/Publication: 2022-02-10 15:20:03 UTC
* Number of recursive dependencies: 70

Run `cloud_details(, "TidyMultiqc")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (13)
      ── Failure (test-plot-list.R:5:3): We can list plot IDs ────────────────────────
      nrow(plots) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      ── Failure (test-plot-list.R:7:3): We can list plot IDs ────────────────────────
      ncol(plots) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 32 | WARN 0 | SKIP 0 | PASS 44 ]
      Error: Test failures
      Execution halted
    ```

# tidyquery

<details>

* Version: 0.2.3
* GitHub: https://github.com/ianmcook/tidyquery
* Source code: https://github.com/cran/tidyquery
* Date/Publication: 2021-12-02 20:10:02 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "tidyquery")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • Error only affects rlang 0.4.11 and earlier (1)
      • currently returns columns in wrong order (1)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-aggregate.R:11:3): Aggregate example query #1 variation B returns expected result ──
      query("SELECT SUM(1) FROM employees;") %>% pull(1) (`actual`) not equal to employees %>% summarise(n()) %>% pull(1) (`expected`).
      
      `actual` is a double vector (5)
      `expected` is an integer vector (5)
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 218 ]
      Error: Test failures
      Execution halted
    ```

# tidyr

<details>

* Version: 1.2.0
* GitHub: https://github.com/tidyverse/tidyr
* Source code: https://github.com/cran/tidyr
* Date/Publication: 2022-02-01 08:40:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "tidyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-spread.R:182:3): spreading empty data frame gives empty data frame ──
      ncol(rs) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-uncount.R:39:3): works with 0 weights ─────────────────────────
      uncount(df, w) (`actual`) not equal to tibble(x = 2) (`expected`).
      
      `actual$x` is an integer vector (2)
      `expected$x` is a double vector (2)
      
      [ FAIL 65 | WARN 0 | SKIP 95 | PASS 900 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 24 marked UTF-8 strings
    ```

# tidysmd

<details>

* Version: 0.1.0
* GitHub: https://github.com/malcolmbarrett/tidysmd
* Source code: https://github.com/cran/tidysmd
* Date/Publication: 2021-10-25 07:00:02 UTC
* Number of recursive dependencies: 59

Run `cloud_details(, "tidysmd")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─tidysmd expect_tidy_smd_tbl(.smds, .rows = 18) at test-tidysmd.R:194:2
       2.   └─testthat::expect_equal(nrow(.smds), .rows) at test-tidysmd.R:4:2
      ── Failure (test-tidysmd.R:366:3): groups with more than two levels return correctly ──
      nrow(.smds) (`actual`) not equal to `.rows` (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      Backtrace:
          ▆
       1. └─tidysmd expect_tidy_smd_tbl(.smds, .rows = 6, .group = "cyl") at test-tidysmd.R:366:2
       2.   └─testthat::expect_equal(nrow(.smds), .rows) at test-tidysmd.R:4:2
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 77 ]
      Error: Test failures
      Execution halted
    ```

# tidysq

<details>

* Version: 1.1.3
* GitHub: https://github.com/BioGenies/tidysq
* Source code: https://github.com/cran/tidysq
* Date/Publication: 2022-01-31 08:00:02 UTC
* Number of recursive dependencies: 99

Run `cloud_details(, "tidysq")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual[[2]]` is an integer vector (2)
      `expected[[2]]` is a double vector (2)
      
      `actual[[3]]` is an integer vector (2)
      `expected[[3]]` is a double vector (2)
      
      `actual[[4]]` is an integer vector (0)
      `expected[[4]]` is a double vector (0)
      
      `actual[[5]]` is an integer vector (1)
      `expected[[5]]` is a double vector (1)
      
      [ FAIL 16 | WARN 0 | SKIP 1 | PASS 789 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 77.8Mb
      sub-directories of 1Mb or more:
        libs  76.8Mb
    ```

# tidytable

<details>

* Version: 0.7.2
* GitHub: https://github.com/markfairbanks/tidytable
* Source code: https://github.com/cran/tidytable
* Date/Publication: 2022-04-28 16:30:02 UTC
* Number of recursive dependencies: 52

Run `cloud_details(, "tidytable")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (10, 9, 8, 7)
      ── Failure (test-unnest.R:70:3): unnesting works with nested vector ────────────
      unnest_df$vec_col (`actual`) not equal to c(1, 2, 3, 4, 5) (`expected`).
      
      `actual` is an integer vector (1, 2, 3, 4, 5)
      `expected` is a double vector (1, 2, 3, 4, 5)
      ── Failure (test-unnest_longer.R:30:3): preserves empty rows ───────────────────
      nrow(out) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 173 | WARN 0 | SKIP 0 | PASS 846 ]
      Error: Test failures
      Execution halted
    ```

# tidytext

<details>

* Version: 0.3.2
* GitHub: https://github.com/juliasilge/tidytext
* Source code: https://github.com/cran/tidytext
* Date/Publication: 2021-09-30 20:10:02 UTC
* Number of recursive dependencies: 126

Run `cloud_details(, "tidytext")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─tidytext:::expect_nrow(r, 24) at test-unnest_ngrams.R:3:2
       2.   └─testthat::expect_equal(nrow(tbl), n) at tests/testthat/helper-funs.R:3:2
      ── Failure (test-unnest_ngrams.R:6:3): unnest_ngrams works ─────────────────────
      nrow(tbl) (`actual`) not equal to `n` (`expected`).
      
      `actual` is an integer vector (20)
      `expected` is a double vector (20)
      Backtrace:
          ▆
       1. └─tidytext:::expect_nrow(r, 20) at test-unnest_ngrams.R:6:2
       2.   └─testthat::expect_equal(nrow(tbl), n) at tests/testthat/helper-funs.R:3:2
      
      [ FAIL 67 | WARN 2 | SKIP 3 | PASS 244 ]
      Error: Test failures
      Execution halted
    ```

# time.slots

<details>

* Version: 0.2.0
* GitHub: NA
* Source code: https://github.com/cran/time.slots
* Date/Publication: 2022-04-22 09:20:02 UTC
* Number of recursive dependencies: 56

Run `cloud_details(, "time.slots")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(time.slots)
      > 
      > test_check("time.slots")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 6 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-SlotsDetails.R:4:3): SlotsDetails Null Case Works ─────────────
      nrow(SlotsDetails()) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 6 ]
      Error: Test failures
      Execution halted
    ```

# toscutil

<details>

* Version: 2.1.0
* GitHub: NA
* Source code: https://github.com/cran/toscutil
* Date/Publication: 2022-02-22 19:50:02 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "toscutil")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(toscutil)
      > 
      > test_check("toscutil")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test_corn.R:4:5): corn ─────────────────────────────────────────────
      corn(matrix(1:100, 10), 1) (`actual`) not equal to matrix(c(1, 10, 91, 100), 2) (`expected`).
      
      `actual` is an integer vector (1, 10, 91, 100)
      `expected` is a double vector (1, 10, 91, 100)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# tosr

<details>

* Version: 0.1.1
* GitHub: https://github.com/coreofscience/tosr
* Source code: https://github.com/cran/tosr
* Date/Publication: 2022-01-15 00:30:02 UTC
* Number of recursive dependencies: 182

Run `cloud_details(, "tosr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(tosr)
      > 
      > test_check("tosr")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-tosr_load.R:4:3): create ToS correctly ────────────────────────
      nrow(tosSAP(my_tosr_load$graph, my_tosr_load$df, my_tosr_load$nodes)) (`actual`) not equal to 137 (`expected`).
      
      `actual` is an integer vector (137)
      `expected` is a double vector (137)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# toxpiR

<details>

* Version: 1.0.3
* GitHub: https://github.com/ToxPi/toxpiR
* Source code: https://github.com/cran/toxpiR
* Date/Publication: 2022-02-18 22:40:02 UTC
* Number of recursive dependencies: 69

Run `cloud_details(, "toxpiR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (1, 2, 3, 4, 5, ...)
      ── Failure (test-TxpResult.R:50:3): TxpResult accessors return expected slots ──
      txpRanks(sort(res, decreasing = FALSE)) (`actual`) not equal to 10:1 (`expected`).
      
      `actual` is a double vector (10, 9, 8, 7, 6, ...)
      `expected` is an integer vector (10, 9, 8, 7, 6, ...)
      ── Failure (test-TxpResult.R:126:3): We can coerce TxpResult to data.frame ─────
      dim(as.data.frame(res)) (`actual`) not equal to c(10, 7) (`expected`).
      
      `actual` is an integer vector (10, 7)
      `expected` is a double vector (10, 7)
      
      [ FAIL 6 | WARN 0 | SKIP 0 | PASS 270 ]
      Error: Test failures
      Execution halted
    ```

# Tplyr

<details>

* Version: 0.4.4
* GitHub: https://github.com/atorus-research/Tplyr
* Source code: https://github.com/cran/Tplyr
* Date/Publication: 2022-01-27 16:00:02 UTC
* Number of recursive dependencies: 117

Run `cloud_details(, "Tplyr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected[[1]]` is an integer vector (1, 1, 1, 2, 2, ...)
      ── Failure (test-sort.R:142:3): A group_desc layer can be ordered properly ─────
      b_t[, 7] (`actual`) not equal to tibble(ord_layer_1 = as.integer(rep(c(1, 2, 3), each = 2))) (`expected`).
      
      `actual[[1]]` is a double vector (1, 1, 2, 2, 3, ...)
      `expected[[1]]` is an integer vector (1, 1, 2, 2, 3, ...)
      ── Failure (test-table.R:4:3): tplyr_table returns an empty envrionment of class 'tplyr_table' when passed no arguemnts ──
      length(rlang::env_names(st)) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 86 | WARN 0 | SKIP 52 | PASS 469 ]
      Error: Test failures
      Execution halted
    ```

# treeDA

<details>

* Version: 0.0.5
* GitHub: https://github.com/jfukuyama/treeda
* Source code: https://github.com/cran/treeDA
* Date/Publication: 2021-05-14 21:30:03 UTC
* Number of recursive dependencies: 113

Run `cloud_details(, "treeDA")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (testNodeManipulations.R:30:5): Make descendant matrix works ────────
      nrow(dm) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (testNodeManipulations.R:31:5): Make descendant matrix works ────────
      ncol(dm) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 5 | WARN 1 | SKIP 0 | PASS 12 ]
      Error: Test failures
      Execution halted
    ```

# TreeDist

<details>

* Version: 2.4.0
* GitHub: https://github.com/ms609/TreeDist
* Source code: https://github.com/cran/TreeDist
* Date/Publication: 2022-03-23 07:50:22 UTC
* Number of recursive dependencies: 215

Run `cloud_details(, "TreeDist")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      [ FAIL 220 | WARN 0 | SKIP 4 | PASS 988 ]
      Deleting unused snapshots:
      • Plot3/plotting-order.svg
      • plot/jrf-vm-matchzeros-false.svg
      • plot/rf-collapse-a-node.svg
      • plot/rf-collapse-and-change.svg
      • plot/rf-vm-single-splits-plainedges.svg
      • plot/test-lc-letters.svg
      • plot/test-uc-letters.svg
      • plot/test-vmr.svg
      • plot/test-without-space.svg
      • plot/visualize-mci-matching.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  6.7Mb
      sub-directories of 1Mb or more:
        libs   5.2Mb
    ```

# TreeTools

<details>

* Version: 1.7.1
* GitHub: https://github.com/ms609/TreeTools
* Source code: https://github.com/cran/TreeTools
* Date/Publication: 2022-03-25 14:10:06 UTC
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
      
      `actual` is a double vector (5)
      `expected` is an integer vector (5)
      Backtrace:
          ▆
       1. └─TreeTools TestSym(as.phylo(72298, nTip = 9, blank9), 5) at test-tree_shape.R:153:2
       2.   └─testthat::expect_equal(shape, UnrootedTreeShape(tree)) at test-tree_shape.R:142:4
      
      [ FAIL 301 | WARN 0 | SKIP 7 | PASS 2903 ]
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
      installed size is  9.6Mb
      sub-directories of 1Mb or more:
        R      1.0Mb
        libs   7.6Mb
    ```

# tsfgrnn

<details>

* Version: 1.0.1
* GitHub: https://github.com/franciscomartinezdelrio/tsfgrnn
* Source code: https://github.com/cran/tsfgrnn
* Date/Publication: 2021-04-22 11:00:03 UTC
* Number of recursive dependencies: 63

Run `cloud_details(, "tsfgrnn")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$targets` is a double vector (3, 4, 5)
      `expected$targets` is an integer vector (3, 4, 5)
      ── Failure (test_build_examples.R:22:3): build_examples with two targets ───────
      build_examples(ts(1:5), 2:1, nt = 2, transform = "none") (`actual`) not equal to `result` (`expected`).
      
      `actual$patterns` is a double vector (1, 2, 2, 3)
      `expected$patterns` is an integer vector (1, 2, 2, 3)
      
      `actual$targets` is a double vector (3, 4, 4, 5)
      `expected$targets` is an integer vector (3, 4, 4, 5)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 5 ]
      Error: Test failures
      Execution halted
    ```

# tsibble

<details>

* Version: 1.1.1
* GitHub: https://github.com/tidyverts/tsibble
* Source code: https://github.com/cran/tsibble
* Date/Publication: 2021-12-03 21:30:02 UTC
* Number of recursive dependencies: 94

Run `cloud_details(, "tsibble")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-tsibble2ts.R:57:3): as.ts.tbl_ts() ────────────────────────────
      as.matrix(as.ts(harvest, value = kilo)) (`actual`) not equal to `expected` (`expected`).
      
      `actual` is an S3 object of class <mts/ts/matrix>, a double vector
      `expected` is an S3 object of class <mts/ts/matrix>, an integer vector
      ── Failure (test-tsibble2ts.R:73:3): a tsibble with more than one measured vars ──
      ncol(y) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 36 | WARN 1 | SKIP 5 | PASS 712 ]
      Error: Test failures
      Execution halted
    ```

# tukeyGH

<details>

* Version: 1.0.0
* GitHub: https://github.com/f-santi/tukeyGH
* Source code: https://github.com/cran/tukeyGH
* Date/Publication: 2021-04-10 08:10:02 UTC
* Number of recursive dependencies: 36

Run `cloud_details(, "tukeyGH")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(tukeyGH)
      > 
      > test_check("tukeyGH")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 62 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-rgh.R:8:3): rgh works ─────────────────────────────────────────
      length(do.call("rgh", depo)) (`actual`) not equal to depo$n (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
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

# ucie

<details>

* Version: 1.0.1
* GitHub: NA
* Source code: https://github.com/cran/ucie
* Date/Publication: 2022-03-01 17:20:02 UTC
* Number of recursive dependencies: 58

Run `cloud_details(, "ucie")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `x` (`actual`) not equal to `expected` (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      Backtrace:
          ▆
       1. ├─base::suppressWarnings(expect_that(ncol(data_with_colors), equals(2))) at test-test-xyz.R:6:2
       2. │ └─base::withCallingHandlers(...)
       3. └─testthat::expect_that(ncol(data_with_colors), equals(2))
       4.   └─testthat condition(object)
       5.     └─testthat::expect_equal(x, expected, ..., expected.label = label)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

# UKB.COVID19

<details>

* Version: 0.1.3
* GitHub: https://github.com/bahlolab/UKB.COVID19
* Source code: https://github.com/cran/UKB.COVID19
* Date/Publication: 2022-01-04 10:20:05 UTC
* Number of recursive dependencies: 132

Run `cloud_details(, "UKB.COVID19")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test_comorbidity_asso.R:36:3): Comorbildity association test ───────
      ncol(comorb.asso) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      ── Failure (test_comorbidity_summary.R:13:3): Generate comorbidity summary ─────
      ncol(comorb) (`actual`) not equal to 165 (`expected`).
      
      `actual` is an integer vector (165)
      `expected` is a double vector (165)
      
      [ FAIL 3 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

# units

<details>

* Version: 0.8-0
* GitHub: https://github.com/r-quantities/units
* Source code: https://github.com/cran/units
* Date/Publication: 2022-02-05 00:50:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "units")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      • plot/ggplot2-lab.svg
      • plot/ggplot2-manual.svg
      • plot/ggplot2-nolab.svg
      • plot/plot-boxplot.svg
      • plot/plot-degree-c.svg
      • plot/plot-division.svg
      • plot/plot-hist.svg
      • plot/plot-inverse.svg
      • plot/plot-lab.svg
      • plot/plot-line.svg
      • plot/plot-nothing.svg
      • plot/plot-npower.svg
      • plot/plot-parentheses.svg
      Error: Test failures
      Execution halted
    ```

# usethis

<details>

* Version: 2.1.5
* GitHub: https://github.com/r-lib/usethis
* Source code: https://github.com/cran/usethis
* Date/Publication: 2021-12-09 23:00:02 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "usethis")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-utils-github.R:112:3): github_remotes(), github_remote_list() accept explicit 0-row input ──
      nrow(grl) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-utils-github.R:116:3): github_remotes(), github_remote_list() accept explicit 0-row input ──
      nrow(grl) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 6 | WARN 26 | SKIP 52 | PASS 597 ]
      Error: Test failures
      Execution halted
    ```

# utf8

<details>

* Version: 1.2.2
* GitHub: https://github.com/patperry/r-utf8
* Source code: https://github.com/cran/utf8
* Date/Publication: 2021-07-24 15:00:02 UTC
* Number of recursive dependencies: 55

Run `cloud_details(, "utf8")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 1, NA, NA)
      ── Failure (test-utf8_width.R:61:3): 'utf8_width' gives width 1 for quotes ─────
      utf8_width("\"", encode = TRUE) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      ── Failure (test-utf8_width.R:62:3): 'utf8_width' gives width 1 for quotes ─────
      utf8_width("\"", encode = FALSE) (`actual`) not equal to 1 (`expected`).
      
      `actual` is an integer vector (1)
      `expected` is a double vector (1)
      
      [ FAIL 8 | WARN 0 | SKIP 18 | PASS 144 ]
      Error: Test failures
      Execution halted
    ```

# valet

<details>

* Version: 0.9.0
* GitHub: NA
* Source code: https://github.com/cran/valet
* Date/Publication: 2022-04-12 08:10:02 UTC
* Number of recursive dependencies: 67

Run `cloud_details(, "valet")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (66)
      ── Failure (test-get_series.R:2:3): get_series returns full dataset ────────────
      nrow(get_series("SWP-R1N1983Q2")) (`actual`) not equal to 78 (`expected`).
      
      `actual` is an integer vector (78)
      `expected` is a double vector (78)
      ── Failure (test-valet.R:2:3): valet returns 200 status code for available datasets ──
      valet(sample(get_list("series")$name, 1))$response$status_code (`actual`) not equal to 200 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      
      [ FAIL 4 | WARN 0 | SKIP 0 | PASS 12 ]
      Error: Test failures
      Execution halted
    ```

# vcmeta

<details>

* Version: 1.0.0
* GitHub: https://github.com/dgbonett/vcmeta
* Source code: https://github.com/cran/vcmeta
* Date/Publication: 2021-08-21 09:40:02 UTC
* Number of recursive dependencies: 49

Run `cloud_details(, "vcmeta")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘test_check.R’
    Running the tests in ‘tests/test_check.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1, 2)
      ── Failure (test_meta_se.R:97:3): se.meanratio2 returns valid matrix ───────────
      dim(res) (`actual`) not equal to c(1, length(colnames_expected)) (`expected`).
      
      `actual` is an integer vector (1, 2)
      `expected` is a double vector (1, 2)
      ── Failure (test_meta_se.R:108:3): se.slope returns valid matrix ───────────────
      dim(res) (`actual`) not equal to c(1, length(colnames_expected)) (`expected`).
      
      `actual` is an integer vector (1, 2)
      `expected` is a double vector (1, 2)
      
      [ FAIL 78 | WARN 0 | SKIP 0 | PASS 154 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘mathjaxr’
      All declared Imports should be used.
    ```

# vctrs

<details>

* Version: 0.4.1
* GitHub: https://github.com/r-lib/vctrs
* Source code: https://github.com/cran/vctrs
* Date/Publication: 2022-04-13 10:30:02 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "vctrs")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─vctrs:::expect_equal(vec_ptype_common(.ptype = 1:10), numeric()) at test-type.R:17:2
       2.   └─vctrs:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance) at tests/testthat/helper-vctrs.R:64:2
      ── Failure (test-type.R:28:3): can feed ptype into itself ──────────────────────
      `actual` (vec_ptype_common(vec_ptype_common(1:10))) not equal to `expected` (numeric()).
      
      `actual` is an integer vector ()
      `expected` is a double vector ()
      Backtrace:
          ▆
       1. └─vctrs:::expect_equal(...) at test-type.R:28:2
       2.   └─vctrs:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance) at tests/testthat/helper-vctrs.R:64:2
      
      [ FAIL 93 | WARN 0 | SKIP 196 | PASS 4713 ]
      Error: Test failures
      Execution halted
    ```

# vetiver

<details>

* Version: 0.1.4
* GitHub: https://github.com/tidymodels/vetiver-r
* Source code: https://github.com/cran/vetiver
* Date/Publication: 2022-04-28 15:10:02 UTC
* Number of recursive dependencies: 164

Run `cloud_details(, "vetiver")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (0)
      ── Failure (test-ranger.R:17:5): can predict ranger model ──────────────────────
      length(preds$predictions) (`actual`) not equal to 32 (`expected`).
      
      `actual` is an integer vector (32)
      `expected` is a double vector (32)
      ── Failure (test-xgboost.R:15:5): can predict xgboost model ────────────────────
      length(preds) (`actual`) not equal to 32 (`expected`).
      
      `actual` is an integer vector (32)
      `expected` is a double vector (32)
      
      [ FAIL 5 | WARN 0 | SKIP 31 | PASS 115 ]
      Error: Test failures
      Execution halted
    ```

# vistime

<details>

* Version: 1.2.1
* GitHub: https://github.com/shosaco/vistime
* Source code: https://github.com/cran/vistime
* Date/Publication: 2021-04-10 11:20:03 UTC
* Number of recursive dependencies: 103

Run `cloud_details(, "vistime")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is an integer vector (1546300800, 1546646400)
      ── Failure (???): background_lines ─────────────────────────────────────────────
      12 (`actual`) not equal to suppressWarnings(length(plotly::plotly_build(generated)$x$layout$shapes)) (`expected`).
      
      `actual` is a double vector (12)
      `expected` is an integer vector (12)
      ── Failure (test_vistime.R:86:3): y values are distributed ─────────────────────
      `all_y` (`actual`) not equal to 2:1 (`expected`).
      
      `actual` is a double vector (2, 1)
      `expected` is an integer vector (2, 1)
      
      [ FAIL 14 | WARN 7 | SKIP 0 | PASS 100 ]
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

# visxhclust

<details>

* Version: 1.0.0
* GitHub: https://github.com/rhenkin/visxhclust
* Source code: https://github.com/cran/visxhclust
* Date/Publication: 2021-10-19 07:20:02 UTC
* Number of recursive dependencies: 133

Run `cloud_details(, "visxhclust")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-utils_clustering.R:80:3): optimal score ───────────────────────
      optimal_score(ch_res$score, method = "firstmin") (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      ── Failure (test-utils_clustering.R:81:3): optimal score ───────────────────────
      optimal_score(ch_res$score, method = "globalmin") (`actual`) not equal to 10 (`expected`).
      
      `actual` is an integer vector (10)
      `expected` is a double vector (10)
      
      [ FAIL 7 | WARN 0 | SKIP 0 | PASS 72 ]
      Error: Test failures
      Execution halted
    ```

# voluModel

<details>

* Version: 0.1.3
* GitHub: https://github.com/hannahlowens/voluModel
* Source code: https://github.com/cran/voluModel
* Date/Publication: 2022-03-21 08:30:02 UTC
* Number of recursive dependencies: 127

Run `cloud_details(, "voluModel")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-xyzSample.R:45:3): xyzSample returns appropriate information ──
      0 (`actual`) not equal to sum(is.na(occSample3d)) (`expected`).
      
      `actual` is a double vector (0)
      `expected` is an integer vector (0)
      ── Failure (test-xyzSample.R:55:3): xyzSample column parsing works ─────────────
      0 (`actual`) not equal to sum(is.na(occSample3d)) (`expected`).
      
      `actual` is a double vector (0)
      `expected` is an integer vector (0)
      
      [ FAIL 16 | WARN 1 | SKIP 2 | PASS 175 ]
      Error: Test failures
      Execution halted
    ```

# vroom

<details>

* Version: 1.5.7
* GitHub: https://github.com/r-lib/vroom
* Source code: https://github.com/cran/vroom
* Date/Publication: 2021-11-30 14:20:06 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "vroom")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      `actual$X2` is an integer vector (222, 444)
      `expected$X2` is a double vector (222, 444)
      ── Failure (test-vroom_fwf.R:366:3): vroom_fwf correctly reads DOS files with no trailing newline (https://github.com/tidyverse/readr/issues/1293) ──
      `out` (`actual`) not equal to tibble::tibble(X1 = c(111, 333), X2 = c(222, 444)) (`expected`).
      
      `actual$X1` is an integer vector (111, 333)
      `expected$X1` is a double vector (111, 333)
      
      `actual$X2` is an integer vector (222, 444)
      `expected$X2` is a double vector (222, 444)
      
      [ FAIL 66 | WARN 0 | SKIP 6 | PASS 974 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 25.5Mb
      sub-directories of 1Mb or more:
        libs  24.0Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

# webfakes

<details>

* Version: 1.1.3
* GitHub: https://github.com/r-lib/webfakes
* Source code: https://github.com/cran/webfakes
* Date/Publication: 2021-04-30 11:30:02 UTC
* Number of recursive dependencies: 42

Run `cloud_details(, "webfakes")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (200)
      ── Failure (test-response.R:66:3): write-wait ──────────────────────────────────
      resp$status_code (`actual`) not equal to 200 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      ── Failure (test-response.R:73:3): send_chunk ──────────────────────────────────
      resp$status_code (`actual`) not equal to 200 (`expected`).
      
      `actual` is an integer vector (200)
      `expected` is a double vector (200)
      
      [ FAIL 33 | WARN 0 | SKIP 7 | PASS 264 ]
      Error: Test failures
      Execution halted
    ```

# weibulltools

<details>

* Version: 2.0.0
* GitHub: https://github.com/Tim-TU/weibulltools
* Source code: https://github.com/cran/weibulltools
* Date/Publication: 2021-01-12 09:30:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "weibulltools")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      [ FAIL 1 | WARN 0 | SKIP 28 | PASS 34 ]
      
      ══ Skipped tests ═══════════════════════════════════════════════════════════════
      • On CRAN (28)
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-rank_regression.R:71:3): rank_regression supports multiple methods ──
      length(rr) (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      
      [ FAIL 1 | WARN 0 | SKIP 28 | PASS 34 ]
      Error: Test failures
      Execution halted
    ```

# wildmeta

<details>

* Version: 0.1.0
* GitHub: https://github.com/meghapsimatrix/wildmeta
* Source code: https://github.com/cran/wildmeta
* Date/Publication: 2022-02-02 08:30:05 UTC
* Number of recursive dependencies: 80

Run `cloud_details(, "wildmeta")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
       1. └─wildmeta check_update(reg_user) at test-robu-update.R:247:2
       2.   └─testthat::expect_equal(mod$reg_table$dfs, update_tests$df) at test-robu-update.R:63:4
      ── Failure (test-robu-update.R:247:3): update_robu.default works for user-weighted models ──
      mod_rand$reg_table$dfs (`actual`) not equal to rand_tests$df (`expected`).
      
      `actual` is a double vector (41, 41, 41, 41, 41)
      `expected` is an integer vector (41, 41, 41, 41, 41)
      Backtrace:
          ▆
       1. └─wildmeta check_update(reg_user) at test-robu-update.R:247:2
       2.   └─testthat::expect_equal(mod_rand$reg_table$dfs, rand_tests$df) at test-robu-update.R:123:4
      
      [ FAIL 12 | WARN 0 | SKIP 1 | PASS 328 ]
      Error: Test failures
      Execution halted
    ```

# withr

<details>

* Version: 2.5.0
* GitHub: https://github.com/r-lib/withr
* Source code: https://github.com/cran/withr
* Date/Publication: 2022-03-03 21:50:02 UTC
* Number of recursive dependencies: 65

Run `cloud_details(, "withr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      Backtrace:
          ▆
       1. └─withr f() at test-namespace.R:27:2
       2.   └─testthat::expect_equal(SIGINT, 2) at test-namespace.R:24:4
      ── Failure (test-wrap.R:7:3): wrap works ───────────────────────────────────────
      `v` (`actual`) not equal to 1:3 (`expected`).
      
      `actual` is a double vector (1, 2, 3)
      `expected` is an integer vector (1, 2, 3)
      
      [ FAIL 3 | WARN 0 | SKIP 3 | PASS 363 ]
      Error: Test failures
      Execution halted
    ```

# wk

<details>

* Version: 0.6.0
* GitHub: https://github.com/paleolimbot/wk
* Source code: https://github.com/cran/wk
* Date/Publication: 2022-01-03 13:20:02 UTC
* Number of recursive dependencies: 54

Run `cloud_details(, "wk")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(wk)
      > 
      > test_check("wk")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1155 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-handle-crc.R:15:3): wk_handle.wk_crc() works ──────────────────
      `crc_wkb2_lengths` (`actual`) not equal to 1 + 4 + 4 + 4 + ((51:55) * 8 * 2) (`expected`).
      
      `actual` is an integer vector (829, 845, 861, 877, 893)
      `expected` is a double vector (829, 845, 861, 877, 893)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1155 ]
      Error: Test failures
      Execution halted
    ```

# wordpiece.data

<details>

* Version: 2.0.0
* GitHub: https://github.com/macmillancontentscience/wordpiece.data
* Source code: https://github.com/cran/wordpiece.data
* Date/Publication: 2022-03-03 16:20:02 UTC
* Number of recursive dependencies: 31

Run `cloud_details(, "wordpiece.data")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-loaders.R:23:3): uncased vocab works ──────────────────────────
      length(test_result) (`actual`) not equal to 30522 (`expected`).
      
      `actual` is an integer vector (30522)
      `expected` is a double vector (30522)
      ── Failure (test-loaders.R:37:3): cased vocab works ────────────────────────────
      length(test_result) (`actual`) not equal to 28996 (`expected`).
      
      `actual` is an integer vector (28996)
      `expected` is a double vector (28996)
      
      [ FAIL 2 | WARN 0 | SKIP 2 | PASS 2 ]
      Error: Test failures
      Execution halted
    ```

# workflows

<details>

* Version: 0.2.6
* GitHub: https://github.com/tidymodels/workflows
* Source code: https://github.com/cran/workflows
* Date/Publication: 2022-03-18 14:00:02 UTC
* Number of recursive dependencies: 116

Run `cloud_details(, "workflows")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (test-extract.R:227:3): extract parameter set from workflow with tunable model ──
      nrow(wf_info) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-predict.R:14:3): can predict from a workflow ──────────────────
      nrow(result) (`actual`) not equal to 32 (`expected`).
      
      `actual` is an integer vector (32)
      `expected` is a double vector (32)
      
      [ FAIL 2 | WARN 0 | SKIP 75 | PASS 187 ]
      Error: Test failures
      Execution halted
    ```

# workflowsets

<details>

* Version: 0.2.1
* GitHub: https://github.com/tidymodels/workflowsets
* Source code: https://github.com/cran/workflowsets
* Date/Publication: 2022-03-15 10:00:02 UTC
* Number of recursive dependencies: 124

Run `cloud_details(, "workflowsets")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test-workflow_set.R:198:3): crossing ───────────────────────────────
      nrow(...) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      ── Failure (test-workflow_set.R:207:3): crossing ───────────────────────────────
      nrow(workflow_set(list(reg = mpg ~ .), list(lm = lr_spec, knn = knn_spec))) (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 9 | WARN 12 | SKIP 8 | PASS 333 ]
      Error: Test failures
      Execution halted
    ```

# yardstick

<details>

* Version: 0.0.9
* GitHub: https://github.com/tidymodels/yardstick
* Source code: https://github.com/cran/yardstick
* Date/Publication: 2021-11-22 21:10:02 UTC
* Number of recursive dependencies: 81

Run `cloud_details(, "yardstick")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (4)
      ── Failure (test_autoplot.R:311:3): Lift Curve - multi class, with resamples ───
      length(unique(.plot_data$data[[1]]$PANEL)) (`actual`) not equal to 4 (`expected`).
      
      `actual` is an integer vector (4)
      `expected` is a double vector (4)
      ── Failure (test_autoplot.R:314:3): Lift Curve - multi class, with resamples ───
      length(unique(.plot_data$data[[1]]$colour)) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 18 | WARN 0 | SKIP 39 | PASS 539 ]
      Error: Test failures
      Execution halted
    ```

# zip

<details>

* Version: 2.2.0
* GitHub: https://github.com/r-lib/zip
* Source code: https://github.com/cran/zip
* Date/Publication: 2021-05-31 04:30:02 UTC
* Number of recursive dependencies: 41

Run `cloud_details(, "zip")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (1)
      ── Failure (test-errors.R:123:3): single empty directory, non-recursive ────────
      nrow(list) (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      ── Failure (test-unzip-process.R:9:3): unzip_process ───────────────────────────
      p1$get_exit_status() (`actual`) not equal to 0 (`expected`).
      
      `actual` is an integer vector (0)
      `expected` is a double vector (0)
      
      [ FAIL 4 | WARN 0 | SKIP 6 | PASS 224 ]
      Error: Test failures
      Execution halted
    ```

# zipcodeR

<details>

* Version: 0.3.3
* GitHub: https://github.com/gavinrozzi/zipcodeR
* Source code: https://github.com/cran/zipcodeR
* Date/Publication: 2021-09-22 04:30:02 UTC
* Number of recursive dependencies: 102

Run `cloud_details(, "zipcodeR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (24)
      ── Failure (test-02-data.R:35:3): zcta_crosswalk has proper number of columns ──
      `result` (`actual`) not equal to 3 (`expected`).
      
      `actual` is an integer vector (3)
      `expected` is a double vector (3)
      ── Failure (test-02-data.R:49:3): zip_to_cd  has proper number of columns ──────
      `result` (`actual`) not equal to 2 (`expected`).
      
      `actual` is an integer vector (2)
      `expected` is a double vector (2)
      
      [ FAIL 13 | WARN 0 | SKIP 0 | PASS 38 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 5 marked UTF-8 strings
    ```

# zoomGroupStats

<details>

* Version: 0.1.0
* GitHub: NA
* Source code: https://github.com/cran/zoomGroupStats
* Date/Publication: 2021-05-13 09:20:02 UTC
* Number of recursive dependencies: 89

Run `cloud_details(, "zoomGroupStats")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      `expected` is a double vector (300)
      ── Failure (test-processTranscript.R:5:3): Transcript parsing yields correct records ──
      length(unique(tr.out$userName)) (`actual`) not equal to 6 (`expected`).
      
      `actual` is an integer vector (6)
      `expected` is a double vector (6)
      ── Failure (test-processZoomOutput.R:3:3): zoomOutput grabs available files ────
      length(z.out) (`actual`) not equal to 5 (`expected`).
      
      `actual` is an integer vector (5)
      `expected` is a double vector (5)
      
      [ FAIL 5 | WARN 0 | SKIP 0 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

