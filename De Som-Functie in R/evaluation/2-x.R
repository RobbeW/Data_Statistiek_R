context({
  testcase('Check if "jaren" variable is created correctly', {
    testEqual("length(jaren)", function(env) { length(env$jaren) }, 16)
    testEqual("jaren[1]", function(env) { env$jaren[1] }, 2008)
    testEqual("jaren[2]", function(env) { env$jaren[2] }, 2009)
    testEqual("jaren[3]", function(env) { env$jaren[3] }, 2010)
    testEqual("jaren[16]", function(env) { env$jaren[16] }, 2023)
  })

  testcase('Check if "aantal_zieken" variable is created correctly', {
    testEqual("length(aantal_zieken)", function(env) { length(env$aantal_zieken) }, 16)
    testEqual("aantal_zieken[1]", function(env) { env$aantal_zieken[1] }, 250000)
    testEqual("aantal_zieken[2]", function(env) { env$aantal_zieken[2] }, 266667)
    testEqual("aantal_zieken[3]", function(env) { env$aantal_zieken[3] }, 283334)
    testEqual("aantal_zieken[16]", function(env) { env$aantal_zieken[16] }, 500005)
  })

  testcase('Check if "totaal_zieken" variable is created correctly', {
    testEqual("totaal_zieken", function(env) { env$totaal_zieken }, sum(c(250000, 266667, 283334, 300001, 316668, 333335, 350002, 366669, 383336, 400003, 416670, 433337, 450004, 466671, 483338, 500005)))
  })
})
