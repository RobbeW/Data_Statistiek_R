library(dplyr)

# 1) We lezen de data in: 
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/BRAINSIZE.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# 2) NL kolomnamen + eenheden
data <- data %>%
  rename(geslacht = Gender, MRI = MRICount) %>%
  mutate(
    massa  = as.numeric(Weight) * 0.45359237,
    lengte = as.numeric(Height) * 2.54
  ) %>%
  select(geslacht, FSIQ, VIQ, PIQ, massa, lengte, MRI)

# 3) Indicator en plot
gemiddeld_MRI <- mean(data$MRI, na.rm = TRUE)
bovengemiddeld_MRI <- data$MRI > gemiddeld_MRI

boxplot(
  data$VIQ ~ bovengemiddeld_MRI,
  main  = "VIQ versus hersengrootte",
  names = c("kleiner", "groter"),
  ylab  = "Verbaal IQ",
  xlab  = "Hersengrootte",
  col   = rainbow(2)
)

