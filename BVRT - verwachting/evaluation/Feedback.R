context({
  testcase("Variabelen zijn correct:", {
    testEqual("scores", function(env) {
      env$scores
    }, 0:10)
    testEqual("kansen", function(env) {
      env$kansen
    }, c(0.00013, 0.00158, 0.01094, 0.04328, 0.11205, 0.20140, 0.24922,
         0.21341, 0.12184, 0.04003, 0.00612))
    testEqual("verwachting", function(env) {
      env$verwachting
    }, 5.99388)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsed("sum")
  })
})