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

# gtfs2gps

<details>

* Version: 1.5-0
* GitHub: https://github.com/ipeaGIT/gtfs2gps
* Source code: https://github.com/cran/gtfs2gps
* Date/Publication: 2021-08-13 19:00:02 UTC
* Number of recursive dependencies: 88

Run `cloud_details(, "gtfs2gps")` for more info

</details>

## Newly broken

*   checking whether package ‘gtfs2gps’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gtfs2gps/new/gtfs2gps.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      5: package ‘stats’ in options("defaultPackages") was not found 
      During startup - Warning messages:
      1: In system("uname -a", intern = TRUE) :
        running command 'uname -a' had status 2
      2: package ‘utils’ in options("defaultPackages") was not found 
      Killed
      During startup - Warning message:
      package ‘utils’ in options("defaultPackages") was not found 
      Error: package or namespace load failed for ‘methods’ in runHook(".onLoad", env, package.lib, package):
       lazy-load database '/opt/R/4.0.3/lib/R/library/methods/R/methods.rdb' is corrupt
      During startup - Warning messages:
      1: package "methods" in options("defaultPackages") was not found 
      2: In runHook(".onLoad", env, package.lib, package) :
        internal error -3 in R_decompress1
      3: package ‘methods’ in options("defaultPackages") was not found 
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘pbapply’ ‘zip’
      All declared Imports should be used.
    ```

## Installation

### Devel

```
* installing *source* package ‘gtfs2gps’ ...
** package ‘gtfs2gps’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.0.3/lib/R/etc/Makeconf:181: RcppExports.o] Error 1
ERROR: compilation failed for package ‘gtfs2gps’
* removing ‘/tmp/workdir/gtfs2gps/new/gtfs2gps.Rcheck/gtfs2gps’


```
### CRAN

```
* installing *source* package ‘gtfs2gps’ ...
** package ‘gtfs2gps’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c distance_calcs.cpp -o distance_calcs.o
g++ -std=gnu++11 -I"/opt/R/4.0.3/lib/R/include" -DNDEBUG  -I'/opt/R/4.0.3/lib/R/site-library/Rcpp/include' -I/usr/local/include   -fpic  -g -O2  -c snap_points.cpp -o snap_points.o
g++ -std=gnu++11 -shared -L/opt/R/4.0.3/lib/R/lib -L/usr/local/lib -o gtfs2gps.so RcppExports.o distance_calcs.o snap_points.o -L/opt/R/4.0.3/lib/R/lib -lR
installing to /tmp/workdir/gtfs2gps/old/gtfs2gps.Rcheck/00LOCK-gtfs2gps/00new/gtfs2gps/libs
** R
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
* DONE (gtfs2gps)


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

# nsrr

<details>

* Version: 0.2.0
* GitHub: https://github.com/muschellij2/nsrr
* Source code: https://github.com/cran/nsrr
* Date/Publication: 2020-06-24 18:40:03 UTC
* Number of recursive dependencies: 72

Run `cloud_details(, "nsrr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Error: lexical error: invalid char in json text.
                                             <html>  <head><title>502 Bad Ga
                           (right here) ------^
      
      Backtrace:
          █
       1. └─nsrr::nsrr_datasets(token = NULL) test-token.R:7:4
       2.   └─jsonlite::fromJSON(x, flatten = TRUE)
       3.     └─jsonlite:::parse_and_simplify(...)
       4.       └─jsonlite:::parseJSON(txt, bigint_as_char)
       5.         └─jsonlite:::parse_string(txt, bigint_as_char)
      
      [ FAIL 1 | WARN 0 | SKIP 1 | PASS 0 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘nsrr-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: nsrr_all_dataset_files
    > ### Title: NSRR All Dataset files
    > ### Aliases: nsrr_all_dataset_files
    > 
    > ### ** Examples
    > 
    > dataset = "shhs"
    > df = nsrr_all_dataset_files(dataset, max_files = 10)
    Error: lexical error: invalid char in json text.
                                           <!doctype html> <html lang="en"
                         (right here) ------^
    Execution halted
    ```

# scholar

<details>

* Version: 0.2.2
* GitHub: https://github.com/YuLab-SMU/scholar
* Source code: https://github.com/cran/scholar
* Date/Publication: 2021-07-13 09:30:05 UTC
* Number of recursive dependencies: 93

Run `cloud_details(, "scholar")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘scholar-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: compare_scholar_careers
    > ### Title: Compare the careers of multiple scholars
    > ### Aliases: compare_scholar_careers
    > 
    > ### ** Examples
    > 
    > {
    ...
    +     # Compare Feynman and Stephen Hawking
    +     ids <- c("B7vSqZsAAAAJ", "qj74uXkAAAAJ")
    +     df <- compare_scholar_careers(ids)
    + }
    Warning in get_scholar_resp(url) :
      Page 404. Please check whether the provided URL is correct.
    Error in rbind(deparse.level, ...) : 
      numbers of columns of arguments do not match
    Calls: compare_scholar_careers -> do.call -> rbind -> rbind
    Execution halted
    ```

