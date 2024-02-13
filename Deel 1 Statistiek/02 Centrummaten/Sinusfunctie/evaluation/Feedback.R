set.seed(1234)

# Een functie die de benadering simuleert
sin_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- pi / 3 *prod( 1-1/(9*rij^2)) 
  return(round(resultaat, 6))
}

rijtje <- c(2,3,4,5)
rijtje <- c(rijtje, 10^(1:4))
for (aantal in rijtje) {
  context({
    testcase("De functie sin_benadering() werkt:", {
      testEqual(paste0("met parameter ", 
                        format(aantal, scientific = FALSE)), function(env) {
                env$sin_benadering(aantal)
                }, sin_benadering(aantal))
    })
  })
}