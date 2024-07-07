context({
  testcaseAssert("De variabele diameter_D bestaat.", function(env) {
    isTRUE(exists("diameter_D", env))
  })
  testcaseAssert("De variabele kracht_F bestaat.", function(env) {
    isTRUE(exists("kracht_F", env))
  })
  testcase("Variabelen werden correct aangemaakt:", {
    testEqual("diameter_D", function(env) {
      env$diameter_D
    }, 10)
    testEqual("kracht_F", function(env) {
      env$kracht_F
    }, 29500)
  })
})

context({
    testcaseAssert("De variabele diameter_d bestaat.", function(env) {
    isTRUE(exists("diameter_d", env))
  })
  testcase("Variabele werden correct aangemaakt:", {
    testEqual("diameter_d", function(env) {
      env$diameter_d
    }, c(5.6082, 4.0982, 6.7124, 8.8425, 7.2415, 3.0014, 1.5647))
  })
})

context({
  testcaseAssert("De variabele brinell bestaat.", function(env) {
    isTRUE(exists("brinell", env))
  })
  testcase("Variabelen werden correct berekend:", {
    testEqual("brinell", function(env) {
      env$brinell
    }, c(111.3312, 218.093, 74.0296, 35.9407, 61.722, 415.4854, 1555.2034))
    testFunctionUsedInVar("round", "brinell")
  })
})

context({
  testcase("Resultaat werd correct bepaald:", {
    testEqual("De materialen met een Brinellhardheid van 200 N/mm² of meer:", function(env) {
      env$evaluationResult
    }, c("Gehardend staal", "Gietijzer", "Glas"))
  })
})