# De variabelen aanmaken
jaren <- 2008:2023
aantal_zieken <- c(250000, 266667, 283334, 300001, 316668, 333335, 350002,
                   366669, 383336, 400003, 416670, 433337, 450004, 466671,
                   483338, 500005)

# Totale aantal verloren arbeidsjaren door ziekte berekenen:
totaal_verloren_arbeidsjaren <- sum(aantal_zieken)

# Gemiddeld aantal
gemiddeld_aantal_zieken <- mean(aantal_zieken)

# Hoeveel jaren hebben een bovengemiddeld aantal zieken
veel_zieken <- (aantal_zieken > gemiddeld_aantal_zieken)
jaren_met_veel_zieken <- jaren[veel_zieken]
aantal_jaren_met_veel_zieken <- length(jaren_met_veel_zieken)


context({
  testcaseAssert("De variabele jaren bestaat.", function(env) {
    isTRUE(exists("jaren", env))
  })
  testcaseAssert("De variabele aantal_zieken bestaat.", function(env) {
    isTRUE(exists("aantal_zieken", env))
  })
  testcase("De variabelen werden correct aangemaakt:", {
    testEqual("jaren", function(env) {
      env$jaren
    }, jaren)
    testEqual("aantal_zieken", function(env) {
      env$aantal_zieken
    }, aantal_zieken)
  })
})


context({
  testcaseAssert("De variabele totaal_verloren_arbeidsjaren bestaat.", function(env) {
    isTRUE(exists("totaal_verloren_arbeidsjaren", env))
  })
  testcase("De berekeningen werden correct uitgevoerd:", {
    testEqual("totaal_verloren_arbeidsjaren", function(env) {
      env$totaal_verloren_arbeidsjaren
    }, totaal_verloren_arbeidsjaren)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsedInVar("sum", "totaal_verloren_arbeidsjaren")
  })
})

context({
  testcaseAssert("De variabele gemiddeld_aantal_zieken bestaat.", function(env) {
    isTRUE(exists("gemiddeld_aantal_zieken", env))
  })
  testcase("De berekeningen werden correct uitgevoerd:", {
    testEqual("gemiddeld_aantal_zieken", function(env) {
      env$gemiddeld_aantal_zieken
    }, gemiddeld_aantal_zieken)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsedInVar("mean", "gemiddeld_aantal_zieken")
  })
})

context({
  testcaseAssert("De variabele jaren_met_veel_zieken bestaat.", function(env) {
    isTRUE(exists("jaren_met_veel_zieken", env))
  })
  testcaseAssert("De variabele aantal_jaren_met_veel_zieken bestaat.", function(env) {
    isTRUE(exists("aantal_jaren_met_veel_zieken", env))
  })
  testcase("De berekeningen werden correct uitgevoerd:", {
    testEqual("jaren_met_veel_zieken", function(env) {
      env$jaren_met_veel_zieken
    }, jaren_met_veel_zieken)
    testEqual("aantal_jaren_met_veel_zieken", function(env) {
      env$aantal_jaren_met_veel_zieken
    }, aantal_jaren_met_veel_zieken)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsedInVar("length", "aantal_jaren_met_veel_zieken")
  })
})