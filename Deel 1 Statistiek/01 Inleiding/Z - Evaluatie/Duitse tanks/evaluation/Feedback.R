context({
  testcaseAssert("De variabele serienummers bestaat.", function(env) {
    isTRUE(exists("serienummers", env))
  })
  testcase("Variabelen werden serienummers gedeclareerd:", {
    testEqual("serienummers", function(env) {
      env$serienummers
    }, c(3, 117, 21, 30, 87))
  })
})
context({
  testcaseAssert("De variabele m bestaat.", function(env) {
    isTRUE(exists("m", env))
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("m", function(env) {
      env$m
    }, 117)
    testFunctionUsedInVar("max", "m")
  })
})

context({
  testcaseAssert("De variabele k bestaat.", function(env) {
    isTRUE(exists("k", env))
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("k", function(env) {
      env$k
    }, 5)
    testFunctionUsedInVar("length", "k")
  })
})

context({
  testcase("Resultaat werd correct berekend:", {
    testEqual("Het aantal tanks werd geschat op:", function(env) {
      env$evaluationResult
    }, 139)
    testFunctionUsed("round")
  })
})
