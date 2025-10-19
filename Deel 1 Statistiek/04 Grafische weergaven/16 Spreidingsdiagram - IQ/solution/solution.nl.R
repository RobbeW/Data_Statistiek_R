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
vrouwen <- data$geslacht ==  "Female"

plot(data$VIQ[vrouwen]~data$MRI[vrouwen],
     xlab = "Verbaal IQ",
     ylab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan bij vrouwen",
     pch = 19)
abline(lm(data$VIQ[vrouwen]~data$MRI[vrouwen]),
       col = "red")
