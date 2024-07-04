context({
  testcaseAssert("De variabele VO2max bestaat.", function(env) {
    isTRUE(exists("VO2max", env))
  })
  testcaseAssert("De variabele HR_max bestaat.", function(env) {
    isTRUE(exists("HR_max", env))
  })
})
context({
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("VO2max", function(env) {
      env$VO2max
    }, 52.3)
    testEqual("HR_max", function(env) {
      env$HR_max
    }, 183)
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("HR_rust", function(env) {
      env$evaluationResult
    }, 52.49)
    testFunctionUsed("round")
  })
})