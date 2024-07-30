set.seed(1234)

# Een functie die de productbenadering simuleert
product_breuk <- function(aantal) {
  rij <- 2:(aantal+1)
  resultaat <- prod((rij^3 - 1) / (rij^3 + 1))
  return(round(resultaat, 6))
}

rijtje <- c(2, 3, 4, 5)
rijtje <- c(rijtje, 10^(1:4))

context({
  testcase("De functie product_breuk(aantal) werkt met de volgende parameters:", {
    for (aantal in rijtje) {
      testEqual(paste("aantal =",
                      format(aantal, scientific = FALSE)),
                function(env) {
                  env$product_breuk(aantal)
                }, product_breuk(aantal))
    }
  })
  testcase("Ter controle:", {
    testEqual("2 / 3", function(env) {
      2 / 3
    }, 2 / 3)
  })
})
