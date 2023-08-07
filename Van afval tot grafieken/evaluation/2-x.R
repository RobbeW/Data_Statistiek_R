context({
  testcase('Materialen, gewicht, en percentage hebben de juiste lengte', {
    testEqual("length(materialen)", function(env) { length(env$materialen) }, 9)
    testEqual("length(gewicht)", function(env) { length(env$gewicht) }, 9)
    testEqual("length(percentage)", function(env) { length(env$percentage) }, 9)
  })
  testcase('Totaal gewicht is correct berekend:', {
    testEqual("totale_gewicht", function(env) { sum(env$gewicht) }, 231.9)
  })
})
