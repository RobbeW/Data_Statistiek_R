context({
  testcase('Materialen, gewicht, en percentage hebben de juiste lengte', {
    testEqual("length(materialen)", function(env) { length(env$materialen) }, 9)
    testEqual("length(gewicht)", function(env) { length(env$gewicht) }, 9)
    testEqual("length(percentage)", function(env) { length(env$percentage) }, 9)
  })
  testcase('Totaal gewicht is correct berekend:', {
    testTrue("totale_gewicht is correct", function(env) {
      computed_value <- env$totale_gewicht
      computed_value == 231.9 || computed_value == 231.8 || computed_value == 232
    })
  })
})
