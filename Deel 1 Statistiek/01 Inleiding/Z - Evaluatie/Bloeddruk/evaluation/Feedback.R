context({
  testcaseAssert("De variabele dia_druk bestaat.", function(env) {
    isTRUE(exists("dia_druk", env))
  })
  testcaseAssert("De variabele gem_druk bestaat.", function(env) {
    isTRUE(exists("gem_druk", env))
  })
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("dia_druk", function(env) {
      env$dia_druk
    }, 101.14)
    testEqual("gem_druk", function(env) {
      env$gem_druk
    }, 122.54)
  })
})
context({
  testcase("Resultaat werd correct berekend:", {
    testEqual("De systolische bloeddruk is bij benadering:", function(env) {
      env$evaluationResult
    }, 165.34)
    testFunctionUsed("round")
  })
})
