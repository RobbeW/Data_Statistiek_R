y <- c()
for (x in 1:500) {
  d8 <- sample(1:8, size = x, replace = TRUE,
     prob = c(3 / 40, 1 / 8, 1 / 8, 1 / 8, 1 / 8, 1 / 8, 1 / 8, 1 / 5))
  d8_mean <- mean(d8)
  y <- append(y, c(d8_mean))
}

plot(1:500, y, ylim = c(0, 8),
     xlab = "Aantal worpen",
     ylab = "Gemiddeld aantal ogen")