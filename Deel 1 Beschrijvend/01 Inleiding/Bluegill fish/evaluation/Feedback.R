context({
  testcaseAssert("De variabele leeftijden bestaat.", function(env) {
    isTRUE(exists("leeftijden", env))
  })
  testcaseAssert("De variabele schatting_lengtes bestaat.", function(env) {
    isTRUE(exists("schatting_lengtes", env))
  })
})
context({
  testcase("Variabele werden correct gedeclareerd:", {
    testEqual("leeftijden", function(env) {
      env$leeftijden
    }, c(2, 4, 6, 8, 10))
  })
  testcase("Variabele werden correct berekend:", {
    testEqual("schatting_lengtes", function(env) {
      env$schatting_lengtes
    }, c(104.984, 162.936, 187.456, 178.544, 136.2))
  })
})