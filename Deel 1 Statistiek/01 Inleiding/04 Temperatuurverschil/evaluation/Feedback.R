context({
  testcaseAssert("De variabele extreem_verschil bestaat.", function(env) {
    isTRUE(exists("extreem_verschil", env))
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("extreem_verschil", function(env) {
      env$extreem_verschil
    }, c(7.4, 7.2, 6.6, 7, 6, 6.1, 7.7))
  })
})
context({
  testcaseAssert("De variabele graad_kouder_dan_normaal bestaat.",
                 function(env) {
                   isTRUE(exists("graad_kouder_dan_normaal", env))
                 })
  testcaseAssert("De variabele koude_maanden bestaat.", function(env) {
    isTRUE(exists("koude_maanden", env))
  })
  testcase("Variabelen werden correct berekend:", {
    testEqual("graad_kouder_dan_normaal", function(env) {
      env$graad_kouder_dan_normaal
    }, c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE))
    testEqual("koude_maanden", function(env) {
      env$koude_maanden
    }, c("April"))
  })
})
context({
  testcaseAssert("De variabele extreem bestaat.", function(env) {
    isTRUE(exists("extreem", env))
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("extreem", function(env) {
      env$extreem
    }, c(FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE))
  })
  testcase("Juiste maand(en) geselecteerd:", {
    testEqual("Nieuwe gemiddelde record in de maand(en)", function(env) {
      env$evaluationResult
    }, "Juni")
  })
})