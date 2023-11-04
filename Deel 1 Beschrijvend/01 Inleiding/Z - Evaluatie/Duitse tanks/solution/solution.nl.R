# Gegevens
serienummers <- c(3, 117, 21, 30, 87)

k <- length(serienummers)
m <- max(serienummers)

# Berekening van de schatting
schatting <- round(m + m / k - 1)