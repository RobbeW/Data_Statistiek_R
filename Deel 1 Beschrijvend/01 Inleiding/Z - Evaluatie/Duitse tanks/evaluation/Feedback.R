context({
  testcaseAssert("De variabele serienummers bestaat.", function(env) {
    isTRUE(exists("serienummers", env))
  })
  testcaseAssert("De variabele m bestaat.", function(env) {
    isTRUE(exists("m", env))
  })
  testcaseAssert("De variabele k bestaat.", function(env) {
    isTRUE(exists("k", env))
  })
  testcaseAssert("De variabele schatting bestaat.", function(env) {
    isTRUE(exists("schatting", env))
  })
})
context({
  testcase("Variabelen werden serienummers gedeclareerd:", {
    testEqual("serienummers", function(env) {
      env$serienummers
    }, c(3, 117, 21, 30, 87))
  })
})
context({
  testcase("Variabelen werd correct berekend:", {
    testEqual("m", function(env) {
      env$m
    }, 117)
    testFunctionUsedInVar("max", "m")
    testEqual("k", function(env) {
      env$k
    }, 5)
    testFunctionUsedInVar("length", "k")
  })
})
context({
  testcase("Schatting werd correct berekend:", {
    testEqual("schatting", function(env) {
      env$schatting
    }, 139)
    testFunctionUsedInVar("round", "schatting")
  })
})
