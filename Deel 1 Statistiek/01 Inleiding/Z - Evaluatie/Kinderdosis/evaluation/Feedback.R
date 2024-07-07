context({
  testcaseAssert("De variabele kind_dosis bestaat.", function(env) {
    isTRUE(exists("kind_dosis", env))
  })
  testcaseAssert("De variabele leeftijd bestaat.", function(env) {
    isTRUE(exists("leeftijd", env))
  })
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("kind_dosis", function(env) {
      env$kind_dosis
    }, 400)
    testEqual("leeftijd", function(env) {
      env$leeftijd
    }, 8.5)
  })
})
context({
  testcase("Resultaat werd correct berekend:", {
    testEqual("De dosis voor een volwassene is bij benadering:", function(env) {
      env$evaluationResult
    }, 964.71)
    testFunctionUsed("round")
  })
})


