# Meetgegevens
snelheden <- c(67.4, 48.9, 40.7, 43.5, 49.8, 54.1)

# Berekeningen
n <- length(snelheden)

x_g <- prod(snelheden)^(1 / n)
x_h <- n / sum(1 / snelheden)
x_q <- sqrt(1 / n * sum(snelheden^2))