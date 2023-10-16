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

### Enkele testen ###
data <- c(98, 97, 98, 99, 100, 98)
mean_geom(data)  # 98.33
mean_harm(data)  # 98.32
mean_kwadr(data) # 98.34

data <- c(14, 25, 14, 18, 16, 16, 20)
mean_geom(data)  # 17.23
mean_harm(data)  # 16.93
mean_kwadr(data) # 17.94