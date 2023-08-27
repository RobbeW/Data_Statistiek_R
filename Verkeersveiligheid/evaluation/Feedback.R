context({
  testcase("doden en km_gereden zijn correct", {
    testEqual("aantal_doden", function(env) {
      env$aantal_doden
    }, c(716, 510))
    testEqual("aantal_miljoen_gereden_km", function(env) {
      env$aantal_gereden_km
    }, c(84.2, 92.9) * 10^3)
  })
  testcase("Risico is correct berekend:", {
    testEqual("risico[1]", function(env) {
      env$risico[1]
    }, 0.008503563)
    testEqual("risico[2]", function(env) {
      env$risico[1]
    }, 0.005489774)
  })
})
