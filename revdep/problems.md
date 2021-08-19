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

# gWidgets2tcltk

<details>

* Version: 1.0-6
* GitHub: https://github.com/jverzani/gWidgets2tcltk
* Source code: https://github.com/cran/gWidgets2tcltk
* Date/Publication: 2018-09-25 13:20:02 UTC
* Number of recursive dependencies: 35

Run `cloud_details(, "gWidgets2tcltk")` for more info

</details>

## Newly broken

*   checking whether package ‘gWidgets2tcltk’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
Warning message:
In fun(libname, pkgname) : couldn't connect to display ":109"
Error in structure(.External(.C_dotTclObjv, objv), class = "tclObj") : 
  [tcl] invalid command name "font".

Error: unable to load R code in package ‘gWidgets2tcltk’
Execution halted
ERROR: lazy loading failed for package ‘gWidgets2tcltk’
* removing ‘/tmp/workdir/gWidgets2tcltk/new/gWidgets2tcltk.Rcheck/gWidgets2tcltk’


```
### CRAN

```
* installing *source* package ‘gWidgets2tcltk’ ...
** package ‘gWidgets2tcltk’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** demo
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gWidgets2tcltk)


```
# mcmcr

<details>

* Version: 0.6.0
* GitHub: https://github.com/poissonconsulting/mcmcr
* Source code: https://github.com/cran/mcmcr
* Date/Publication: 2021-08-05 18:00:02 UTC
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
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 428 ]
      Error: Test failures
      Execution halted
    ```

# param6

<details>

* Version: 0.2.1
* GitHub: https://github.com/xoopR/param6
* Source code: https://github.com/cran/param6
* Date/Publication: 2021-07-29 08:50:05 UTC
* Number of recursive dependencies: 37

Run `cloud_details(, "param6")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      actual vs expected
                                            Support
      - actual[1, ]   <environment: 0x560f6c575ca8>
      + expected[1, ] <environment: 0x560f6cc34790>
      - actual[2, ]   <environment: 0x560f6c740798>
      + expected[2, ] <environment: 0x560f6ccf9918>
      - actual[3, ]   <environment: 0x560f6c918c90>
      + expected[3, ] <environment: 0x560f6cf645c8>
      - actual[4, ]   <environment: 0x560f6ca61d58>
      + expected[4, ] <environment: 0x560f6d142b50>
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 364 ]
      Error: Test failures
      Execution halted
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

# spsurvey

<details>

* Version: 4.1.4
* GitHub: NA
* Source code: https://github.com/cran/spsurvey
* Date/Publication: 2020-09-18 08:20:03 UTC
* Number of recursive dependencies: 94

Run `cloud_details(, "spsurvey")` for more info

</details>

## Newly broken

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘Area_Analysis.Rmd’
      ...
    
    ... incomplete output.  Crash?
    
      ‘Area_Analysis.Rmd’ using ‘UTF-8’... failed to complete the test
      ‘Area_Design.Rmd’ using ‘UTF-8’... OK
      ‘CDF_Analysis.Rmd’ using ‘UTF-8’... OK
      ‘CDF_Deconvolution.Rmd’ using ‘UTF-8’... OK
      ‘Change_Analysis.Rmd’ using ‘UTF-8’... OK
      ‘Finite_Analysis.Rmd’ using ‘UTF-8’... OK
      ‘Finite_Design.Rmd’ using ‘UTF-8’... OK
      ‘Linear_Analysis.Rmd’ using ‘UTF-8’... OK
      ‘Linear_Design.Rmd’ using ‘UTF-8’... OK
      ‘Risk_Analysis.Rmd’ using ‘UTF-8’... OK
    ```

## In both

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error: package or namespace load failed for ‘stats’ in get(Info[i, 1], envir = env):
       lazy-load database '/opt/R/4.0.3/lib/R/library/graphics/R/graphics.rdb' is corrupt
      During startup - Warning messages:
      1: package ‘graphics’ in options("defaultPackages") was not found 
      2: In get(Info[i, 1], envir = env) : internal error -3 in R_decompress1
      3: package ‘stats’ in options("defaultPackages") was not found 
      Error: package or namespace load failed for ‘stats’ in get(Info[i, 1], envir = env):
       lazy-load database '/opt/R/4.0.3/lib/R/library/utils/R/utils.rdb' is corrupt
      During startup - Warning messages:
      1: package ‘utils’ in options("defaultPackages") was not found 
      2: In get(Info[i, 1], envir = env) : internal error -3 in R_decompress1
      3: package ‘stats’ in options("defaultPackages") was not found 
      Killed
      During startup - Warning message:
      package ‘utils’ in options("defaultPackages") was not found 
    ```

