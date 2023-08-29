context({
  testcase("Gemiddeldes werden correct berekend:", {
    testEqual("gemiddelde_mannen", function(env) {
      env$gemiddelde_mannen
    }, 197)
    testEqual("gemiddelde_vrouwen", function(env) {
      env$gemiddelde_vrouwen
    }, 182)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsed("for")
    testFunctionUsed("length")
  })
})
