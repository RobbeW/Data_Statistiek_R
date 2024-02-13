# Gegevens ophalen
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-05-25/records.csv",
                 header = TRUE)
# Aanpassen naar de recordtijden en wijzing kolomnamen
data <- aggregate(data$time, by = list(track = data$track, type = data$type,
                                       shortcut = data$shortcut), FUN = min)
colnames(data) <- c("track", "type", "shortcut", "record_time")
data <- data[order(data$track, data$type, data$shortcut), ]
rownames(data) <- seq_len(nrow(data))

# Bepaal het gevraagde
