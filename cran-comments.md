## R CMD check results

0 errors | 0 warnings | 0 note

## revdepcheck results

Because waldo is primarily used by testthat, I checked all ~6000 testthat dependencies. This generated a number of failures but as far as I could tell, none of the failures used testthat 3e, which is the only scenario in which waldo should be used by default.
