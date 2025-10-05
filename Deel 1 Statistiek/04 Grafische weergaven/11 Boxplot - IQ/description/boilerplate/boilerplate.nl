library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/BRAINSIZE.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Kolommen hernoemen (Engelse begrippen naar NL):
names(data)[names(data)=="Gender"]   <- "geslacht"
names(data)[names(data)=="MRICount"] <- "MRI"

# Eenheden omzetten: lbs→kg, inch→cm:
data$massa  <- as.numeric(data$Weight) * 0.45359237
data$lengte <- as.numeric(data$Height) * 2.54

# Alleen gewenste kolommen:
data <- data[c("geslacht","FSIQ","VIQ","PIQ","massa","lengte","MRI")]

# Beantwoord hieronder de vragen:
