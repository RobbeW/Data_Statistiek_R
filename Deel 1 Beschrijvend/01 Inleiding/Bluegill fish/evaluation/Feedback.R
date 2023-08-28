context({
  testcase("Variabel werden correct gedeclareerd:", {
    testEqual("leeftijden", function(env) {
      env$leeftijden
    }, c(2, 4, 6, 8, 10))
  })
  testcase("Variabel werden correct berekend:", {
    testEqual("schatting_lengtes", function(env) {
      env$schatting_lengtes
    }, c(104.984, 162.936, 187.456, 178.544, 136.2))
  })
})