# AquaBEHER

<details>

* Version: 1.4.0
* GitHub: https://github.com/RobelTakele/AquaBEHER
* Source code: https://github.com/cran/AquaBEHER
* Date/Publication: 2024-09-24 22:10:05 UTC
* Number of recursive dependencies: 91

Run `revdepcheck::cloud_details(, "AquaBEHER")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.6Mb
      sub-directories of 1Mb or more:
        data   2.0Mb
        doc    2.4Mb
    ```

# arrow

<details>

* Version: 17.0.0.1
* GitHub: https://github.com/apache/arrow
* Source code: https://github.com/cran/arrow
* Date/Publication: 2024-08-21 12:20:06 UTC
* Number of recursive dependencies: 78

Run `revdepcheck::cloud_details(, "arrow")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > # Licensed to the Apache Software Foundation (ASF) under one
      > # or more contributor license agreements.  See the NOTICE file
      > # distributed with this work for additional information
      > # regarding copyright ownership.  The ASF licenses this file
      > # to you under the Apache License, Version 2.0 (the
      > # "License"); you may not use this file except in compliance
      > # with the License.  You may obtain a copy of the License at
    ...
       2.   └─testthat::expect_equal(...) at tests/testthat/helper-expectation.R:43:5
       3.     └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       4.       └─testthat:::waldo_compare(...)
       5.         └─waldo::compare(ignore_attr = "waldo_opts")
       6.           └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       7.             └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 431 | WARN 0 | SKIP 74 | PASS 3817 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 124.1Mb
      sub-directories of 1Mb or more:
        R       7.5Mb
        libs  115.9Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘readr’
    ```

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

# BioTIMEr

<details>

* Version: 0.2.3
* GitHub: https://github.com/bioTIMEHub/BioTIMEr
* Source code: https://github.com/cran/BioTIMEr
* Date/Publication: 2024-07-31 04:50:02 UTC
* Number of recursive dependencies: 93

Run `revdepcheck::cloud_details(, "BioTIMEr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library("testthat")
      > library(dplyr)
      
      Attaching package: 'dplyr'
      
      The following object is masked from 'package:testthat':
      
    ...
       1. └─testthat::expect_equal(result$Shannon, shannon_expected, ignore_attr = FALSE) at test-metrics.R:41:3
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(ignore_attr = "waldo_opts")
       5.         └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 15 | PASS 13 ]
      Error: Test failures
      Execution halted
    ```

# constructive

<details>

* Version: 1.0.1
* GitHub: https://github.com/cynkra/constructive
* Source code: https://github.com/cran/constructive
* Date/Publication: 2024-07-07 09:40:02 UTC
* Number of recursive dependencies: 113

Run `revdepcheck::cloud_details(, "constructive")` for more info

</details>

## Newly broken

*   checking examples ... ERROR
    ```
    Running examples in ‘constructive-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: construct
    > ### Title: Build code to recreate an object
    > ### Aliases: construct construct_multi
    > 
    > ### ** Examples
    > 
    > construct(head(cars))
    ...
    Error in `waldo::compare()`:
    ! `ignore_attr` must be a TRUE or a character vector, not `FALSE`.
    Backtrace:
        ▆
     1. └─constructive::construct(head(cars))
     2.   └─constructive:::check_round_trip(...)
     3.     └─waldo::compare(ignore_attr = compare$ignore_attr)
     4.       └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
     5.         └─rlang::abort(message, ..., call = call, arg = arg)
    Execution halted
    ```

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(constructive)
      > 
      > test_check("constructive")
      [ FAIL 84 | WARN 0 | SKIP 12 | PASS 33 ]
      
      ══ Skipped tests (12) ══════════════════════════════════════════════════════════
    ...
          ▆
       1. └─constructive::construct(...)
       2.   └─constructive:::check_round_trip(...)
       3.     └─waldo::compare(ignore_attr = compare$ignore_attr)
       4.       └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       5.         └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 84 | WARN 0 | SKIP 12 | PASS 33 ]
      Error: Test failures
      Execution halted
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘extend-constructive.Rmd’ using rmarkdown
    
    Quitting from lines 47-52 [unnamed-chunk-2] (extend-constructive.Rmd)
    Error: processing vignette 'extend-constructive.Rmd' failed with diagnostics:
    `ignore_attr` must be a TRUE or a character vector, not `FALSE`.
    --- failed re-building ‘extend-constructive.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘extend-constructive.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘extend-constructive.Rmd’
      ...
    [1] "c("                                                                                                        
    [2] "  \"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\", \"j\", \"k\", \"l\", \"m\", \"n\", \"o\","
    [3] "  \"p\", \"q\", \"r\", \"s\", \"t\", \"u\", \"v\", \"w\", \"x\", \"y\", \"z\""                             
    [4] ")"                                                                                                         
    
    > construct(letters)
    
      When sourcing ‘extend-constructive.R’:
    Error: `ignore_attr` must be a TRUE or a character vector, not `FALSE`.
    Execution halted
    
      ‘extend-constructive.Rmd’ using ‘UTF-8’... failed
    ```

# covidcast

<details>

* Version: 0.5.2
* GitHub: https://github.com/cmu-delphi/covidcast
* Source code: https://github.com/cran/covidcast
* Date/Publication: 2023-07-12 23:40:06 UTC
* Number of recursive dependencies: 93

Run `revdepcheck::cloud_details(, "covidcast")` for more info

</details>

## Newly broken

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘multi-signals.Rmd’
      ...
    
    > signals <- covidcast_signals(data_source = "jhu-csse", 
    +     signal = c("confirmed_7dav_incidence_prop", "deaths_7dav_incidence_prop"), 
    +     star .... [TRUNCATED] 
    
      When sourcing ‘multi-signals.R’:
    Error: Rate limit exceeded when fetching data from API anonymously. See the "API keys" section of the `covidcast_signal()` documentation for information on registering for an API key.
    ...
    Error: Rate limit exceeded when fetching data from API anonymously. See the "API keys" section of the `covidcast_signal()` documentation for information on registering for an API key.
    ℹ Message from server:
    ℹ Rate limit exceeded for anonymous queries. To remove this limit, register a free API key at https://api.delphi.cmu.edu/epidata/admin/registration_form
    Execution halted
    
      ‘correlation-utils.Rmd’ using ‘UTF-8’... OK
      ‘covidcast.Rmd’ using ‘UTF-8’... OK
      ‘external-data.Rmd’ using ‘UTF-8’... OK
      ‘multi-signals.Rmd’ using ‘UTF-8’... failed
      ‘plotting-signals.Rmd’ using ‘UTF-8’... failed
    ```

*   checking re-building of vignette outputs ... NOTE
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘correlation-utils.Rmd’ using rmarkdown
    --- finished re-building ‘correlation-utils.Rmd’
    
    --- re-building ‘covidcast.Rmd’ using rmarkdown
    
    Quitting from lines 38-45 [unnamed-chunk-1] (covidcast.Rmd)
    Error: processing vignette 'covidcast.Rmd' failed with diagnostics:
    Rate limit exceeded when fetching data from API anonymously. See the "API keys" section of the `covidcast_signal()` documentation for information on registering for an API key.
    ℹ Message from server:
    ℹ Rate limit exceeded for anonymous queries. To remove this limit, register a free API key at https://api.delphi.cmu.edu/epidata/admin/registration_form
    --- failed re-building ‘covidcast.Rmd’
    
    --- re-building ‘external-data.Rmd’ using rmarkdown
    ```

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 20 marked UTF-8 strings
    ```

# crosstable

<details>

* Version: 0.8.0
* GitHub: https://github.com/DanChaltiel/crosstable
* Source code: https://github.com/cran/crosstable
* Date/Publication: 2024-09-30 21:00:02 UTC
* Number of recursive dependencies: 129

Run `revdepcheck::cloud_details(, "crosstable")` for more info

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
       1. └─testthat::expect_equal(ct_c, ct2, ignore_attr = FALSE) at test-methods.R:38:3
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(ignore_attr = "waldo_opts")
       5.         └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 2 | WARN 0 | SKIP 41 | PASS 335 ]
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

# ergm

<details>

* Version: 4.7.1
* GitHub: https://github.com/statnet/ergm
* Source code: https://github.com/cran/ergm
* Date/Publication: 2024-10-07 13:20:02 UTC
* Number of recursive dependencies: 88

Run `revdepcheck::cloud_details(, "ergm")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘requireNamespaceTest.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > #  File tests/testthat.R in package ergm, part of the
      > #  Statnet suite of packages for network analysis, https://statnet.org .
      > #
      > #  This software is distributed under the GPL-3 license.  It is free,
      > #  open source, and has the attribution requirements (GPL Section 7) at
      > #  https://statnet.org/attribution .
    ...
       2.   └─testthat::expect_equal(s, value, tolerance = tolerance, ignore_attr = is.null(names(value))) at tests/testthat/helper-expect-summary.R:11:3
       3.     └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       4.       └─testthat:::waldo_compare(...)
       5.         └─waldo::compare(ignore_attr = "waldo_opts")
       6.           └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       7.             └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 5 | WARN 2 | SKIP 0 | PASS 4191 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘ergm.Rmd’
      ...
    Obtaining the responsible dyads.
    Evaluating the predictor and response matrix.
    Maximizing the pseudolikelihood.
    Finished MPLE.
    Starting Monte Carlo maximum likelihood estimation (MCMLE):
    Iteration 1 of at most 60:
    
    ...
      When sourcing ‘ergm.R’:
    Error: Number of edges in a simulated network exceeds that in the observed by a factor of more than 20. This is a strong indicator of model degeneracy or a very poor starting parameter configuration. If you are reasonably certain that neither of these is the case, increase the MCMLE.density.guard control.ergm() parameter.
    Execution halted
    
      ‘Network-Callback-API.Rmd’ using ‘UTF-8’... OK
      ‘Proposal-Lookup-API.Rmd’ using ‘UTF-8’... OK
      ‘Terms-API.Rmd’ using ‘UTF-8’... OK
      ‘ergm-term-crossRef.Rmd’ using ‘UTF-8’... OK
      ‘ergm.Rmd’ using ‘UTF-8’... failed
      ‘nodal_attributes.Rmd’ using ‘UTF-8’... OK
    ```

*   checking installed package size ... NOTE
    ```
      installed size is  8.4Mb
      sub-directories of 1Mb or more:
        R      1.5Mb
        doc    1.8Mb
        help   1.6Mb
        libs   2.8Mb
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

# gpboost

<details>

* Version: 1.5.1.2
* GitHub: https://github.com/fabsig/GPBoost
* Source code: https://github.com/cran/gpboost
* Date/Publication: 2024-08-26 18:20:02 UTC
* Number of recursive dependencies: 35

Run `revdepcheck::cloud_details(, "gpboost")` for more info

</details>

## Newly broken

*   checking whether package ‘gpboost’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/tmp/workdir/gpboost/new/gpboost.Rcheck/00install.out’ for details.
    ```

## Newly fixed

*   checking installed package size ... NOTE
    ```
      installed size is 214.8Mb
      sub-directories of 1Mb or more:
        libs  213.9Mb
    ```

## Installation

### Devel

```
* installing *source* package ‘gpboost’ ...
** package ‘gpboost’ successfully unpacked and MD5 sums checked
** using staged installation
checking location of R... /opt/R/4.3.1/lib/R
checking whether MM_PREFETCH works... yes
checking whether MM_MALLOC works... yes
configure: creating ./config.status
config.status: creating src/Makevars
** libs
using C compiler: ‘gcc (Ubuntu 13.2.0-23ubuntu4) 13.2.0’
...
./include/GPBoost/re_model_template.h:1308:6:   required from ‘void GPBoost::REModelTemplate<T_mat, T_chol>::OptimLinRegrCoefCovPar(const double*, const double*, int, double*, double*, int&, double*, double*, double*, double*, bool, const double*, bool, bool, bool) [with T_mat = Eigen::SparseMatrix<double>; T_chol = Eigen::SimplicialLLT<Eigen::SparseMatrix<double>, 1, Eigen::AMDOrdering<int> >]’
re_model.cpp:362:40:   required from here
./include/Eigen/src/Core/CoreEvaluators.h:1064:54: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
 1064 |     PacketAlignment = unpacket_traits<PacketScalar>::alignment,
      |                                                      ^~~~~~~~~
g++: fatal error: Killed signal terminated program cc1plus
compilation terminated.
make: *** [/opt/R/4.3.1/lib/R/etc/Makeconf:200: re_model.o] Error 1
ERROR: compilation failed for package ‘gpboost’
* removing ‘/tmp/workdir/gpboost/new/gpboost.Rcheck/gpboost’


```
### CRAN

```
* installing *source* package ‘gpboost’ ...
** package ‘gpboost’ successfully unpacked and MD5 sums checked
** using staged installation
checking location of R... /opt/R/4.3.1/lib/R
checking whether MM_PREFETCH works... yes
checking whether MM_MALLOC works... yes
configure: creating ./config.status
config.status: creating src/Makevars
** libs
using C compiler: ‘gcc (Ubuntu 13.2.0-23ubuntu4) 13.2.0’
...
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* DONE (gpboost)


```
# ijtiff

<details>

* Version: 2.3.4
* GitHub: https://github.com/ropensci/ijtiff
* Source code: https://github.com/cran/ijtiff
* Date/Publication: 2023-12-13 05:00:02 UTC
* Number of recursive dependencies: 97

Run `revdepcheck::cloud_details(, "ijtiff")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘spelling.R’
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(ijtiff)
      > 
      > test_check("ijtiff")
      NULL
      [ FAIL 7 | WARN 56 | SKIP 6 | PASS 67 ]
    ...
      
      [ FAIL 7 | WARN 56 | SKIP 6 | PASS 67 ]
      Deleting unused snapshots:
      • graphics/r-logo-banana-red.svg
      • graphics/raster-grey-r-logo-blue-channel.svg
      • graphics/raster-grey-r-logo.svg
      • graphics/raster-r-logo-green-channel.svg
      • graphics/reduced-resolution-basic-r-logo.svg
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
       6.           └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       7.             └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 2 | PASS 149 ]
      Error: Test failures
      Execution halted
    ```

# MachineShop

<details>

* Version: 3.8.0
* GitHub: https://github.com/brian-j-smith/MachineShop
* Source code: https://github.com/cran/MachineShop
* Date/Publication: 2024-08-19 17:40:16 UTC
* Number of recursive dependencies: 231

Run `revdepcheck::cloud_details(, "MachineShop")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  5.2Mb
      sub-directories of 1Mb or more:
        R   3.5Mb
    ```

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘rms’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Unknown package ‘rms’ in Rd xrefs
    ```

# manymome

<details>

* Version: 0.2.4
* GitHub: https://github.com/sfcheung/manymome
* Source code: https://github.com/cran/manymome
* Date/Publication: 2024-10-04 13:40:02 UTC
* Number of recursive dependencies: 158

Run `revdepcheck::cloud_details(, "manymome")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(manymome)
      > 
      > test_check("manymome")
      Starting 2 test processes
      [ FAIL 2 | WARN 0 | SKIP 38 | PASS 520 ]
      
    ...
       1. └─testthat::expect_equal(out_sum, out_sum_chk, ignore_attr = FALSE) at test_summary_lm_list.R:22:5
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(ignore_attr = "waldo_opts")
       5.         └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 2 | WARN 0 | SKIP 38 | PASS 520 ]
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

Run `revdepcheck::cloud_details(, "mcmcr")` for more info

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
      [ FAIL 14 | WARN 11 | SKIP 3 | PASS 386 ]
      
      ══ Skipped tests (3) ═══════════════════════════════════════════════════════════
    ...
       5.         └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 14 | WARN 11 | SKIP 3 | PASS 386 ]
      Deleting unused snapshots:
      • converged/converged.csv
      • ess/ess.csv
      • estimates/estimates.csv
      Error: Test failures
      Execution halted
    ```

# mizer

<details>

* Version: 2.5.3
* GitHub: https://github.com/sizespectrum/mizer
* Source code: https://github.com/cran/mizer
* Date/Publication: 2024-10-17 07:10:09 UTC
* Number of recursive dependencies: 110

Run `revdepcheck::cloud_details(, "mizer")` for more info

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
      • plots/plot-feeding-level.svg
      • plots/plot-single-growth-curve.svg
      • plots/plot-spectra.svg
      • plots/plot-yield-by-gear.svg
      • plots/plot-yield.svg
      • plots/plotfishing-mortality.svg
      • plots/plotfmort-truncated.svg
      • plots/plotpredation-mortality.svg
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.5Mb
      sub-directories of 1Mb or more:
        help   1.8Mb
    ```

# OpenSpecy

<details>

* Version: 1.2.0
* GitHub: https://github.com/wincowgerDEV/OpenSpecy-package
* Source code: https://github.com/cran/OpenSpecy
* Date/Publication: 2024-09-14 02:20:02 UTC
* Number of recursive dependencies: 114

Run `revdepcheck::cloud_details(, "OpenSpecy")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(OpenSpecy)
      > 
      > library(data.table)
      > setDTthreads(2)
      > 
      > test_check("OpenSpecy")
    ...
       1. └─testthat::expect_equal(...) at test-subtr_baseline.R:27:3
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(ignore_attr = "waldo_opts")
       5.         └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 4 | WARN 0 | SKIP 6 | PASS 454 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        doc   4.1Mb
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘osfr’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 10 marked UTF-8 strings
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

# PKNCA

<details>

* Version: 0.11.0
* GitHub: https://github.com/billdenney/pknca
* Source code: https://github.com/cran/PKNCA
* Date/Publication: 2024-06-19 13:00:06 UTC
* Number of recursive dependencies: 98

Run `revdepcheck::cloud_details(, "PKNCA")` for more info

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
      > # * https://r-pkgs.org/tests.html
    ...
       1. └─testthat::expect_equal(...) at test-class-PKNCAdata.R:55:3
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(ignore_attr = "waldo_opts")
       5.         └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1658 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘v03-selection-of-calculation-intervals.Rmd’
      ...
    
    > library(ggplot2)
    
    > source("../tests/testthat/generate.data.R")
    Warning in file(filename, "r", encoding = encoding) :
      cannot open file '../tests/testthat/generate.data.R': No such file or directory
    
    ...
      ‘v07-unit-conversion.Rmd’ using ‘UTF-8’... OK
      ‘v08-data-imputation.Rmd’ using ‘UTF-8’... OK
      ‘v20-superposition.Rmd’ using ‘UTF-8’... OK
      ‘v21-methods-for-dose-aware-interpolation-and-extrapolation.Rmd’ using ‘UTF-8’... OK
      ‘v22-time-to-steady-state.Rmd’ using ‘UTF-8’... OK
      ‘v23-auc-integration-methods.Rmd’ using ‘UTF-8’... OK
      ‘v30-training-session.Rmd’ using ‘UTF-8’... OK
      ‘v40-options-for-controlling-PKNCA.Rmd’ using ‘UTF-8’... OK
      ‘v60-PKNCA-validation.Rmd’ using ‘UTF-8’... OK
      ‘v80-writing-parameter-functions.Rmd’ using ‘UTF-8’... OK
    ```

# portalr

<details>

* Version: 0.4.3
* GitHub: https://github.com/weecology/portalr
* Source code: https://github.com/cran/portalr
* Date/Publication: 2024-09-23 23:20:03 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::cloud_details(, "portalr")` for more info

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
      > # * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
      > # * https://testthat.r-lib.org/articles/special-files.html
    ...
       4. │   └─... %>% ...
       5. ├─base::as.data.frame(.)
       6. ├─tidyr::complete(., !!!grouping, fill = list(presence = 0))
       7. ├─dplyr::mutate(., presence = 1)
       8. ├─dplyr::distinct(.)
       9. └─dplyr::select(., dplyr::all_of(vars_to_keep))
      
      [ FAIL 12 | WARN 42 | SKIP 44 | PASS 11 ]
      Error: Test failures
      Execution halted
    ```

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘rodent-abundance-demo.Rmd’
      ...
    Warning in load_datafile(file.path("Rodents", "moon_dates.csv"), na.strings = "NA",  :
      Proceeding to download data into specified path/tmp/Rtmp1paoKS
    
    Warning in load_datafile(file.path("SiteandMethods", "Portal_plots.csv"),  :
      Proceeding to download data into specified path/tmp/Rtmp1paoKS
    
    
      When sourcing ‘rodent-abundance-demo.R’:
    Error: no applicable method for 'rename' applied to an object of class "c('simpleWarning', 'warning', 'condition')"
    Execution halted
    
      ‘portal_researcher_examples.Rmd’ using ‘UTF-8’... OK
      ‘rodent-abundance-demo.Rmd’ using ‘UTF-8’... failed
    ```

# readr

<details>

* Version: 2.1.5
* GitHub: https://github.com/tidyverse/readr
* Source code: https://github.com/cran/readr
* Date/Publication: 2024-01-10 23:20:02 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::cloud_details(, "readr")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘first_edition.R’
    Running the tests in ‘tests/first_edition.R’ failed.
    Complete output:
      > library(testthat)
      > library(readr)
      
      Attaching package: 'readr'
      
      The following objects are masked from 'package:testthat':
      
    ...
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(ignore_attr = "waldo_opts")
       5.         └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 1 | WARN 1 | SKIP 34 | PASS 717 ]
      Error: Test failures
      Execution halted
      Ran 1/1 deferred expressions
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.4Mb
      sub-directories of 1Mb or more:
        libs   6.4Mb
    ```

# rix

<details>

* Version: 0.12.4
* GitHub: https://github.com/ropensci/rix
* Source code: https://github.com/cran/rix
* Date/Publication: 2024-10-02 20:20:05 UTC
* Number of recursive dependencies: 51

Run `revdepcheck::cloud_details(, "rix")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(rix)
      > 
      > test_check("rix")
      
      ### Bootstrapping isolated, project-specific, and runtime-pure R setup via Nix ###
      
    ...
       1. ├─base::system(paste0("sed -i 's/", frozen_edge_commit, "/REVISION/' _snaps/rix/frozen_edge_default.nix")) at test-rix.R:392:7
       2. └─base::paste0("sed -i 's/", frozen_edge_commit, "/REVISION/' _snaps/rix/frozen_edge_default.nix")
      
      [ FAIL 2 | WARN 0 | SKIP 24 | PASS 12 ]
      Deleting unused snapshots:
      • rix/code_default.nix
      • rix/yes_quarto_default.nix
      • rix_init/append_Rprofile.txt
      Error: Test failures
      Execution halted
    ```

# rsat

<details>

* Version: 0.1.21
* GitHub: https://github.com/ropensci/rsat
* Source code: https://github.com/cran/rsat
* Date/Publication: 2024-02-03 14:30:02 UTC
* Number of recursive dependencies: 136

Run `revdepcheck::cloud_details(, "rsat")` for more info

</details>

## Newly broken

*   checking installed package size ... NOTE
    ```
      installed size is  6.0Mb
      sub-directories of 1Mb or more:
        R      3.5Mb
        data   1.5Mb
    ```

## In both

*   checking running R code from vignettes ... ERROR
    ```
    Errors in running code in vignettes:
    when running code in ‘rsat1_search.Rmd’
      ...
    > plot(rcd[1:6], region = ex.navarre, tm.polygon.region.border.col = "red", 
    +     tm.polygon.region.alpha = 0, compass.rm = T, scale.bar.rm = T)
    It may take a while to download the previews.
    
    > ip <- st_sf(st_as_sfc(st_bbox(c(xmin = -9.755859, 
    +     xmax = 4.746094, ymin = 35.91557, ymax = 44.02201), crs = 4326)))
    
    ...
    +     xmax = 4.746094, ymin = 35.91557, ymax = 44.02201), crs = 4326)))
    
      When sourcing ‘rsat3_customize.R’:
    Error: could not find function "st_sf"
    Execution halted
    
      ‘rsat1_search.Rmd’ using ‘UTF-8’... failed
      ‘rsat2_download.Rmd’ using ‘UTF-8’... failed
      ‘rsat3_customize.Rmd’ using ‘UTF-8’... failed
      ‘rsat4_process.Rmd’ using ‘UTF-8’... OK
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

# valr

<details>

* Version: 0.8.2
* GitHub: https://github.com/rnabioco/valr
* Source code: https://github.com/cran/valr
* Date/Publication: 2024-08-30 22:10:03 UTC
* Number of recursive dependencies: 176

Run `revdepcheck::cloud_details(, "valr")` for more info

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
       1. └─testthat::expect_equal(res, c, ignore_attr = FALSE) at test_subtract.r:202:3
       2.   └─testthat:::expect_waldo_equal("equal", act, exp, info, ..., tolerance = tolerance)
       3.     └─testthat:::waldo_compare(...)
       4.       └─waldo::compare(ignore_attr = "waldo_opts")
       5.         └─waldo:::stop_input_type(ignore_attr, "a TRUE or a character vector")
       6.           └─rlang::abort(message, ..., call = call, arg = arg)
      
      [ FAIL 2 | WARN 0 | SKIP 4 | PASS 478 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 15.1Mb
      sub-directories of 1Mb or more:
        libs  13.9Mb
    ```

# wru

<details>

* Version: 3.0.3
* GitHub: https://github.com/kosukeimai/wru
* Source code: https://github.com/cran/wru
* Date/Publication: 2024-05-24 18:00:02 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::cloud_details(, "wru")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(wru)
      
      Please cite as:
      
      Khanna K, Bertelsen B, Olivella S, Rosenman E, Rossell Hayes A, Imai K
      (2024). _wru: Who are You? Bayesian Prediction of Racial Category Using
    ...
      Backtrace:
          ▆
       1. └─wru::predict_race(...) at test-predict_race_2010.R:188:3
       2.   └─wru:::predict_race_new(...)
       3.     └─base::readRDS(paste0(path, "/wru-data-first_c.rds"))
       4.       └─base::gzfile(file, "rb")
      
      [ FAIL 1 | WARN 1 | SKIP 23 | PASS 10 ]
      Error: Test failures
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.9Mb
      sub-directories of 1Mb or more:
        data   4.0Mb
        help   2.0Mb
        libs   1.7Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘future’ ‘tidyr’
      All declared Imports should be used.
    ```

