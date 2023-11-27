# Een functie die de Archimedes som simuleert
archimedes <- function(n) {
  rij <- 1:n
  resultaat <- sum( 1/4^rij )
  return( round(resultaat, 9) )
}

### Enkele testen ###
archimedes(3)    # 0.328125
archimedes(4)    # 0.3320312
archimedes(10)   # 0.333333
