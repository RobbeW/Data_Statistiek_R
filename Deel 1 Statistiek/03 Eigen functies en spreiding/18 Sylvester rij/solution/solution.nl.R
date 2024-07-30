sylvester <- function(n) {
  rij <- c(2)
  if (n > 1) {
    for (i in 1:n) {
      resultaat <- prod(rij) + 1
      rij <- c(rij, resultaat)
    }
  }

  return(rij[n])
}