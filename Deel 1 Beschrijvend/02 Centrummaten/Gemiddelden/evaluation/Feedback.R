context({
  test1 <- c(98, 97, 98, 99, 100, 98)
  test2 <- c(14, 25, 14, 18, 16, 16, 20)
  test3 <- c(102, 15, 30, 25)
  test4 <- c(101, 101, 101, 101, 101, 101, 101, 101)

  print_vec <- function(data){
    paste0("c(", paste(data, collapse = ", "), ")")
  }

  testcase("De functie mean_geom werkt:", {
    testEqual(paste0("met parameter ", print_vec(test1)), function(env) {
      env$mean_geom(test1)
    }, 98.33)
    testEqual(paste0("met parameter ", print_vec(test2)), function(env) {
      env$mean_geom(test2)
    }, 17.23)
    testEqual(paste0("met parameter ", print_vec(test3)), function(env) {
      env$mean_geom(test3)
    }, 32.73)
    testEqual(paste0("met parameter ", print_vec(test4)), function(env) {
      env$mean_geom(test4)
    }, 101)
  })
  testcase("De functie mean_harm werkt:", {
    testEqual(paste0("met parameter ", print_vec(test1)), function(env) {
      env$mean_harm(test1)
    }, 98.32)
    testEqual(paste0("met parameter ", print_vec(test2)), function(env) {
      env$mean_harm(test2)
    }, 16.93)
    testEqual(paste0("met parameter ", print_vec(test3)), function(env) {
      env$mean_harm(test3)
    }, 26.7)
    testEqual(paste0("met parameter ", print_vec(test4)), function(env) {
      env$mean_harm(test4)
    }, 101)
  })
  testcase("De functie mean_kwadr werkt:", {
    testEqual(paste0("met parameter ", print_vec(test1)), function(env) {
      env$mean_kwadr(test1)
    }, 98.34)
    testEqual(paste0("met parameter ", print_vec(test2)), function(env) {
      env$mean_kwadr(test2)
    }, 17.94)
    testEqual(paste0("met parameter ", print_vec(test3)), function(env) {
      env$mean_kwadr(test3)
    }, 55.12)
    testEqual(paste0("met parameter ", print_vec(test4)), function(env) {
      env$mean_kwadr(test4)
    }, 101)
  })
})