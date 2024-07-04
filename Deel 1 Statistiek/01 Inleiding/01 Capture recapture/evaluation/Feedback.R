context({
  testcaseAssert("De variabele t bestaat.", function(env) {
    isTRUE(exists("t", env))
  })
  testcaseAssert("De variabele n bestaat.", function(env) {
    isTRUE(exists("n", env))
  })
  testcaseAssert("De variabele s bestaat.", function(env) {
    isTRUE(exists("s", env))
  })
})
context({
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("n", function(env) {
      env$n
    }, 75)
    testEqual("s", function(env) {
      env$s
    }, 10)
  })
  testcase("Populatie werd correct geschat:", {
    testEqual("Resultaat", function(env) {
      env$evaluationResult
    }, 240)
  })
})