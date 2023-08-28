contextWithImage({
  testcase("Variabelen zijn correct:", {
    testEqual("scores", function(env) {
      env$scores
    }, 0:10)
    testEqual("kansen", function(env) {
      env$kansen
    }, c(0.00013, 0.00158, 0.01094, 0.04328, 0.11205, 0.20140, 0.24922,
         0.21341, 0.12184, 0.04003, 0.00612))
    testEqual("kanssom", function(env) {
      env$kanssom
    }, 1)
    testEqual("kansen_cumulatief", function(env) {
      env$kansen_cumulatief
    }, c(0.00013, 0.00171, 0.01265, 0.05593, 0.16798, 0.36938, 0.6186, 
         0.83201, 0.95385, 0.99388, 1))
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsed("sum")
    testFunctionUsed("cumsum")
  })
})