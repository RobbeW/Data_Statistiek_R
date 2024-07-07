context({
  testcaseAssert("De variabele n bestaat.", function(env) {
    isTRUE(exists("n", env))
  })
  testcaseAssert("De variabele s bestaat.", function(env) {
    isTRUE(exists("s", env))
  })
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("n", function(env) {
      env$n
    }, 75)
    testEqual("s", function(env) {
      env$s
    }, 10)
  })
})

context({
  testcase("Resultaat werd correct berekend:", {
    testEqual("De populatie is bij benadering", function(env) {
      env$evaluationResult
    }, 240)
  })
})