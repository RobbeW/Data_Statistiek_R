context({
  testcase("Gemiddelde lengte van de mannen werd correct berekend:", {
    testEqual("gemiddelde_mannen", function(env) {
      env$gemiddelde_mannen
    }, 197)
  })
  testcase("De volgende functie werden gebruikt:", {
    testFunctionUsedInVar("mean", "gemiddelde_mannen")
  })
})

context({
  testcase("Gemiddelde lengte van de vrouwen werd correct berekend:", {
    testEqual("gemiddelde_vrouwen", function(env) {
      env$gemiddelde_vrouwen
    }, 182)
  })
  testcase("De volgende functie werden gebruikt:", {
    testFunctionUsedInVar("mean", "gemiddelde_vrouwen")
  })
})
