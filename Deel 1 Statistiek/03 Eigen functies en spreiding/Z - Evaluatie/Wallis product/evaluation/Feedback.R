# solution
wallis <- function(n) {
  rij <- 1:n
  factoren <- 4 * rij^2 / (4 * rij^2 - 1)
  res <- prod(factoren)
  return(round(res, 6))
}

context({
  testcase("De functie wallis(aantal) werkt met de volgende parameters:", {
    rijtje <- 1:6
    for (aantal in rijtje) {
      testEqual(paste("aantal =", format(10^aantal, scientific = FALSE)),
                function(env) {
                  env$wallis(10^aantal)
                }, wallis(10^aantal))
    }
  })
  testcase("Ter controle:", {
    testEqual("pi / 2", function(env) {
      pi / 2
    }, pi / 2)
  })
})