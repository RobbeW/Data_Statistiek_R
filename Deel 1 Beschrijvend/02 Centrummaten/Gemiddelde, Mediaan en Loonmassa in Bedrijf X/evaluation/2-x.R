context({
  testcase('Controleer de variabele met de lonen:', {
    testEqual("length(lonen)", function(env) { length(env$lonen) }, 15)
    testEqual("sum(lonen)", function(env) { sum(env$lonen) }, 64400)
    testEqual("mean(lonen)", function(env) { mean(env$lonen) }, 4293.33333333333)
    testEqual("median(lonen)", function(env) { median(env$lonen) }, 4100)
  })
})
