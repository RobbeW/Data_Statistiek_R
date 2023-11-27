set.seed(1234)

# Een functie die de productbenadering simuleert
product_pi <- function(aantal) {
  rij <- 1:aantal
  resultaat <- prod( 1 - 1/(2*rij+1)^2)
  return(round(resultaat, 6))
}

rijtje <- c(2,3,4,5)
rijtje <- c(rijtje, 10^(1:4))
for (aantal in rijtje) {
  context({
    testcase("De functie product_pi() werkt:", {
      testEqual(paste0("met parameter ", 
                        format(aantal, scientific = FALSE)), function(env) {
                env$product_pi(aantal)
                }, product_pi(aantal))
    })
  })
}