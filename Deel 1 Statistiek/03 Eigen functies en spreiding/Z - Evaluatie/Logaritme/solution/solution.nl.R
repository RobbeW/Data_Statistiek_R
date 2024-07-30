# Een functie die de benadering simuleert
ln_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- sum( 1 / (2^rij * rij))
  return(round(resultaat, 6))
}

### Enkele testen ###
ln_benadering(3)   # 0.666667
ln_benadering(10)  # 0.693065

