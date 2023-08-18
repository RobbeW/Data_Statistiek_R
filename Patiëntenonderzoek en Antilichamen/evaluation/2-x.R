context({
  testcase('Controleer de lengte van de vector bij variabele -namen-', {
    testEqual("length(namen)", function(env) { length(env$namen) }, 5)
    testEqual("namen[1]", function(env) { env$namen[1] }, "Alice")
    testEqual("namen[2]", function(env) { env$namen[2] }, "Bob")
    testEqual("namen[3]", function(env) { env$namen[3] }, "Karen")
    testEqual("namen[4]", function(env) { env$namen[4] }, "David")
    testEqual("namen[5]", function(env) { env$namen[5] }, "Eva")
  })

  testcase('Controleer de lengte van de vector bij de variabele -antilichamen-', {
    testEqual("length(antilichamen )", function(env) { length(env$antilichamen) }, 5)
    testEqual("antilichamen[1]", function(env) { env$antilichamen[1] }, 120)
    testEqual("antilichamen[2]", function(env) { env$antilichamen[2] }, 150)
    testEqual("antilichamen[3]", function(env) { env$antilichamen[3] }, 135)
    testEqual("antilichamen[4]", function(env) { env$antilichamen[4] }, 110)
    testEqual("antilichamen[5]", function(env) { env$antilichamen[5] }, 145)
  })
})
