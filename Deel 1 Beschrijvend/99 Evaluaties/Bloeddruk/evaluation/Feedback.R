context({
  testcaseAssert("De variabele dia_druk bestaat", function(env) {
    isTRUE(exists("dia_druk", env))
  })
  testcaseAssert("De variabele sys_druk bestaat", function(env) {
    isTRUE(exists("sys_druk", env))
  })
  testcaseAssert("De variabele gem_druk bestaat", function(env) {
    isTRUE(exists("gem_druk", env))
  })
})
context({
  testcase("Variabelen werden correct gedeclareerd:", {
    testEqual("dia_druk", function(env) {
      env$dia_druk
    }, 101.14)
    testEqual("gem_druk", function(env) {
      env$gem_druk
    }, 122.54)
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("sys_druk", function(env) {
      env$sys_druk
    }, 165.34)
    testFunctionUsedInVar("round", "sys_druk")
  })
})

