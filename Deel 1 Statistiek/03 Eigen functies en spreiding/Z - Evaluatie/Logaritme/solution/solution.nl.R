# Een functie die de benadering simuleert
ln_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- sum(1 / (2^rij * rij))
  return(round(resultaat, 6))
}