# Een functie die de productbenadering simuleert
product_breuk <- function(aantal) {
  rij <- 2:(aantal+1)
  resultaat <- prod( (rij^3-1)/(rij^3+1) )
  return(round(resultaat, 6))
}

### Enkele testen ###
product_breuk(3)   # 0.7
product_breuk(10)  # 0.671717

