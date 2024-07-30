# Een functie die de benadering simuleert
sin_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- pi / 3 * prod( 1 - 1 / (9 * rij^2)) 
  return(round(resultaat, 6))
}