context({
  testcase("De variabele werd correct berekend:", {
    testEqual("mediaan_remweg", function(env) {
      env$mediaan_remweg
    }, 31.7)
    testFunctionUsedInVar("mean", "mediaan_remweg")
  })
})