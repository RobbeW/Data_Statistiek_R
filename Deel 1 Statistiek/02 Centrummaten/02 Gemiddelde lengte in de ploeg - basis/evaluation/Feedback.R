context({
  testcase("Gemiddelde lengte van de mannen werd correct berekend:", {
    testEqual("gemiddelde_mannen", function(env) {
      env$gemiddelde_mannen
    }, 197)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsed("for")
    testFunctionUsed("length")
  })
})

context({
  testcase("Gemiddeldes lengte van de vrouwen werd correct berekend:", {
    testEqual("gemiddelde_vrouwen", function(env) {
      env$gemiddelde_vrouwen
    }, 182)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsed("for")
    testFunctionUsed("length")
  })
})