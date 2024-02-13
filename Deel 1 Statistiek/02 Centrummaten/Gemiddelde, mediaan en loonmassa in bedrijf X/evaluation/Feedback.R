context({
  testcase("De variabelen werden correct berekend:", {
    testEqual("totaal_loon", function(env) {
      sum(env$totaal_loon)
    }, 64400)
    testFunctionUsedInVar("sum", "totaal_loon")
    testEqual("gemiddeld_loon", function(env) {
      mean(env$gemiddeld_loon)
    }, 4293.33333333333)
    testFunctionUsedInVar("mean", "gemiddeld_loon")
    testEqual("mediaan_loon)", function(env) {
      median(env$mediaan_loon)
    }, 4100)
    testFunctionUsedInVar("median", "mediaan_loon")
  })
})
