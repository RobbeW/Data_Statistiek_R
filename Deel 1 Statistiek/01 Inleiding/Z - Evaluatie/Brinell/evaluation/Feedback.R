context({
  testcaseAssert("De variabele brinell bestaat.", function(env) {
    isTRUE(exists("brinell", env))
  })
  testcaseAssert("De variabele harde_materialen bestaat.", function(env) {
    isTRUE(exists("harde_materialen", env))
  })
})
context({
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
  testcase("Variabele werden correct aangemaakt:", {
    testEqual("diameter_d", function(env) {
      env$diameter_d
    }, c(5.6082, 4.0982, 6.7124, 8.8425, 7.2415, 3.0014, 1.5647))
  })
})

context({
  testcase("Variabelen werden correct berekend:", {
    testEqual("brinell", function(env) {
      env$brinell
    }, c(111.3312, 218.093, 74.0296, 35.9407, 61.722, 415.4854, 1555.2034))
    testFunctionUsedInVar("round", "brinell")
  })
})

context({
  testcase("Variabelen werden correct berekend:", {
    testEqual("harde_materialen", function(env) {
      env$harde_materialen
    }, c("Gehardend staal", "Gietijzer", "Glas"))
  })
})