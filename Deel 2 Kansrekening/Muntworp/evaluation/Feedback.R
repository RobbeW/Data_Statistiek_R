contextWithImage({
  testcase("Variabelen hebben de juiste lengte:", {
    testEqual("worpen_10", function(env) {
      length(env$worpen_10)
    }, 10)
    testEqual("worpen_100", function(env) {
      length(env$worpen_100)
    }, 100)
    testEqual("worpen_1000", function(env) {
      length(env$worpen_1000)
    }, 1000)
    testEqual("worpen_10000", function(env) {
      length(env$worpen_10000)
    }, 10000)
  })
  testcase("De experimentele kansen werden correct berekend:", {
    testEqual("kans_munt_10", function(env) {
      env$kans_munt_10
    }, 0.6)
    testEqual("kans_munt_100", function(env) {
      env$kans_munt_100
    }, 0.55)
    testEqual("kans_munt_1000", function(env) {
      env$kans_munt_1000
    }, 0.473)
    testEqual("kans_munt_10000", function(env) {
      env$kans_munt_10000
    }, 0.503)
  })
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
}, preExec = {
  set.seed(1234)
})