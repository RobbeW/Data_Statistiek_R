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

# Kolommen hernoemen
names(data)[names(data)=="milage"] <- "milage_mile"

# Scores omvormen naar integers
data$model_year <- as.numeric(data$model_year)
data$milage_mile <- as.numeric(gsub(',', '',substr(data$milage_mile,1,nchar(data$milage_mile)-3)))

# Beantwoord hieronder de vragen