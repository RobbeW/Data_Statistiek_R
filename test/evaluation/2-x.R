context({
  testcase('Risico is correct berekend:', {
    testEqual("risico", function(env) { (env$aantal_doden / env$aantal_gereden_km) * 10^6 }, 0.00875 0.00800)
  })
})
