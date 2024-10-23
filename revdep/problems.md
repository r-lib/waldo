# bayesRecon

<details>

* Version: 0.3.1
* GitHub: NA
* Source code: https://github.com/cran/bayesRecon
* Date/Publication: 2024-08-28 20:10:02 UTC
* Number of recursive dependencies: 82

Run `revdepcheck::cloud_details(, "bayesRecon")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
      > # * https://testthat.r-lib.org/reference/test_package.html#special-files
    ...
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(tolerance = NULL)
       5.         └─waldo:::check_number_decimal(tolerance, allow_null = TRUE, min = 0)
       6.           └─waldo:::.stop_not_number(...)
       7.             └─waldo:::stop_input_type(...)
       8.               └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 50 ]
      Error: Test failures
      Execution halted
    ```

# dm

<details>

* Version: 1.0.10
* GitHub: https://github.com/cynkra/dm
* Source code: https://github.com/cran/dm
* Date/Publication: 2024-01-21 16:32:48 UTC
* Number of recursive dependencies: 133

Run `revdepcheck::cloud_details(, "dm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > 
      > # Need to use qualified call, this is checked in helper-print.R
      > testthat::test_check("dm")
      Loading required package: dm
      
      Attaching package: 'dm'
    ...
      • draw-dm/nycflight-dm.svg
      • draw-dm/single-empty-table-dm.svg
      • draw-dm/table-desc-1-dm.svg
      • draw-dm/table-desc-2-dm.svg
      • draw-dm/table-desc-3-dm.svg
      • draw-dm/table-desc-4-dm.svg
      • draw-dm/table-uk-1-dm.svg
      • draw-dm/table-uk-2-dm.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘dm.Rmd’
      ...
    
    > source("setup/setup.R")
    <STYLE type='text/css' scoped>
    PRE.fansi SPAN {padding-top: .25em; padding-bottom: .25em};
    </STYLE>
    
      When sourcing ‘dm.R’:
    ...
      ‘howto-dm-theory.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-cdm.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-class.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-draw.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-filter.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-join.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-keyed.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-low-level.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-naming.Rmd’ using ‘UTF-8’... failed
      ‘tech-dm-zoom.Rmd’ using ‘UTF-8’... failed
    ```

# ExposR

<details>

* Version: 1.1
* GitHub: https://github.com/expos-model/ExposR
* Source code: https://github.com/cran/ExposR
* Date/Publication: 2023-06-14 15:52:05 UTC
* Number of recursive dependencies: 54

Run `revdepcheck::cloud_details(, "ExposR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
      > # * https://testthat.r-lib.org/reference/test_package.html#special-files
    ...
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(tolerance = NULL)
       5.         └─waldo:::check_number_decimal(tolerance, allow_null = TRUE, min = 0)
       6.           └─waldo:::.stop_not_number(...)
       7.             └─waldo:::stop_input_type(...)
       8.               └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 0 ]
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

Run `revdepcheck::cloud_details(, "lmls")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(lmls)
      > 
      > test_check("lmls")
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 149 ]
      
      ══ Skipped tests (2) ═══════════════════════════════════════════════════════════
    ...
       2.   └─testthat::expect_equal(...)
       3.     └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       4.       └─testthat:::waldo_compare(...)
       5.         └─waldo::compare(ignore_attr = "waldo_opts")
       6.           └─waldo:::stop_input_type(ignore_attr, "a TRUE, a FALSE, or a character vector")
       7.             └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 149 ]
      Error: Test failures
      Execution halted
    ```

# ottr

<details>

* Version: 1.5.0
* GitHub: NA
* Source code: https://github.com/cran/ottr
* Date/Publication: 2024-02-01 07:30:02 UTC
* Number of recursive dependencies: 57

Run `revdepcheck::cloud_details(, "ottr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/tests.html
      > # * https://testthat.r-lib.org/reference/test_package.html#special-files
    ...
        "            \"name\": \"q3-1\","
        "            \"code\": \"{\\n    testthat::expect_equal(length(y), 3)\\n}\","
      Backtrace:
          ▆
       1. └─ottr (local) run_test(...) at test_integration.R:33:3
       2.   └─testthat::expect_equal(...) at test_integration.R:17:5
      
      [ FAIL 2 | WARN 0 | SKIP 0 | PASS 211 ]
      Error: Test failures
      Execution halted
    ```

# sdtm.oak

<details>

* Version: 0.1.0
* GitHub: https://github.com/pharmaverse/sdtm.oak
* Source code: https://github.com/cran/sdtm.oak
* Date/Publication: 2024-09-03 14:40:02 UTC
* Number of recursive dependencies: 81

Run `revdepcheck::cloud_details(, "sdtm.oak")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # This file is part of the standard setup for testthat.
      > # It is recommended that you do not modify it.
      > #
      > # Where should you do additional test configuration?
      > # Learn more about the roles of various files in:
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
    ...
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(tolerance = NULL)
       5.         └─waldo:::check_number_decimal(tolerance, allow_null = TRUE, min = 0)
       6.           └─waldo:::.stop_not_number(...)
       7.             └─waldo:::stop_input_type(...)
       8.               └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 5 | PASS 340 ]
      Error: Test failures
      Execution halted
    ```

