context({
  test1 <- c(98, 97, 98, 99, 100, 98)
  test2 <- c(14, 25, 14, 18, 16, 16, 20)
  test3 <- c(102, 15, 30, 25)
  test4 <- c(101, 101, 101, 101, 101, 101, 101, 101)

  testcase("De functie werkt:", {
    testEqual("met parameter c(98, 97, 98, 99, 100, 98)", function(env) {
      env$olympic_mean(test1)
    }, 98.25)
    testEqual("met parameter c(14, 25, 14, 18, 16, 16, 20)", function(env) {
      env$olympic_mean(test2)
    }, 16.8)
    testEqual("met parameter c(102, 15, 30, 25)", function(env) {
      env$olympic_mean(test3)
    }, 27.5)
    testEqual("met parameter c(101, 101, 101, 101, 101, 101, 101, 101)", function(env) {
      env$olympic_mean(test4)
    }, 101)
  })
})