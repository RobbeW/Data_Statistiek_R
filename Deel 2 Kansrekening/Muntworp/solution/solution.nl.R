# Experimenten
worpen_10 <- sample(0:1, size = 10, replace = TRUE)
worpen_100 <- sample(0:1, size = 100, replace = TRUE)
worpen_1000 <- sample(0:1, size = 1000, replace = TRUE)
worpen_10000 <- sample(0:1, size = 10000, replace = TRUE)

# Experimentele kansen
kans_munt_10 <- mean(worpen_10)
kans_munt_100 <- mean(worpen_100)
kans_munt_1000 <- mean(worpen_1000)
kans_munt_10000 <- mean(worpen_10000)
