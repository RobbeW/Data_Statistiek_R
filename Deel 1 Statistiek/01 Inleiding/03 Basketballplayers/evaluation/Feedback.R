context({
  testcaseAssert("De variabele lengtes_mannen bestaat.", function(env) {
    isTRUE(exists("lengtes_mannen", env))
  })
  testcaseAssert("De variabele lengtes_vrouwen bestaat.", function(env) {
    isTRUE(exists("lengtes_vrouwen", env))
  })
  testcase("De variabelen zijn correct aangemaakt:", {
    testEqual("lengtes_mannen", function(env) {
      env$lengtes_mannen
    }, c(198, 195, 193, 202))
    testEqual("lengtes_vrouwen", function(env) {
      env$lengtes_vrouwen
    }, c(185, 186, 172, 185))
  })
})

context({
  testcaseAssert("De variabele lengtes bestaat.", function(env) {
    isTRUE(exists("lengtes", env))
  })
  testcase("De vector werd correct samengesteld:", {
    testEqual("lengtes", function(env) {
      env$lengtes
    }, c(198, 195, 193, 202, 185, 186, 172, 185))
    testFunctionUsed("c")
  })
})

context({
  testcase("De waarde werd correct uit de vector gehaald", {
    testEqual("Lengte van de 5de speler", function(env) {
      env$evaluationResult
    }, 185)
  })
})