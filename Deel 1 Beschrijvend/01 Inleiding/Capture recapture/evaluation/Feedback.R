context({
  testcase("Variabelen werden correct gedeclareerd.", {
    testEqual("n", function(student_env) { student_env$n }, 75)
    testEqual("s", function(student_env) { student_env$s }, 10)
  })
  testcase("Populatie werd correct berekend.", {
    testEqual("N", function(student_env) { student_env$N }, 240)
  })
})