# waldo 0.2.0

* All objects: class (#26) and names (#31) are ignored when ignoring attributes.

* Numeric and logical vectors: clearer display of differences. Numbers 
  are right-aligned, and we show the numbers not the differences.
  
* Character vectors: a trailing newline is no longer ignored (#37).

* Lists: all elements of the unnamed lists are compared, not just the last! (#32)

* Lists: unclassed prior to comparison (#21).

* Data frames: The internal representation of row names is no longer used; 
  instead we use the same result of `rownames()` (#23).

* Environments: New `ignore_formula_env` and `ignore_function_env` arguments to 
  ignore formula and function environments for compatibility with `all.equal()`
  (#24).

* Expression objects: can now be compared (#29).

* Calls: srcrefs and attributes are ignored.

---

* `compare_proxy()` is now exported so that you can provide methods if your
  objects need special handling (particularly needed for objects that contain
  external pointers) (#22).

* Fixed a partial argument name in `as.list()`.

# waldo 0.1.0

* Added a `NEWS.md` file to track changes to the package.
