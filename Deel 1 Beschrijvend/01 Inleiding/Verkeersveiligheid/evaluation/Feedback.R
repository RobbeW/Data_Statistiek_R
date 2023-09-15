context({
  testcaseAssert("De variabele aantal_doden bestaat.", function(env) {
    isTRUE(exists("aantal_doden", env))
  })
  testcaseAssert("De variabele aantal_miljoen_gereden_km bestaat.",
                 function(env) {
                   isTRUE(exists("aantal_miljoen_gereden_km", env))
                 })
  testcaseAssert("De variabele risico bestaat.", function(env) {
    isTRUE(exists("risico", env))
  })
})
context({
  testcase("Variabelen zijn correct:", {
    testEqual("aantal_doden", function(env) {
      env$aantal_doden
    }, c(716, 510))
    testEqual("aantal_miljoen_gereden_km", function(env) {
      env$aantal_miljoen_gereden_km
    }, c(84.2, 92.9) * 10^3)
    testEqual("risico", function(env) {
      env$risico
    }, c(0.008503563, 0.005489774))
  })
  testcase("Risico is correct berekend:", {
    testEqual("risico[1]", function(env) {
      env$aantal_doden[1] / env$aantal_miljoen_gereden_km[1]
    }, 0.008503563)
    testEqual("risico[2]", function(env) {
      env$aantal_doden[2] / env$aantal_miljoen_gereden_km[2]
    }, 0.005489774)
  })
})
