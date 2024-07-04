context({
  testcaseAssert("De variabele emissie bestaat.", function(env) {
    isTRUE(exists("emissie", env))
  })
  testcaseAssert("De variabele temperatuur_kelvin bestaat.", function(env) {
    isTRUE(exists("temperatuur_kelvin", env))
  })
  testcaseAssert("De variabele verlies bestaat.", function(env) {
    isTRUE(exists("verlies", env))
  })
  testcaseAssert("De variabele warmtestraling_uit bestaat.", function(env) {
    isTRUE(exists("warmtestraling_uit", env))
  })
  testcaseAssert("De variabele warmtestraling_in bestaat.", function(env) {
    isTRUE(exists("warmtestraling_in", env))
  })
  testcaseAssert("De variabele zuinig bestaat.", function(env) {
    isTRUE(exists("zuinig", env))
  })
  testcaseAssert("De variabele zuinige_stoffen bestaat.", function(env) {
    isTRUE(exists("zuinige_stoffen", env))
  })
})
context({
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("sigma", function(env) {
      env$sigma
    }, 5.67e-08)
    testEqual("temperatuur_celcius", function(env) {
      env$temperatuur_celcius
    }, 33)
    testEqual("oppervlakte", function(env) {
      env$oppervlakte
    }, 1.5)
    testEqual("emissie", function(env) {
      env$emissie
    }, c(0.68, 0.73, 0.79, 0.82, 0.77, 0.78, 0.69, 0.97, 0.05))
  })
})
context({
  testcase("Variabele werd correct omgevormd:", {
    testEqual("temperatuur_kelvin", function(env) {
      env$temperatuur_kelvin
    }, 306)
})
context({
  testcase("Variabele werd correct berekend:", {
    testEqual("warmtestraling_uit", function(env) {
      env$warmtestraling_uit
    }, c(507.07, 544.36, 589.1, 611.47, 574.18, 581.64, 514.53, 723.32, 
37.28))
    testFunctionUsedInVar("round", "warmtestraling_uit")
  })
})
context({
  testcase("Variabele werd correct berekend:", {
    testEqual("warmtestraling_in", function(env) {
      env$warmtestraling_in
    }, c(426.24, 457.58, 495.19, 513.99, 482.65, 488.92, 432.51, 608.02, 
31.34))
    testFunctionUsedInVar("round", "warmtestraling_in")
  })
})
context({
  testcase("Variabele werd correct berekend:", {
    testEqual("verlies", function(env) {
      env$verlies
    }, c(80.83, 86.78, 93.91, 97.48, 91.53, 92.72, 82.02, 115.3, 5.94))
  })
})
context({
  testcase("Variabelen werden correct berekend:", {
    testEqual("zuinig", function(env) {
      env$zuinig
    }, c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, TRUE))
    testEqual("zuinige_stoffen", function(env) {
      env$zuinige_stoffen
    }, c("Katoen", "Wol", "Linnen", "Aluminium reddingsdeken"))
  })
})