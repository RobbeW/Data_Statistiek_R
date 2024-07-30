# Een functie die het Wallis product simuleert
wallis <- function(n) {
  rij <- 1:n
  factoren <- 4 * rij^2 / (4 * rij^2 - 1)
  res <- prod(factoren)
  return(round(res, 6))
}

# Mogelijke controle
c(pi / 2, wallis(10000))
