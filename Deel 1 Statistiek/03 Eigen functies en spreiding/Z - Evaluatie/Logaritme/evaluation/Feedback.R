set.seed(1234)

# Een functie die de benadering simuleert
ln_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- sum(1 / (2^rij * rij))
  return(round(resultaat, 6))
}
rijtje <- c(2, 3, 4, 5)
rijtje <- c(rijtje, 10^(1:4))

context({
  testcase("De functie ln_benadering(aantal) werkt met de volgende parameters:", {
    for (aantal in rijtje) {
      testEqual(paste("aantal =",
                      format(aantal, scientific = FALSE)),
                function(env) {
                  env$ln_benadering(aantal)
                }, ln_benadering(aantal))
    }
  })
  testcase("Ter controle:", {
    testEqual("ln(2)", function(env) {
      log(2)
    }, log(2))
  })
})
