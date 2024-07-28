faculteit <- function(getal) {
  if( getal == 0){
    resultaat = 1
  } else{
    resultaat = prod(1:getal)
  }

  return(resultaat)
}

### Enkele testen ###
faculteit(1) # 1
faculteit(2) # 2
faculteit(3) # 6
faculteit(4) # 24