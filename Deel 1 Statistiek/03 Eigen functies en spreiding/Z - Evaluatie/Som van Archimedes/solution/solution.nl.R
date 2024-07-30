options(digits = 15)
# Een functie die de Archimedes som simuleert
archimedes <- function(n) {
  rij <- 1:n
  resultaat <- sum((1 / 4)^rij)
  return(round(resultaat, 9))
}