# Een functie die de productbenadering simuleert
product_pi <- function(aantal) {
  rij <- 1:aantal
  resultaat <- prod(1 - 1 / (2 * rij + 1)^2)
  return(round(resultaat, 6))
}