# Het meetkundig gemiddelde
mean_geom <- function(data) {
  n <- length(data)
  x_g <- prod(data)^(1 / n)
  return(round(x_g, 2))
}

# Het harmonisch gemiddelde
mean_harm <- function(data) {
  n <- length(data)
  x_h <- n / sum(1 / data)
  return(round(x_h, 2))
}

# Het kwadratisch gemiddelde
mean_kwadr <- function(data) {
  n <- length(data)
  x_q <- sqrt(1 / n * sum(data^2))
  return(round(x_q, 2))
}
