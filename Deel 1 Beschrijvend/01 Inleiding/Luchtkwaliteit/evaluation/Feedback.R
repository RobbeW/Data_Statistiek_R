context({
  testcaseAssert("De variabele vrije_plaatsen bestaat.", function(env) {
    isTRUE(exists("vrije_plaatsen", env))
  })
  testcaseAssert("De variabele veel_plaats bestaat.", function(env) {
    isTRUE(exists("veel_plaats", env))
  })
})
context({
  testcase("Variabelen werden correct berekend:", {
    testEqual("vrije_plaatsen", function(env) {
      env$vrije_plaatsen
    }, vrije_plaatsen)
  })
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsedInVar("floor", "vrije_plaatsen")
  })
})