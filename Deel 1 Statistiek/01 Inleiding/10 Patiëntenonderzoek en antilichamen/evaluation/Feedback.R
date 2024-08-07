namen <- c("Alice", "Bob", "Karen", "David", "Eva")
antistoffen_basis <- c(3705, 3601, 4100, 2574, 3910)
antistoffen_booster <- c(22293, 14571, 25415, 18971, 38600)
coviddata <- data.frame("namen" = namen,
                        "basis" = antistoffen_basis,
                        "booster" = antistoffen_booster)

context({
  testcaseAssert("De variabele namen bestaat.", function(env) {
    isTRUE(exists("namen", env))
  })
  testcaseAssert("De variabele antistoffen_basis bestaat.", function(env) {
    isTRUE(exists("antistoffen_basis", env))
  })
  testcaseAssert("De variabele antistoffen_booster bestaat.", function(env) {
    isTRUE(exists("antistoffen_booster", env))
  })
  testcase("Variabelen werden correct aangemaakt:", {
    testEqual("namen", function(env) {
      env$namen
    }, c("Alice", "Bob", "Karen", "David", "Eva"))
    testEqual("antistoffen_basis", function(env) {
      env$antistoffen_basis
    }, c(3705, 3601, 4100, 2574, 3910))
    testEqual("antistoffen_booster", function(env) {
      env$antistoffen_booster
    }, c(22293, 14571, 25415, 18971, 38600))
  })
})
context({
  testcase("De data frame werd correct aangemaakt:", {
    testDF("coviddata", 
           ignore_col_order = FALSE,
           ignore_row_order = FALSE,
           function(env) {
             env$coviddata
           }, coviddata)
  })
})
context({
  testcase("Resultaat werd correct berekend:", {
    testEqual("Toenames in antistoffen", function(env) {
      env$evaluationResult
    }, c(18588, 10970, 21315, 16397, 34690))
  })
})
