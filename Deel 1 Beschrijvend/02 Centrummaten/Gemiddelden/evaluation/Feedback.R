context({
  test1 <- c(98, 97, 98, 99, 100, 98)
  test2 <- c(14, 25, 14, 18, 16, 16, 20)
  test3 <- c(102, 15, 30, 25)
  test4 <- c(101, 101, 101, 101, 101, 101, 101, 101)

  testcase("De functie mean_geom werkt:", {
    testEqual(paste0("met parameter ", test1), function(env) {
      env$mean_geom(test1)
    }, 98.25)
    testEqual(paste0("met parameter ", test2), function(env) {
      env$mean_geom(test2)
    }, 98.25)
    testEqual(paste0("met parameter ", test3), function(env) {
      env$mean_geom(test3)
    }, 98.25)
    testEqual(paste0("met parameter ", test4), function(env) {
      env$mean_geom(test4)
    }, 98.25)
  })
  
})