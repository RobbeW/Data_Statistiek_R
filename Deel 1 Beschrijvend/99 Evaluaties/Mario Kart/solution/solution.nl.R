# Gegevens ophalen
data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/ti",
                        "dytuesday/master/data/2021/2021-05-25/records.csv"),
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

record_single_lap_no_shortcut <- data$record_time[single_lap_no_shortcut]
record_three_lap_no_shortcut <- data$record_time[three_lap_no_shortcut]

verschil <- round(record_three_lap_no_shortcut
                  - 3 * record_single_lap_no_shortcut, 2)