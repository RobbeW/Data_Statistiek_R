context({
  testcaseAssert("De variabele kind_dosis bestaat.", function(env) {
    isTRUE(exists("kind_dosis", env))
  })
  testcaseAssert("De variabele leeftijd bestaat.", function(env) {
    isTRUE(exists("leeftijd", env))
  })
  testcaseAssert("De variabele volwassen_dosis bestaat.", function(env) {
    isTRUE(exists("volwassen_dosis", env))
  })
})
context({
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
  testcase("Variabele werd correct berekend:", {
    testEqual("volwassen_dosis", function(env) {
      env$volwassen_dosis
    }, 964.71)
    testFunctionUsedInVar("round", "volwassen_dosis")
  })
})


