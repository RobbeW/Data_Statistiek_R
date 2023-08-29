# Gegevens
mu <- 128.4
sd <- 19.6
n <- 20

n_simulation <- 100
sd_sample <- c()
sd_population <- c()
for (i in 1:n_simulation){
  blood_pressures <- rnorm(n, mean = mu, sd = sd)

  squared_error <- sum( (blood_pressures - mean(blood_pressures))^2)
  var_sample <- 1 / (n - 1) * squared_error
  var_pop <- 1 / n * squared_error
  sd_sample <- c(sd_sample, sqrt(var_sample))
  sd_population <- c(sd_population, sqrt(var_pop))
}

mean(sd_sample)
mean(sd_population)

boxplot(sd_sample, sd_population)
