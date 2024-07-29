mse <- function(echte_gegevens, voorspelde_gegevens) {
  result <- mean( (echte_gegevens - voorspelde_gegevens)^2)
  return(round(result, 3))
}