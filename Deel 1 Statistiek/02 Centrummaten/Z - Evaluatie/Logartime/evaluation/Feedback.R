set.seed(1234)

# Een functie die de benadering simuleert
ln_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- sum( 1 / (2^rij * rij))
  return(round(resultaat, 6))
}
rijtje <- c(2,3,4,5)
rijtje <- c(rijtje, 10^(1:4))
for (aantal in rijtje) {
  context({
    testcase("De functie ln_benadering() werkt:", {
      testEqual(paste0("met parameter ", 
                        format(aantal, scientific = FALSE)), function(env) {
                env$ln_benadering(aantal)
                }, ln_benadering(aantal))
    })
  })
}