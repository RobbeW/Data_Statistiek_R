# Het veralgemeend gemiddelde
mean_generalized <- function(data, p) {
  n <- length(data)
  x_h <- (1 / n * sum(data^p))**(1/p)
  return(round(x_h, 2))
}