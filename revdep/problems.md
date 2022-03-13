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
       14.               └─waldo:::compare_structure(...)
       15.                 └─waldo:::compare_by_fun(x, y, paths, opts)
       16.                   └─waldo:::compare_structure(...)
       17.                     └─waldo:::compare_structure(x_fields, y_fields, paths, opts = opts)
       18.                       └─waldo:::compare_by_name(x, y, paths, opts)
       19.                         └─waldo:::compare_structure(...)
       20.                           └─waldo:::compare_structure(x_fields, y_fields, paths, opts = opts)
       21.                             └─waldo:::compare_by_name(x, y, paths, opts)
       22.                               └─waldo:::compare_structure(...)
       23.                                 ├─base::as.list(x, all.names = TRUE)
       24.                                 └─base::as.list.default(x, all.names = TRUE)
      
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

