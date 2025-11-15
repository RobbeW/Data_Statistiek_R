library(dplyr)
set.seed(19845)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/mental_health.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
data <- data[c("User_ID","Stress_Level.1.10.","Exercise_Frequency.week.","Happiness_Index.1.10.")]

# Kolommen hernoemen
names(data)[names(data)=="User_ID"] <- "user_id"
names(data)[names(data)=="Stress_Level.1.10."]   <- "stress_level"
names(data)[names(data)=="Exercise_Frequency.week."] <- "exercise_frequency"
names(data)[names(data)=="Happiness_Index.1.10."] <- "happiness_index"

# Scores omvormen naar integers
data$stress_level <- as.numeric(data$stress_level) + runif(length(data$user_id), -0.5, 0.5)
data$exercise_frequency <- as.numeric(data$exercise_frequency) + runif(length(data$user_id), -0.5, 0.5)
data$happiness_index <- as.numeric(data$happiness_index) + runif(length(data$user_id), -0.5, 0.5)

# Beantwoord hieronder de vragen
