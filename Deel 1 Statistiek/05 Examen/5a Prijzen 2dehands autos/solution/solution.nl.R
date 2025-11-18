library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/used_cars.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
data <- data[c("brand","model","model_year","milage")]

# Scores omvormen naar integers
data$model_year <- as.numeric(data$model_year)
data$milage <- as.numeric(gsub(',', '',substr(data$milage,1,nchar(data$milage)-3)))

# Beantwoord hieronder de vragen
ferrari <- data$brand == "Ferrari"
prijs_per_wagen <- 250000 - (2025 - data$model_year) * 5000 - (data$milage * 1.61)

par(mar = c(10, 6, 4.1, 2.1), mgp = c(5, 1, 0))
barplot(prijs_per_wagen[ferrari], names.arg = data$model[ferrari], las = 2, col = "darkolivegreen1", main = "Prijzen van 2dehands Ferrari's", ylab = "Prijs (in €)", ylim = c(0, 250000))
