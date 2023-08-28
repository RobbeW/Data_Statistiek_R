context({
  testcase("De variabelen zijn correct:", {
    testEqual("lengte", function(env) {
      env$lengte
    }, c(188, 192, 185, 190, 187))
    testEqual("lengte_speler3", function(env) {
      env$lengte_speler3
    }, 185)
  })
})