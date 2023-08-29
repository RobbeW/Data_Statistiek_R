context({
  testcase("Gemiddeldes werden correct berekend:", {
    testEqual("gemiddelde_mannen", function(env) {
      env$gemiddelde_mannen
    }, 197)
    testEqual("gemiddelde_vrouwen", function(env) {
      env$gemiddelde_vrouwen
    }, 182)
  })
  testcase("Je hebt geen variabele som meer:", {
    testEqual("", function(env) {
      !exists("som")
    }, TRUE)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsed("sum")
    testFunctionUsed("length")
  })
})
