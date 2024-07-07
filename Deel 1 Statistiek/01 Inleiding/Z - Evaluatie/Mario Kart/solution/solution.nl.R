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

tracks[verschil >= 5]