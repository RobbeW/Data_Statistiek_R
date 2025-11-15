library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/mental_health.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
data <- data[c("User_ID","Stress_Level(1-10)","Exercise_Frequency(week)","Happiness_Index(1-10)")]

# Kolommen hernoemen
names(data)[names(data)=="User_ID"] <- "user_id"
names(data)[names(data)=="Stress_Level(1-10)"]   <- "stress_level"
names(data)[names(data)=="Exercise_Frequency(week)"] <- "exercise_frequency"
names(data)[names(data)=="Happiness_Index(1-10)"] <- "happiness_index"

# Scores omvormen naar integers
data$stress_level <- as.integer(data$stress_level)
data$exercise_frequency <- as.integer(data$exercise_frequency)
data$happiness_index <- as.integer(data$happiness_index)

# Beantwoord hieronder de vragen
sporters <- data$exercise_frequency >= 3

context({
  testcaseAssert("De variabele sporters bestaat.", function(env) {
    isTRUE(exists("sporters", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("sporters", function(env) {
      env$sporters
    }, sporters)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("plot")
    testFunctionUsed("abline")
  })
})


