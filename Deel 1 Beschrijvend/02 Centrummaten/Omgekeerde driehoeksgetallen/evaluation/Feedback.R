set.seed(1234)

# Een functie die de benadering simuleert
som_driehoek <- function(aantal) {
  rij <- 1:aantal
  rij <- rij*(rij+1)/2
  resultaat <- sum(1/rij)
  return(round(resultaat, 6))
}

rijtje <- c(2,3,4,5)
rijtje <- c(rijtje, 10^(1:4))
for (aantal in rijtje) {
  context({
    testcase("De functie som_driehoek() werkt:", {
      testEqual(paste0("met parameter ", 
                        format(aantal, scientific = FALSE)), function(env) {
                env$som_driehoek(aantal)
                }, som_driehoek(aantal))
    })
  })
}