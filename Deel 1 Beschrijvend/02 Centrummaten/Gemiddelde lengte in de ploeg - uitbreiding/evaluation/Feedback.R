context({
  testcase("Gemiddeldes werden correct berekend:", {
    testEqual("gemiddelde_mannen", function(env) {
      env$gemiddelde_mannen
    }, 197)
    testEqual("gemiddelde_vrouwen", function(env) {
      env$gemiddelde_vrouwen
    }, 182)
  })
  testcase("", {
    testEqual("Je hebt geen variabele som meer:", function(env) {
      !exists("som")
    }, TRUE)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsed("sum")
    testFunctionUsed("length")
  })
})
