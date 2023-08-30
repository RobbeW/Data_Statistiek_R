context({
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("VO2max", function(env) {
      env$VO2max
    }, 52.3)
    testEqual("HR_max", function(env) {
      env$HR_max
    }, 183)
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("HR_rust", function(env) {
      env$HR_rust
    }, 52.49)
    testFunctionUsedInVar("round", "HR_rust")
  })
})