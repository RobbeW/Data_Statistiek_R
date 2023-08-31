context({
  testcase("De variabelen werden correct aangemaakt:", {
    testEqual("data", function(env) {
      env$data
    }, c(11, 8, 7, 9, 12, 14, 10, 7, 15, 9, 8, 12, 9, 11, 10, 1000, 14, 15, 8))
    testEqual("data_correct", function(env) {
      env$data_correct
    }, c(11, 8, 7, 9, 12, 14, 10, 7, 15, 9, 8, 12, 9, 11, 10, 10, 14, 15, 8))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("gemiddelde", function(env) {
      env$gemiddelde
    }, 62.5789473684211)
    testFunctionUsedInVar("mean", "gemiddelde")
    testEqual("mediaan", function(env) {
      env$mediaan
    }, 10)
    testFunctionUsedInVar("median", "mediaan")
    testEqual("correctie", function(env) {
      env$correctie
    }, 10.4736842105263)
    testFunctionUsedInVar("mean", "correctie")
  })
})
