set.seed(1234)

# Een functie die de benadering simuleert
som_driehoek <- function(aantal) {
  rij <- 1:aantal
  rij <- rij * (rij + 1) / 2
  resultaat <- sum(1 / rij)
  return(round(resultaat, 6))
}
  
rijtje <- c(2, 3, 4, 5)
rijtje <- c(rijtje, 10^(1:4))

context({
  testcase("De functie som_driehoek(aantal) werkt met de volgende parameters:", {
    for (aantal in rijtje) {
      testEqual(paste("aantal =",
                      format(aantal, scientific = FALSE)),
                function(env) {
                  env$som_driehoek(aantal)
                }, som_driehoek(aantal))
    }
  })
})
