# Een functie die de productbenadering simuleert
product_pi <- function(aantal) {
  rij <- 1:aantal
  resultaat <- prod( 1 - 1/(2*rij+1)^2)
  return(round(resultaat, 6))
}

### Enkele testen ###
product_pi(3)   # 0.835918
product_pi(10)  # 0.803446

