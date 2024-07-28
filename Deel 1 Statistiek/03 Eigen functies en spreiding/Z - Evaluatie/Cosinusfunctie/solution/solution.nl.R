# Een functie die de benadering simuleert
cos_benadering <- function(aantal) {
  rij <- 1:aantal
  resultaat <- prod( 1-1/(9*(2*rij-1)^2)) 
  return(round(resultaat, 9))
}

### Enkele testen ###
cos_benadering(3)   # 0.8740131078
cos_benadering(10)  # 0.8684324820

