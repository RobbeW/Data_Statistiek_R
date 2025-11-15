library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/mental_health.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
data <- data[c("User_ID","Stress_Level","Exercise_Frequency","Happiness_Index")]

# Kolommen hernoemen
names(data)[names(data)=="User_ID"] <- "user_id"
names(data)[names(data)=="Stress_Level"]   <- "stress_level"
names(data)[names(data)=="Exercise_Frequency"] <- "exercise_frequency"
names(data)[names(data)=="Happiness_Index"] <- "happiness_index"

# Scores omvormen naar integers
data$stress_level <- as.integer(data$stress_level)
data$exercise_frequency <- as.integer(data$exercise_frequency)
data$happiness_index <- as.integer(data$happiness_index)

# Beantwoord hieronder de vragen
sporters <- data$exercise_frequency >= 3

plot(data$stress_level[sporters]~data$happiness_index[sporters],
     xlab = "Happiness Index",
     ylab = "Stress Level",
     main = "Stressniveau versus Mentale gezondheid bij sporters")
abline(lm(data$stress_level[sporters]~data$happiness_index[sporters]), col = "red")
