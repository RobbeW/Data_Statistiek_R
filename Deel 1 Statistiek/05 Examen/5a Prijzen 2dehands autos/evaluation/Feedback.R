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
merk <- data$brand == "Ferrari"
standaard_ferrari <- 250000
prijzen_ferrari <- standaard_ferrari - (2025 - data$model_year[merk]) * 5000 - (data$milage_mile[merk] * 1.61)

context({
  testcaseAssert("De variabele merk bestaat.", function(env) {
    isTRUE(exists("merk", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("merk", function(env) {
      env$merk
    }, merk)
  })
})

context({
  testcaseAssert("De variabele standaard_ferrari bestaat.", function(env) {
    isTRUE(exists("standaard_ferrari", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("standaard_ferrari", function(env) {
      env$standaard_ferrari
    }, standaard_ferrari)
  })
})

context({
  testcaseAssert("De variabele prijzen_ferrari bestaat.", function(env) {
    isTRUE(exists("prijzen_ferrari", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("prijzen_ferrari", function(env) {
      env$prijzen_ferrari
    }, prijzen_ferrari)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})


