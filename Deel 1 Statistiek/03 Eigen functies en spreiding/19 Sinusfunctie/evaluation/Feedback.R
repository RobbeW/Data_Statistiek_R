set.seed(1234)

# Een functie die de benadering simuleert
sin_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- pi / 3 * prod(1 - 1 / (9 * rij^2))
  return(round(resultaat, 6))
}

rijtje <- c(2, 3, 4, 5)
rijtje <- c(rijtje, 10^(1:4))

context({
  testcase("De functie sin_benadering(aantal) werkt met de volgende parameters:", {
    for (aantal in rijtje) {
      testEqual(paste("aantal =",
                      format(aantal, scientific = FALSE)),
                function(env) {
                  env$sin_benadering(aantal)
                }, sin_benadering(aantal))
    }
  })
  testcase("Ter controle:", {
    testEqual("sin(pi / 3)", function(env) {
      sin(pi / 3)
    }, sin(pi / 3))
  })
})
