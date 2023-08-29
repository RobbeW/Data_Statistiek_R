context({
  testcase("De variabelen zijn correct:", {
    testEqual("lengtes", function(env) {
      env$lengtes
    }, c(198, 195, 193, 202, 185, 186, 172, 185))
    testEqual("lengte_speler4", function(env) {
      env$lengte_speler4
    }, 202)
  })
})