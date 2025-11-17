library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/spotify-2023.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
data <- data[c("track_name","artist.s._name","released_year","streams")]

# Kolommen hernoemen
names(data)[names(data)=="artist.s._name"] <- "artists_name"
names(data)[names(data)=="released_year"] <- "release_year"

# Scores omvormen naar integers
data$streams <- as.numeric(data$streams) / 1000000

# Beantwoord hieronder de vragen
n <- length(data$streams)
aantal_staven <- sqrt(n)

context({
  testcaseAssert("De variabele aantal_staven bestaat.", function(env) {
    isTRUE(exists("aantal_staven", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("aantal_staven", function(env) {
      env$aantal_staven
    }, aantal_staven)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("hist")
  })
})


