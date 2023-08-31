# Rijen
rij10 <- 1:10
rij100 <- 1:100
rij1000 <- 1:1000
rij10000 <- 1:10000

# Berekeningen
resultaat10 <- sum(1 / (rij10)^2)
resultaat100 <- sum(1 / (rij100)^2)
resultaat1000 <- sum(1 / (rij1000)^2)
resultaat10000 <- sum(1 / (rij10000)^2)

# Mogelijke controle:
c(pi^2 / 6, resultaat10000)