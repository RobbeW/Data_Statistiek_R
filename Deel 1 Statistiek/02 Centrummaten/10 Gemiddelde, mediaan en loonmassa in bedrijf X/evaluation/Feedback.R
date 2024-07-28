context({
  testcaseAssert("De variabele totaal_loon bestaat.", function(env) {
    isTRUE(exists("totaal_loon", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("totaal_loon", function(env) {
      sum(env$totaal_loon)
    }, 64400)
    testFunctionUsedInVar("sum", "totaal_loon")
  })
})

context({
  testcaseAssert("De variabele gemiddeld_loon bestaat.", function(env) {
    isTRUE(exists("gemiddeld_loon", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gemiddeld_loon", function(env) {
      mean(env$gemiddeld_loon)
    }, 4293.33333333333)
    testFunctionUsedInVar("mean", "gemiddeld_loon")
  })
})

context({
  testcaseAssert("De variabele mediaan_loon bestaat.", function(env) {
    isTRUE(exists("mediaan_loon", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("mediaan_loon)", function(env) {
      median(env$mediaan_loon)
    }, 4100)
    testFunctionUsedInVar("median", "mediaan_loon")
  })
})
