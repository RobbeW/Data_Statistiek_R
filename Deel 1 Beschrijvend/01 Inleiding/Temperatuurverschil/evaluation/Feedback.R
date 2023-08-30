context({
  testcase("Variabelen werden correct berekend:", {
    testEqual("extreem_verschil", function(env) {
      env$extreem_verschil
    }, c(7.4, 7.2, 6.6, 7, 6, 6.1, 7.7))
    testEqual("graad_kouder_dan_normaal", function(env) {
      env$graad_kouder_dan_normaal
    }, c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE))
    testEqual("koude_maanden", function(env) {
      env$koude_maanden
    }, c("April"))
    testEqual("extreem", function(env) {
      env$extreem
    }, c(FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE))
    testEqual("extreme_maanden", function(env) {
      env$extreme_maanden
    }, "Juni")
  })
})