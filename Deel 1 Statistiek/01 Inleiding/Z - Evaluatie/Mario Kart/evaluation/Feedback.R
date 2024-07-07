# Gegevens ophalen
data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/ti",
                        "dytuesday/master/data/2021/2021-05-25/records.csv"),
                 header = TRUE)
# Aanpassen naar de recordtijden en wijzing kolomnamen
data <- aggregate(data$time, by = list(track = data$track, type = data$type,
                                       shortcut = data$shortcut), FUN = min)
data <- data[data$shortcut == "No", ]
data$shortcut <- NULL
colnames(data) <- c("track", "type", "record_time")

data <- data[order(data$track, data$type), ]
rownames(data) <- NULL

# Filter en selectie uitvoeren
single_lap <- data$type == "Single Lap"
three_lap <- data$type == "Three Lap"

record_single_lap <- data$record_time[single_lap]
record_three_lap <- data$record_time[three_lap]

verschil <- round(record_three_lap
                  - 3 * record_single_lap, 2)

tracks <- data$track[single_lap]

context({
  testcaseAssert("De variabele single_lap bestaat.", function(env) {
    isTRUE(exists("single_lap", env))
  })
  testcaseAssert("De variabele three_lap bestaat.", function(env) {
    isTRUE(exists("three_lap", env))
  })
  testcase("De variabelen werden correct bepaald:", {
    testEqual("single_lap", function(env) {
      env$single_lap
    }, single_lap)
    testEqual("three_lap", function(env) {
      env$three_lap
    }, three_lap)
  })
})

context({
  testcaseAssert("De variabele record_single_lap bestaat.",
                 function(env) {
                   isTRUE(exists("record_single_lap", env))
                 })
  testcaseAssert("De variabele record_three_lap bestaat.",
                 function(env) {
                   isTRUE(exists("record_three_lap", env))
                 })
  testcase("De variabelen werden correct bepaald:", {
    testEqual("record_single_lap", function(env) {
      env$record_single_lap
    }, record_single_lap)
    testEqual("record_three_lap", function(env) {
      env$record_three_lap
    }, record_three_lap)
  })
})

context({
  testcaseAssert("De variabele verschil bestaat.", function(env) {
    isTRUE(exists("verschil", env))
  })
  testcase("De variabelen werden correct bepaald:", {
    testEqual("verschil", function(env) {
      env$verschil
    }, verschil)
    testFunctionUsedInVar("round", "verschil")
  })
})

context({
  testcaseAssert("De variabele tracks bestaat.", function(env) {
    isTRUE(exists("tracks", env))
  })
  testcase("De variabelen werden correct bepaald:", {
    testEqual("tracks", function(env) {
      env$tracks
    }, tracks)
  })
})
context({
  testcase("Resultaat werd correct bepaald:", {
    testEqual("De tracks waarop het verschil van drie rondjes met 3 keer één rondje groot is:", function(env) {
      env$evaluationResult
    }, tracks[verschil >= 5])
  })
})