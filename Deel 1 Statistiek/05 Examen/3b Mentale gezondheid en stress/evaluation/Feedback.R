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
data <- data[c("User_ID","Age","Stress_Level.1.10.","Social_Media_Platform","Happiness_Index.1.10.")]

# Kolommen hernoemen
names(data)[names(data)=="User_ID"] <- "user_id"
names(data)[names(data)=="Age"] <- "age"
names(data)[names(data)=="Stress_Level.1.10."]   <- "stress_level"
names(data)[names(data)=="Social_Media_Platform"] <- "social_media_platform"
names(data)[names(data)=="Happiness_Index.1.10."] <- "happiness_index"

# Scores omvormen naar integers
data$stress_level <- as.numeric(data$stress_level) + runif(length(data$user_id), -0.5, 0.5)
data$age <- as.numeric(data$age)
data$happiness_index <- as.numeric(data$happiness_index) + runif(length(data$user_id), -0.5, 0.5)

# Beantwoord hieronder de vragen
plus30 <- data$age >= 30
colors <- c("dodgerblue", "deeppink2", "deepskyblue4", "pink2", "black", "red")

context({
  testcaseAssert("De variabele plus30 bestaat.", function(env) {
    isTRUE(exists("plus30", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("plus30", function(env) {
      env$plus30
    }, plus30)
  })
})

context({
  testcaseAssert("De variabele colors bestaat.", function(env) {
    isTRUE(exists("colors", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("colors", function(env) {
      env$colors
    }, colors)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("plot")
    testFunctionUsed("abline")
    testFunctionUsed("legend")
  })
})


