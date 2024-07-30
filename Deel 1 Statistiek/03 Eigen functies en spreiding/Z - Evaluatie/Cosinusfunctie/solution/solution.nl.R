# Een functie die de benadering simuleert
cos_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- prod(1 - 1 / (9 * (2 * rij - 1)^2))
  return(round(resultaat, 9))
}