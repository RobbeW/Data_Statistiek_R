context({
  testcase("Resultaat werd correct berekend:", {
    testEqual("De mediaan van de remweg bedraagt:", function(env) {
      env$evaluationResult
    }, 31.7)
    testFunctionUsed("median")
  })
})
