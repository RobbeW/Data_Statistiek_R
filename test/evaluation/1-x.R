context({
  testcase('doden en km_gereden hebben de juiste lengte', {
    testEqual("length(aantal_doden)", function(env) { length(env$aantal_doden) }, 2)
    testEqual("length(aantal_gereden_km)", function(env) { length(env$aantal_gereden_km) }, 2)
  })
  testcase('Risico is correct berekend:', {
    testEqual("risico", function(env) { (env$aantal_doden[1] / env$aantal_gereden_km[1]) * 10^6 }, risico)
    testEqual("risico", function(env) { (env$aantal_doden[2] / env$aantal_gereden_km[2]) * 10^6 }, risico)
  })
})
