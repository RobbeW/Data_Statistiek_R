set.seed(1234)

# Een functie die de benadering simuleert
cos_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- prod(1 - 1 / (9 * (2 * rij - 1)^2))
  return(round(resultaat, 9))
}

rijtje <- c(2, 3, 4, 5)
rijtje <- c(rijtje, 10^(1:4))

context({
  testcase("De functie cos_benadering(aantal) werkt met de volgende parameters:", {
    for (aantal in rijtje) {
      testEqual(paste("aantal =",
                      format(aantal, scientific = FALSE)),
                function(env) {
                  env$cos_benadering(aantal)
                }, cos_benadering(aantal))
    }
  })
  testcase("Ter controle:", {
    testEqual("cos(pi / 6)", function(env) {
      cos(pi / 6)
    }, cos(pi / 6))
  })
})