# Dataset Game of Thrones
data <- read.csv(paste0("https://raw.githubusercontent.com/MuazmaZ/got-data-analysis/master/got_csv_full_clean.csv"),
                 sep = ",", header = TRUE,
                 colClasses = c("numeric", "NULL", "numeric", rep("character",2), rep("NULL", 2), rep("numeric", 2), "NULL", rep("numeric",3)))
# De kolommen hernoemen
colnames(data) <- c("season", "episode", "name", "director",
                    "US_viewers_million", "runtime_mins", "IMDB_votes", "IMDB_score", "notable_deaths")


# Bepaal hier een antwoord op de vragen
mediaan_kijkers <- median(data$US_viewers_million) * 10^6

# Gemiddelde rating
seizoen1 <- data$IMDB_score[data$season == 1]
gem_seizoen1 <- mean(seizoen1)
seizoen8 <- data$IMDB_score[data$season == 8]
gem_seizoen8 <- mean(seizoen8)

# Bloederige afleveringen
mediaan_notable_death <- median(data$notable_deaths)
bloederige_afleveringen <- data$name[data$notable_deaths > 2*mediaan_notable_death]


context({
  testcaseAssert("De variabele mediaan_kijkers bestaat.", function(env) {
    isTRUE(exists("mediaan_kijkers", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("mediaan_kijkers", function(env) {
      env$mediaan_kijkers
    }, mediaan_kijkers)
  })
  testFunctionUsedInVar("median", "mediaan_kijkers")
})

context({
  testcaseAssert("De variabele gem_seizoen1 bestaat.", function(env) {
    isTRUE(exists("gem_seizoen1", env))
  })
  testcaseAssert("De variabele gem_seizoen8 bestaat.", function(env) {
    isTRUE(exists("gem_seizoen8", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("gem_seizoen1", function(env) {
      env$gem_seizoen1
    }, gem_seizoen1)
    testEqual("gem_seizoen1", function(env) {
      env$gem_seizoen1
    }, gem_seizoen1)
    testFunctionUsedInVar("mean", "gem_seizoen1")
    testFunctionUsedInVar("mean", "gem_seizoen8")
  })
})


context({
  testcaseAssert("De variabele mediaan_notable_death bestaat.", function(env) {
    isTRUE(exists("mediaan_notable_death", env))
  })
  testcaseAssert("De variabele bloederige_afleveringen bestaat.", function(env) {
    isTRUE(exists("bloederige_afleveringen", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("mediaan_notable_death", function(env) {
      env$mediaan_notable_death
    }, mediaan_notable_death)
    testFunctionUsedInVar("median", "mediaan_notable_death")
    testEqual("bloederige_afleveringen", function(env) {
      env$bloederige_afleveringen
    }, bloederige_afleveringen)
  })
})