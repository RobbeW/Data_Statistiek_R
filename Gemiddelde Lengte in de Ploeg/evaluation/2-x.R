context({

  # Test de 'lengte' variable
  testcase('Lengte variabele correct gedefinieerd:', {
    testEqual("lengte", function(env) { env$lengte }, c(188, 192, 185, 190, 187))
  })
  
  # Test de 'gemiddelde_lengte' variable
  testcase('Gemiddelde lengte correct berekend:', {
    testEqual("gemiddelde_lengte", function(env) { mean(env$lengte) }, mean(c(188, 192, 185, 190, 187)))
  })

 
})
