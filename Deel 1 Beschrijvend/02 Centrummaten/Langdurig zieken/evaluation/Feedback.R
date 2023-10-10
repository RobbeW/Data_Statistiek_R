context({
  testcase("De variabelen werden correct aangemaakt:", {
    testEqual("jaren", function(env) {
      env$jaren
    }, 2008:2023)
    testEqual("aantal_zieken", function(env) {
      env$aantal_zieken
    }, c(250000, 266667, 283334, 300001, 316668, 333335, 350002, 366669,
         383336, 400003, 416670, 433337, 450004, 466671, 483338, 500005))
  })
})


context({
  testcase("De berekeningen werden correct uitgevoerd:", {
    testEqual("totaal_verloren_arbeidsjaren", function(env) {
      env$totaal_verloren_arbeidsjaren
    }, 6000040)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsedInVar("sum", "totaal_verloren_arbeidsjaren")
  })
})

context({
  testcase("De berekeningen werden correct uitgevoerd:", {
    testEqual("gemiddeld_aantal_zieken", function(env) {
      env$gemiddeld_aantal_zieken
    }, 375002.5)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsedInVar("mean", "gemiddeld_aantal_zieken")
  })
})

context({
  testcase("De berekeningen werden correct uitgevoerd:", {
    testEqual("aantal_jaren_met_veel_zieken", function(env) {
      env$aantal_jaren_met_veel_zieken
    }, 8)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsedInVar("length", "aantal_jaren_met_veel_zieken")
  })
})