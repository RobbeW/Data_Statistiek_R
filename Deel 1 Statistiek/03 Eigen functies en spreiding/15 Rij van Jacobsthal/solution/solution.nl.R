jacobsthal <- function(n) {
  rij <- c(0, 1)
  if (n >= 2) {
    for (i in 2:n){
      nieuw <- 2 * rij[i - 2] + rij[i - 1]
      rij <- c(rij, nieuw)
    }
  }

  return(rij[n])
}