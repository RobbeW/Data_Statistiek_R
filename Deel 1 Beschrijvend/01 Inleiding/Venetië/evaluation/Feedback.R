context({
  testcaseAssert("De variabele aantal_waterstanden bestaat:", function(env) {
    isTRUE(exists("aantal_waterstanden", env))
  })
  testcaseAssert("De variabele max_in_cm bestaat:", function(env) {
    isTRUE(exists("max_in_cm", env))
  })
  testcaseAssert("De variabele lichte_overstroming bestaat:", function(env) {
    isTRUE(exists("lichte_overstroming", env))
  })
  testcaseAssert("De variabele jaren_lichte_overstroming bestaat:", function(env) {
    isTRUE(exists("jaren_lichte_overstroming", env))
  })
  testcaseAssert("De variabele jaren_hoge_overstroming bestaat:", function(env) {
    isTRUE(exists("jaren_hoge_overstroming", env))
  })
})
context({
  testcase("Variabelen werden correct berekend:", {
    testEqual("aantal_waterstanden", function(env) {
      env$aantal_waterstanden
    }, 133)
    testFunctionUsedInVar("length", "aantal_waterstanden")
    testEqual("max_in_cm", function(env) {
      c(env$max_in_cm[1], env$max_in_cm[50], env$max_in_cm[133])
    }, c(94, 147, 187))
    testEqual("jaren_lichte_overstroming", function(env) {
      env$jaren_lichte_overstroming
    }, c(1890, 1895, 1896, 1898, 1901, 1905, 1906, 1910, 1914, 1917,
1919, 1920, 1922, 1923, 1927, 1928, 1930, 1931, 1934, 1935, 1937,
1938, 1940, 1944, 1945, 1949, 1950, 1952, 1953, 1954, 1957, 1959,
1962, 1963, 1964, 1965, 1972, 1973, 1977, 1984, 1988, 1989, 1994,
1995, 2003, 2006, 2007, 2011))
    testEqual("jaren_hoge_overstroming", function(env) {
      env$jaren_hoge_overstroming
    }, c(1966, 1979, 2019))
  })
})