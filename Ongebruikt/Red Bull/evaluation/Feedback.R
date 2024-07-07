context({
  testcaseAssert("De variabele toename_sp_rb bestaat.", function(env) {
    isTRUE(exists("toename_sp_rb", env))
  })
  testcaseAssert("De variabele toename_dp_rb bestaat.", function(env) {
    isTRUE(exists("toename_dp_rb", env))
  })
  testcaseAssert("De variabele leeftijd_grote_stijging bestaat.",
                 function(env) {
                   isTRUE(exists("leeftijd_grote_stijging", env))
                 })
  testcaseAssert("De variabele grote_stijging bestaat.", function(env) {
    isTRUE(exists("grote_stijging", env))
  })
  testcaseAssert("De variabele map_pre_rb bestaat.", function(env) {
    isTRUE(exists("map_pre_rb", env))
  })
  testcaseAssert("De variabele map_post_rb bestaat.", function(env) {
    isTRUE(exists("map_post_rb", env))
  })
})
context({
  testcase("De variabelen werden correct berekend:", {
    testEqual("toename_sp_rb", function(env) {
      env$toename_sp_rb
    }, c(10, 11, 10, 8, 9, 19, 4, 4, 1, 4, 15, 6, 2, 11, 11, 4, 5, 5, 
0, 0))
    testEqual("toename_dp_rb", function(env) {
      env$toename_dp_rb
    }, c(7, 9, 10, 6, -2, 8, 4, 1, -2, 5, 7, 1, 1, 8, 12, 2, 3, -1, 
3, -2))
    testEqual("leeftijd_grote_stijging", function(env) {
      env$leeftijd_grote_stijging
    }, c(29, 20))
    testEqual("grote_stijging", function(env) {
      env$grote_stijging == 10 | env$grote_stijging == 0.1
    }, TRUE)
    testEqual("map_pre_rb", function(env) {
      env$map_pre_rb
    }, c(86.7, 82, 94, 89.7, 102.7, 84, 93.3, 97.7, 94.3, 84.3, 92, 
75, 84.3, 94.7, 93, 79.7, 82.3, 98, 83.3, 97.3))
    testFunctionUsedInVar("round", "map_pre_rb")
    testEqual("map_post_rb", function(env) {
      env$map_post_rb
    }, c(94.7, 91.7, 104, 96.3, 104.3, 95.7, 97.3, 99.7, 93.3, 89, 101.7, 
77.7, 85.7, 103.7, 104.7, 82.3, 86, 99, 85.3, 96))
    testFunctionUsedInVar("round", "map_post_rb")
  })
})