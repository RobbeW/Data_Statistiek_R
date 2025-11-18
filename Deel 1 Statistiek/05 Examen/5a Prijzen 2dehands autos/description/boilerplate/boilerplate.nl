library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/used_cars.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
data <- data[c("brand","model","model_year","milage","price")]

# Scores omvormen naar integers
data$model_year <- as.numeric(data$model_year)
data$milage <- as.numeric(gsub(',', '',substr(data$milage,1,nchar(data$milage)-3)))
data$price <- as.numeric(gsub(',', '', sub('.', '', data$price))) / 1000

# Beantwoord hieronder de vragen