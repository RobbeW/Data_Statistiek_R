context({
  testcase("Gemiddelde lengte van de mannen werd correct berekend:", {
    testEqual("gemiddelde_mannen", function(env) {
      env$gemiddelde_mannen
    }, 197)
  })
  testcaseAssert("De variabele som bestaat niet meer:", function(env) {
    isTRUE(!exists("som", env))
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsedInVar("sum", "gemiddelde_mannen")
    testFunctionUsedInVar("length", "gemiddelde_mannen")
  })
})

context({
  testcase("Gemiddelde lengte van de vrouwen werd correct berekend:", {
    testEqual("gemiddelde_vrouwen", function(env) {
      env$gemiddelde_vrouwen
    }, 182)
  })
  testcaseAssert("De variabele som bestaat niet meer:", function(env) {
    isTRUE(!exists("som", env))
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsedInVar("sum", "gemiddelde_vrouwen")
    testFunctionUsedInVar("length", "gemiddelde_vrouwen")
  })
})