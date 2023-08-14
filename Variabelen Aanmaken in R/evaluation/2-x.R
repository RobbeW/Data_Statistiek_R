context({
  testcase('Variabele "lengte" heeft de juiste lengte', {
    testEqual("length(lengte)", function(env) { length(env$lengte) }, 5)
  })
  testcase('De waarden binnen "lengte" zijn correct:', {
    testEqual("lengte[1]", function(env) { env$lengte[1] }, 188)
    testEqual("lengte[2]", function(env) { env$lengte[2] }, 192)
    testEqual("lengte[3]", function(env) { env$lengte[3] }, 185)
    testEqual("lengte[4]", function(env) { env$lengte[4] }, 190)
    testEqual("lengte[5]", function(env) { env$lengte[5] }, 187)
  })

})