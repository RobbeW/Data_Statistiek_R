context({
  testcaseAssert("De variabele single_lap_no_shortcut bestaat.", function(env) {
    isTRUE(exists("single_lap_no_shortcut", env))
  })
  testcaseAssert("De variabele three_lap_no_shortcut bestaat.", function(env) {
    isTRUE(exists("three_lap_no_shortcut", env))
  })
  testcaseAssert("De variabele tracks bestaat.", function(env) {
    isTRUE(exists("tracks", env))
  })
  testcaseAssert("De variabele record_single_lap_no_shortcut bestaat.",
                 function(env) {
                   isTRUE(exists("record_single_lap_no_shortcut", env))
                 })
  testcaseAssert("De variabele record_three_lap_no_shortcut bestaat.",
                 function(env) {
                   isTRUE(exists("record_three_lap_no_shortcut", env))
                 })
  testcaseAssert("De variabele verschil bestaat.", function(env) {
    isTRUE(exists("verschil", env))
  })
  testcaseAssert("De variabele trage_tracks bestaat.", function(env) {
    isTRUE(exists("trage_tracks", env))
  })
})

# Gegevens ophalen
data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/",
                        "tidytuesday/master/data/2021/2021-05-25/records.csv"),
                 header = TRUE)
# Aanpassen naar de recordtijden en wijzing kolomnamen
data <- aggregate(data$time, by = list(track = data$track, type = data$type,
                                       shortcut = data$shortcut), FUN = min)
colnames(data) <- c("track", "type", "shortcut", "record_time")
data <- data[order(data$track, data$type, data$shortcut), ]
rownames(data) <- seq_len(nrow(data))

# Filter en selectie uitvoeren
single_lap_no_shortcut <- data$type == "Single Lap" & data$shortcut == "No"
three_lap_no_shortcut <- data$type == "Three Lap" & data$shortcut == "No"

tracks <- data$track[single_lap_no_shortcut]

record_single_lap_no_shortcut <- data$record_time[single_lap_no_shortcut]
record_three_lap_no_shortcut <- data$record_time[three_lap_no_shortcut]

verschil <- round(record_three_lap_no_shortcut
                  - 3 * record_single_lap_no_shortcut, 2)

trage_tracks <- tracks[verschil >= 5]

context({
  testcase("De variabelen werden correct bepaald:", {
    testEqual("single_lap_no_shortcut", function(env) {
      env$single_lap_no_shortcut
    }, single_lap_no_shortcut)
    testEqual("three_lap_no_shortcut", function(env) {
      env$three_lap_no_shortcut
    }, three_lap_no_shortcut)
  })
})
context({
  testcase("De variabelen werden correct bepaald:", {
    testEqual("tracks", function(env) {
      env$tracks
    }, tracks)
  })
})
context({
  testcase("De variabelen werden correct bepaald:", {
    testEqual("record_single_lap_no_shortcut", function(env) {
      env$record_single_lap_no_shortcut
    }, record_single_lap_no_shortcut)
    testEqual("record_three_lap_no_shortcut", function(env) {
      env$record_three_lap_no_shortcut
    }, record_three_lap_no_shortcut)
  })
})
context({
  testcase("De variabelen werden correct bepaald:", {
    testEqual("verschil", function(env) {
      env$verschil
    }, verschil)
    testFunctionUsedInVar("round", "verschil")
  })
})
context({
  testcase("De variabelen werden correct bepaald:", {
    testEqual("trage_tracks", function(env) {
      env$trage_tracks
    }, trage_tracks)
  })
})