context({
  testcaseAssert("De variabele aantal_waterstanden bestaat.", function(env) {
    isTRUE(exists("aantal_waterstanden", env))
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("aantal_waterstanden", function(env) {
      env$aantal_waterstanden
    }, 133)
    testFunctionUsedInVar("length", "aantal_waterstanden")
  })
})
context({
  testcaseAssert("De variabele max_in_cm bestaat.", function(env) {
    isTRUE(exists("max_in_cm", env))
  })
  testcase("Variabele werd correct omgevormd:", {
    testEqual("max_in_cm", function(env) {
      env$max_in_cm
    }, c(94, 90, 97, 107, 87, 86, 94, 67, 105, 115, 97, 103, 90, 98, 
101, 83, 130, 97, 100, 118, 89, 77, 95, 115, 95, 87, 95, 114, 
99, 136, 107, 82, 106, 111, 65, 106, 105, 70, 96, 94, 111, 110, 
90, 100, 103, 78, 121, 116, 115, 147, 119, 114, 89, 102, 99, 
91, 97, 106, 105, 136, 126, 132, 104, 117, 151, 116, 107, 112, 
97, 95, 119, 124, 118, 145, 122, 114, 118, 107, 110, 194, 138, 
144, 138, 123, 122, 120, 114, 96, 125, 124, 120, 132, 166, 134, 
138, 135, 122, 119, 124, 159, 137, 103, 102, 128, 127, 142, 123, 
111, 112, 134, 126, 124, 121, 144, 124, 147, 109, 137, 132, 112, 
109, 156, 145, 136, 112, 149, 143, 125, 124, 121, 127, 156, 187))
  })
})
context({
  testcaseAssert("De variabele lichte_overstroming bestaat.", function(env) {
    isTRUE(exists("lichte_overstroming", env))
  })
  testcaseAssert("De variabele jaren_lichte_overstroming bestaat.",
    function(env) {
      isTRUE(exists("jaren_lichte_overstroming", env))
    })
  testcase("Variabelen werden correct berekend:", {
    testEqual("lichte_overstroming", function(env){
      env$lichte_overstroming
    }, c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, 
TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, 
TRUE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE, 
FALSE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, 
FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, 
FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, 
FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, 
FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, 
FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, 
FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 
TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, 
TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 
TRUE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE, 
FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE))
    testEqual("jaren_lichte_overstroming", function(env) {
      env$jaren_lichte_overstroming
    }, c(1890, 1895, 1896, 1898, 1901, 1905, 1906, 1910, 1914, 1917,
1919, 1920, 1922, 1923, 1927, 1928, 1930, 1931, 1934, 1935, 1937,
1938, 1940, 1944, 1945, 1949, 1950, 1952, 1953, 1954, 1957, 1959,
1962, 1963, 1964, 1965, 1972, 1973, 1977, 1984, 1988, 1989, 1994,
1995, 2003, 2006, 2007, 2011))
  })
})
context({
  testcaseAssert("De variabele jaren_hoge_overstroming bestaat.",
    function(env) {
      isTRUE(exists("jaren_hoge_overstroming", env))
    })
  testcase("Variabele werd correct berekend:", {
    testEqual("jaren_hoge_overstroming", function(env) {
      env$jaren_hoge_overstroming
    }, c(1966, 1979, 2019))
  })
})