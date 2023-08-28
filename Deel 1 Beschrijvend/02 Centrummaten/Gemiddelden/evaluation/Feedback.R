context({
  testcase("Variabelen werden correct berekend:", {
    testEqual("n", function(env) {
      env$n
    }, 6)
    testEqual("x_g", function(env) {
      env$x_g
    }, 50.0510475596143)
    testEqual("x_h", function(env) {
      env$x_h
    }, 49.4193909481813)
    testEqual("x_q", function(env) {
      env$x_q
    }, 51.4612475558065)
  })
  testcase("De volgende functies werden gebruikt:", {
    testFunctionUsed("sum")
    testFunctionUsed("prod")
    testFunctionUsed("length")
  })
})