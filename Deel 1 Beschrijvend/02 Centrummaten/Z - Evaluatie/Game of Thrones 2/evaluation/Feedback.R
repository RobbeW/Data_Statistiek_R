# Dataset Game of Thrones
data <- read.csv(paste0("https://raw.githubusercontent.com/MuazmaZ/got-data-analysis/master/got_csv_full_clean.csv"),
                 sep = ",", header = TRUE,
                 colClasses = c("numeric", "NULL", "numeric", rep("character",2), rep("NULL", 2), rep("numeric", 2), "NULL", rep("numeric",3)))
# De kolommen hernoemen
colnames(data) <- c("season", "episode", "name", "director",
                    "US_viewers_million", "runtime_mins", "IMDB_votes", "IMDB_score", "notable_deaths")


# Bepaal hier een antwoord op de vragen
gem_speeltijd <- round(mean(data$runtime_mins) / 60, 2)

# Lange afleveringen
lange_afleveringen <- data$name[data$runtime_mins >= 75]

# Scores van de seizoenen
seizoen1 <- data$IMDB_score[data$season == 1]
mediaan_seizoen1 <- median(seizoen1)
seizoen8 <- data$IMDB_score[data$season == 8]
mediaan_seizoen8 <- median(seizoen8)


context({
  testcaseAssert("De variabele gem_speeltijd bestaat.", function(env) {
    isTRUE(exists("gem_speeltijd", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gem_speeltijd", function(env) {
      env$gem_speeltijd
    }, gem_speeltijd)
  })
  testFunctionUsedInVar("mean", "gem_speeltijd")
})

context({
  testcaseAssert("De variabele lange_afleveringen bestaat.", function(env) {
    isTRUE(exists("lange_afleveringen", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("lange_afleveringen", function(env) {
      env$lange_afleveringen
    }, lange_afleveringen)
  })
})

context({
  testcaseAssert("De variabele mediaan_seizoen1 bestaat.", function(env) {
    isTRUE(exists("mediaan_seizoen1", env))
  })
  testcaseAssert("De variabele mediaan_seizoen8 bestaat.", function(env) {
    isTRUE(exists("mediaan_seizoen8", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("mediaan_seizoen1", function(env) {
      env$mediaan_seizoen1
    }, mediaan_seizoen1)
    testEqual("mediaan_seizoen8", function(env) {
      env$mediaan_seizoen8
    }, mediaan_seizoen8)
    testFunctionUsedInVar("median", "mediaan_seizoen1")
    testFunctionUsedInVar("median", "mediaan_seizoen8")
  })
})