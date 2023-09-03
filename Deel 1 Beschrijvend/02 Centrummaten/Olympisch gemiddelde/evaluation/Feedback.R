context({
  scores <- c(98, 97, 98, 99, 100, 98)
  resultaten <- c(14, 25, 14, 18, 16, 16, 20)

  testcase("De functie werkt:", {
    testEqual("c(98, 97, 98, 99, 100, 98)", function(env) {
      env$olympic_mean(scores)
    }, 98.25)
    testEqual("c(14, 25, 14, 18, 16, 16, 20)", function(env) {
      env$olympic_mean(resultaten)
    }, 16.8)
  })
})