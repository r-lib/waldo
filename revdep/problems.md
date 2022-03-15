# msde

<details>

* Version: 1.0.5
* GitHub: NA
* Source code: https://github.com/cran/msde
* Date/Publication: 2021-12-17 07:50:02 UTC
* Number of recursive dependencies: 50

Run `cloud_details(, "msde")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(msde)
      > 
      > Sys.unsetenv("R_TESTS")
      > test_check("msde")
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 797 ]
      
      ══ Failed tests ════════════════════════════════════════════════════════════════
      ── Failure (???): lpi.R == lpi.cpp ─────────────────────────────────────────────
      mxd[ii, 2] not equal to 0.
      1/1 mismatches
      [1] 5.54e-06 - 0 == 5.54e-06
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 797 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  9.1Mb
      sub-directories of 1Mb or more:
        libs   8.4Mb
    ```

