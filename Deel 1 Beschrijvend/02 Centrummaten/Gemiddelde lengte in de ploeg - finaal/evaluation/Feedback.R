context({
  testcase("Gemiddeldes werden correct berekend:", {
    testEqual("gemiddelde_mannen", function(env) {
      env$gemiddelde_mannen
    }, 197)
    testEqual("gemiddelde_vrouwen", function(env) {
      env$gemiddelde_vrouwen
    }, 182)
  })
  testcase("De volgende functie werden gebruikt:", {
    testFunctionUsed("mean")
  })
  testcaseAssert("De variabele som bestaat niet meer:", function(env) {
    isFALSE(exists("som", env))
  })
})
