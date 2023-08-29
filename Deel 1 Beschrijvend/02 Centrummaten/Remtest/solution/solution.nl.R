# Gegevens inladen
data <- read.table("https://tinyurl.com/4p3znsv9", header = TRUE)

# De mediaan berekenen
n <- length(data$remweg)
if (n %% 2 != 0) { # oneven aantal waarnemingen
  mediane_remweg <- data$remweg[(n + 1) / 2]
} else { # even aantal waarnemingen
  middelste_waarden <- c(data$remweg[n / 2], data$remweg[n / 2 + 1])
  mediane_remweg <- mean(middelste_waarden)
}