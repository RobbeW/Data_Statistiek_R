context({
  testcase('kleuren en percentages hebben de juiste lengte', {
    testEqual("length(kleuren)", function(env) { length(env$kleuren) }, 7)
    testEqual("length(percentages)", function(env) { length(env$percentages) }, 7)
  })
  testcase('Som van alle percentages is correct berekend:', {
    testEqual("som_percentages", function(env) { sum(env$percentages) }, 100)
  })
  # Note: Testing the barplot visually would require manual evaluation or a more advanced testing tool.
})
