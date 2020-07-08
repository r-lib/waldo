# waldo (development version)

* `compare_proxy()` is now exported so that you can provide methods if your
  objects need special handling (particularly needed for objects that contain
  external pointers) (#22).

* A trailing newline is no longer ignored when comparing strings (#37).

# waldo 0.1.0

* Added a `NEWS.md` file to track changes to the package.
