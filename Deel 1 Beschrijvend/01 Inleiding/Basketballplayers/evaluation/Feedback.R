context({
  testcase("De variabelen zijn correct:", {
    testEqual("lengtes_mannen", function(env) {
      env$lengtes_mannen
    }, c(198, 195, 193, 202))
    testEqual("lengtes_vrouwen", function(env) {
      env$lengtes_vrouwen
    }, c(185, 186, 172, 185))
    testEqual("lengtes", function(env) {
      env$lengtes
    }, c(198, 195, 193, 202, 185, 186, 172, 185))
    testEqual("lengte_speler4", function(env) {
      env$lengte_speler4
    }, 202)
  })
})