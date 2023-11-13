recaman <- function(n) {
  rij <- c(0)
  if(n >= 2){
    for( i in 2:n){
      nieuw <- rij[i-1]-i+1
      if (nieuw <= 0 | (nieuw %in% rij)){
        nieuw <- rij[i-1]+i-1
      }
      rij <- c(rij, nieuw)
    }
  } 

  return(rij[n])
}

### Enkele testen ###
recaman(2) # 1
recaman(3) # 3
recaman(5) # 2
recaman(6) # 7


