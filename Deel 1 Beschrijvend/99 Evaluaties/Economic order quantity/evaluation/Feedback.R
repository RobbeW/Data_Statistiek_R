context({
  testcaseAssert("De variabele eqo bestaat.", function(env) {
    isTRUE(exists("eqo", env))
  })
  testcaseAssert("De variabele aantal_te_bestellen bestaat.", function(env) {
    isTRUE(exists("aantal_te_bestellen", env))
  })
  testcaseAssert("De variabele grote_bestelling bestaat.", function(env) {
    isTRUE(exists("grote_bestelling", env))
  })
})
context({
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("h", function(env) {
      env$h
    }, 2.85)
    testEqual("D", function(env) {
      env$D
    }, c(20000, 5000, 30000, 100000, 10000))
    testEqual("K", function(env) {
      env$K
    }, c(60, 100, 200, 40, 80))
  })
})
context({
  testcase("Variabele werd correct berekend:", {
    testEqual("eqo", function(env) {
      env$eqo
    }, c(918, 592, 2052, 1675, 749))
    testFunctionUsedInVar("round", "eqo")
    testEqual("aantal_te_bestellen", function(env) {
      env$aantal_te_bestellen
    }, c(22, 9, 15, 60, 14))
    testFunctionUsedInVar("ceiling", "aantal_te_bestellen")
    testEqual("grote_bestelling", function(env) {
      env$grote_bestelling
    }, c("Ontstekings auto (bougie)", "Bepaald geneesmiddel",
         "McDonalds burgers"))
  })
})


  
  