context({
  testcaseAssert("De variabele leeftijden bestaat.", function(env) {
    isTRUE(exists("leeftijden", env))
  })
  testcase("Variabele werd correct gedeclareerd:", {
    testEqual("leeftijden", function(env) {
      env$leeftijden
    }, c(2, 4, 6, 8, 10))
  })
})
context({
  testcase("Resultaat werd correct berekend:", {
    testEqual("Schattingen van de lengtes bij 2, 4, 6, 8 en 10 jaar", function(env) {
      env$evaluationResult
    }, c(104.984, 162.936, 187.456, 178.544, 136.2))
  })
})