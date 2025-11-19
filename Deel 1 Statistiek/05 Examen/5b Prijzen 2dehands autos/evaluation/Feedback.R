library(dplyr)

# Data inlezen:
autosTeKoop <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/used_cars.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)
prijzenAstonMartin <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/prices_aston_martin.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
autosTeKoop <- autosTeKoop[c("brand","model","model_year","milage")]

# Kolommen hernoemen
names(autosTeKoop)[names(autosTeKoop)=="milage"] <- "milage_mile"

# Scores omvormen naar integers
autosTeKoop$model_year <- as.numeric(autosTeKoop$model_year)
autosTeKoop$milage_mile <- as.numeric(gsub(',', '',substr(autosTeKoop$milage_mile,1,nchar(autosTeKoop$milage_mile)-3)))
prijzenAstonMartin$new_price <- as.numeric(prijzenAstonMartin$new_price)

# Beantwoord hieronder de vragen
aantal_aston_martin <- sum(autosTeKoop$brand == "Aston Martin")
data <- merge(autosTeKoop, prijzenAstonMartin, by = "model")
prijzen_aston <- data$new_price - sqrt(2025 - data$model_year) * 3000 - sqrt(data$milage_mile * 1.61) * 100

context({
  testcaseAssert("De variabele aantal_aston_martin bestaat.", function(env) {
    isTRUE(exists("aantal_aston_martin", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("aantal_aston_martin", function(env) {
      env$aantal_aston_martin
    }, aantal_aston_martin)
  })
})

context({
  testcaseAssert("De variabele data bestaat.", function(env) {
    isTRUE(exists("data", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("data", function(env) {
      env$data
    }, data)
  })
})

context({
  testcaseAssert("De variabele prijzen_aston bestaat.", function(env) {
    isTRUE(exists("prijzen_aston", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("prijzen_aston", function(env) {
      env$prijzen_aston
    }, prijzen_aston)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})


