context({
  testcase("Variabelen werden correct aangemaakt:", {
    testEqual("rij10", function(env) {
      length(env$rij10)
    }, 10)
    testEqual("rij100", function(env) {
      length(env$rij100)
    }, 100)
    testEqual("rij1000", function(env) {
      length(env$rij1000)
    }, 1000)
    testEqual("rij10000", function(env) {
      length(env$rij10000)
    }, 10000)
  })
  testcase("Variabelen werden correct berekend:", {
    testEqual("resultaat10", function(env) {
      env$resultaat10
    }, 1.54976773116654)
    testFunctionUsedInVar("sum", "resultaat10")
    testEqual("resultaat100", function(env) {
      env$resultaat100
    }, 1.63498390018489)
    testFunctionUsedInVar("sum", "resultaat100")
    testEqual("resultaat1000", function(env) {
      env$resultaat1000
    }, 1.64393456668156)
    testFunctionUsedInVar("sum", "resultaat1000")
    testEqual("resultaat10000", function(env) {
      env$resultaat10000
    }, 1.64483407184806)
    testFunctionUsedInVar("sum", "resultaat10000")
  })
})