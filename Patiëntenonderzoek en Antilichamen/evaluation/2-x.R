context({
  testcase('Controleer de lengte van de vector bij variabele -namen-', {
    testEqual("length(patient_namen)", function(env) { length(env$namen) }, 5)
    testEqual("namen [1]", function(env) { env$patient_names[1] }, "Alice")
    testEqual("namen [2]", function(env) { env$patient_names[2] }, "Bob")
    testEqual("namen [3]", function(env) { env$patient_names[3] }, "Karen")
    testEqual("namen [4]", function(env) { env$patient_names[4] }, "David")
    testEqual("namen [5]", function(env) { env$patient_names[5] }, "Eva")
  })

  testcase('Controleer de lengte van de vector bij de variabele -antilichamen-', {
    testEqual("length(antilichamen )", function(env) { length(env$antilichamen) }, 5)
    testEqual("antilichamen [1]", function(env) { env$antibody_counts[1] }, 120)
    testEqual("antilichamen [2]", function(env) { env$antibody_counts[2] }, 150)
    testEqual("antilichamen [3]", function(env) { env$antibody_counts[3] }, 135)
    testEqual("antilichamen [4]", function(env) { env$antibody_counts[4] }, 110)
    testEqual("antilichamen [5]", function(env) { env$antibody_counts[5] }, 145)
  })
})
