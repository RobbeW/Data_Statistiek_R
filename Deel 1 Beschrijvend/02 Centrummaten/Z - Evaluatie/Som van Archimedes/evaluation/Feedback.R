# Een functie die de Archimedes som simuleert
archimedes <- function(n) {
  rij <- 1:n
  resultaat <- sum( 1/4^rij )
  return( round(resultaat, 9) )
}

context({
  testcase("De functie archimedes werkt:", {
    rijtje <- c(2,3,4,5)
    rijtje <- c(rijtje, 10^(1:3))
    for (aantal in rijtje) {
      testEqual(paste0("met parameter ", 
                       format(aantal, scientific = FALSE)), function(env) {
                  env$archimedes(aantal)
                }, archimedes(aantal))
    }
  })
})