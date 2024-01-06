context({
  testcaseAssert("De variabele restafval bestaat.", function(env) {
    isTRUE(exists("restafval", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("restafval", function(env) {
      env$restafval
    }, 29.12)
    testFunctionUsedInVar("sum", "restafval")
  })
})

context({
  testcase("De variabele afval heeft de correcte lengte:", {
    testEqual("lenght(afval)", function(env) {
      length(env$afval)
    }, 8)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("pie")
  })
})



  