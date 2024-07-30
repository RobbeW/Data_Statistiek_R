# Een functie die de benadering simuleert
som_driehoek <- function(aantal) {
  rij <- 1:aantal
  rij <- rij * (rij + 1) / 2
  resultaat <- sum(1 / rij)
  return(round(resultaat, 6))
}
