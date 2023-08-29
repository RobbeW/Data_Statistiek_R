context({
  testcase("De variabelen zijn correct:", {
    testEqual("namen", function(env) {
      env$namen
    }, c("Alice", "Bob", "Karen", "David", "Eva"))
    testEqual("antistoffen_basis", function(env) {
      env$antistoffen_basis
    }, c(3705, 3601, 4100, 2574, 3910))
    testEqual("antistoffen_booster", function(env) {
      env$antistoffen_booster
    }, c(22293, 14571, 25415, 18971, 38600))
    testEqual("toenames", function(env) {
      env$toenames
    }, c(18588, 10970, 21315, 16397, 34690))
  })
  testcase("De data frame werd correct aangemaakt:", {
    testEqual("kolommen", function(env) {
      colnames(env$coviddata)
    }, c("namen", "basis", "booster"))
    testEqual("dimensies", function(env) {
      dim(env$coviddata)
    }, c(5L, 3L))
  })
})
