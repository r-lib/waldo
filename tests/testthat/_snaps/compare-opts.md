# other arguments are ignored with a warning

    Code
      compare(1, 1, 1)
    Condition
      Warning:
      Unused arguments (1)
    Output
      v No differences

---

    Code
      compare(1, 1, abc = 1)
    Condition
      Warning:
      Unused arguments (abc = 1)
    Output
      v No differences

---

    Code
      compare(1, 1, abc = 1, xyz = 2)
    Condition
      Warning:
      Unused arguments (abc = 1, xyz = 2)
    Output
      v No differences

