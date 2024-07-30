fibonacci <- function(n) {
  rij <- c(1, 1)
  if (n >= 3) {
    for(i in 3:n){
      nieuw <- rij[i - 1] + rij[i - 2]
      rij <- c(rij, nieuw)
    }
  }

  return(rij[n])
}
