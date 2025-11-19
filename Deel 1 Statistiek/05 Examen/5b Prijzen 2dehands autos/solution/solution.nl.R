library(dplyr)

# Data inlezen:
autosTeKoop <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/used_cars.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)
prijzenAstonMartin <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/prices_aston_martin.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
autosTeKoop <- autosTeKoop[c("brand","model","model_year","milage")]

# Kolommen hernoemen
names(autosTeKoop)[names(autosTeKoop)=="milage"] <- "milage_mile"

# Scores omvormen naar integers
autosTeKoop$model_year <- as.numeric(autosTeKoop$model_year)
autosTeKoop$milage_mile <- as.numeric(gsub(',', '',substr(autosTeKoop$milage_mile,1,nchar(autosTeKoop$milage_mile)-3)))
prijzenAstonMartin$new_price <- as.numeric(prijzenAstonMartin$new_price)

# Beantwoord hieronder de vragen
data <- merge(autosTeKoop, prijzenAstonMartin, by = "model")
prijzen_aston <- data$new_price - sqrt(2025 - data$model_year) * 3000 - sqrt(data$milage_mile * 1.61) * 100

par(mar = c(10, 6, 4.1, 2.1), mgp = c(5, 1, 0))
barplot(prijzen_aston, names.arg = data$model, las = 2, col = "darkolivegreen1", main = "Prijzen van 2dehands Aston Martins", ylab = "Prijs (in €)", ylim = c(0, 300000))
