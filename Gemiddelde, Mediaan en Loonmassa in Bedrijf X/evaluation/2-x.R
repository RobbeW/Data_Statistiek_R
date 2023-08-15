context({
  testcase('Controleer de variabele met de lonen:', {
    testEqual("length(salaries)", function(env) { length(env$salaries) }, 15)
    testEqual("sum(salaries)", function(env) { sum(env$salaries) }, 56400)
    testEqual("mean(salaries)", function(env) { mean(env$salaries) }, 3760)
    testEqual("median(salaries)", function(env) { median(env$salaries) }, 4100)
  })
})
