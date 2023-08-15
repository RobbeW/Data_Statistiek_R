context({
  testcase('Check if patient_names variable is created correctly', {
    testEqual("length(patient_names)", function(env) { length(env$patient_names) }, 5)
    testEqual("patient_names[1]", function(env) { env$patient_names[1] }, "Alice")
    testEqual("patient_names[2]", function(env) { env$patient_names[2] }, "Bob")
    testEqual("patient_names[3]", function(env) { env$patient_names[3] }, "Karen")
    testEqual("patient_names[4]", function(env) { env$patient_names[4] }, "David")
    testEqual("patient_names[5]", function(env) { env$patient_names[5] }, "Eva")
  })

  testcase('Check if antibody_counts variable is created correctly', {
    testEqual("length(antibody_counts)", function(env) { length(env$antibody_counts) }, 5)
    testEqual("antibody_counts[1]", function(env) { env$antibody_counts[1] }, 120)
    testEqual("antibody_counts[2]", function(env) { env$antibody_counts[2] }, 150)
    testEqual("antibody_counts[3]", function(env) { env$antibody_counts[3] }, 135)
    testEqual("antibody_counts[4]", function(env) { env$antibody_counts[4] }, 110)
    testEqual("antibody_counts[5]", function(env) { env$antibody_counts[5] }, 145)
  })
})
