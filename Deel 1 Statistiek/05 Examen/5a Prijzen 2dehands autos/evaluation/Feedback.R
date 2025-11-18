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

# Scores omvormen naar integers
data$model_year <- as.numeric(data$model_year)
data$milage <- as.numeric(gsub(',', '',substr(data$milage,1,nchar(data$milage)-3)))

# Beantwoord hieronder de vragen
merk <- data$brand == "Ferrari"
standaard_ferrari <- 250000
prijs_per_wagen <- standaard_ferrari - (2025 - data$model_year) * 5000 - (data$milage * 1.61)

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
  testcaseAssert("De variabele prijs_per_wagen bestaat.", function(env) {
    isTRUE(exists("prijs_per_wagen", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("prijs_per_wagen", function(env) {
      env$prijs_per_wagen
    }, prijs_per_wagen)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})


