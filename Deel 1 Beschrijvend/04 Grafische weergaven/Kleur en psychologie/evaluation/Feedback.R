contextWithImage({
  testcaseAssert("De variabele percentages bestaat.", function(env) {
    isTRUE(exists("percentages", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("percentages", function(env) {
      env$percentages
    }, c(38, 2, 2, 5, 4, 42, 4, 3))
  })
})


  