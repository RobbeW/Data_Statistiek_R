perrin <- function(n) {
  rij <- c(3, 0, 2)
  if (n >= 4) {
    for (i in 4:n){
      nieuw <- rij[i - 2] + rij[i - 3]
      rij <- c(rij, nieuw)
    }
  }

  return(rij[n])
}