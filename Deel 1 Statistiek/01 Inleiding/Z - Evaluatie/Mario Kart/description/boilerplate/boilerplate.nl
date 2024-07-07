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

# Bepaal het gevraagde
