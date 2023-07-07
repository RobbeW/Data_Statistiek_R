context({
  testcase('doden en km_gereden hebben de juiste lengte', {
    testEqual("length(aantal_doden)", function(env) { length(env$aantal_doden) }, 2)
    testEqual("length(aantal_gereden_km)", function(env) { length(env$aantal_gereden_km) }, 2)
    testEqual("risico", function(env) { (env$aantal_doden / env$aantal_gereden_km) * 10^6 }, risico)
  })
  testcase('Risico is correct berekend:', {
    testEqual("risico", function(env) { (env$aantal_doden / env$aantal_gereden_km) * 10^6 }, risico)
  })
})
