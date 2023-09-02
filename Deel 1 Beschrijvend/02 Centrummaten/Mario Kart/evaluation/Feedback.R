context({
  # Gegevens ophalen
  data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-05-25/records.csv",
                   header = TRUE)
  # Aanpassen naar de recordtijden en wijzing kolomnamen
  data <- aggregate(data$time, by = list(track = data$track, type = data$type,
                                         shortcut = data$shortcut), FUN = min)
  colnames(data) <- c("track", "type", "shortcut", "record_time")
  data <- data[order(data$track, data$type, data$shortcut), ]

  # Filter en selectie uitvoeren
  single_lap_no_shortcut <- data$type == "Single Lap" & data$shortcut == "No"
  three_lap_no_shortcut <- data$type == "Three Lap" & data$shortcut == "No"

  record_single_lap_no_shortcut <- data$record_time[single_lap_no_shortcut]
  record_three_lap_no_shortcut <- data$record_time[three_lap_no_shortcut]

  verschil <- round(record_three_lap_no_shortcut
                  - 3 * record_single_lap_no_shortcut, 2)

  testcase("De variabelen werden correct bepaald:", {
    testEqual("single_lap_no_shortcut", function(env) {
      env$single_lap_no_shortcut
    }, single_lap_no_shortcut)
    testEqual("three_lap_no_shortcut", function(env) {
      env$three_lap_no_shortcut
    }, three_lap_no_shortcut)
    testEqual("record_single_lap_no_shortcut", function(env) {
      env$record_single_lap_no_shortcut
    }, record_single_lap_no_shortcut)
    testEqual("record_three_lap_no_shortcut", function(env) {
      env$record_three_lap_no_shortcut
    }, record_three_lap_no_shortcut)
    testEqual("verschil", function(env) {
      env$verschil
    }, verschil)
  })
})