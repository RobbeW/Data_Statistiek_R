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
names(data)[names(data)=="streams"] <- "mil_streams"

# Scores omvormen naar integers
data$mil_streams <- as.numeric(data$mil_streams) / 1000000

# Beantwoord hieronder de vragen
taylor_swift <- grepl("Taylor Swift", data$artists_name)
totaal <- sum(data$mil_streams[taylor_swift])
aantal_staven <- floor(sqrt(length(data$mil_streams[taylor_swift])))

context({
  testcaseAssert("De variabele taylor_swift bestaat.", function(env) {
    isTRUE(exists("taylor_swift", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("taylor_swift", function(env) {
      env$taylor_swift
    }, taylor_swift)
  })
})

context({
  testcaseAssert("De variabele totaal bestaat.", function(env) {
    isTRUE(exists("totaal", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("totaal", function(env) {
      env$totaal
    }, totaal)
  })
})

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


