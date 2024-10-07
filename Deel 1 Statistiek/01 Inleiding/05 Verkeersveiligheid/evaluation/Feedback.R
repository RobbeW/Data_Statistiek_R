context({
  testcaseAssert("De variabele aantal_doden bestaat.", function(env) {
    isTRUE(exists("aantal_doden", env))
  })
  testcaseAssert("De variabele aantal_miljoen_gereden_km bestaat.",
                 function(env) {
                   isTRUE(exists("aantal_miljoen_gereden_km", env))
                 })
  testcase("Variabelen werden correct aangemaakt:", {
    testEqual("aantal_doden", function(env) {
      env$aantal_doden
    }, c(716, 510))
    testEqual("aantal_miljoen_gereden_km", function(env) {
      env$aantal_miljoen_gereden_km
    }, c(84.2, 92.9) * 10^3)
  })
})

context({
  testcase("Risico werd correct berekend:", {
    testEqual("Risico", function(env) {
      env$evaluationResult
    }, c(0.008503563, 0.005489774))
  })
})