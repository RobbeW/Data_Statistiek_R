# Een functie die de benadering simuleert
cos_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- prod( 1-1/(9*(2*rij-1)^2)) 
  return(round(resultaat, 10))
}

### Enkele testen ###
cos_benadering(3)   # 0.874013
cos_benadering(10)  # 0.868432

