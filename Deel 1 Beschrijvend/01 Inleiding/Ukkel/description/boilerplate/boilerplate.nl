# Gegevens van het KMI
data <- read.table("https://www.meteo.be/resources/climatology/uccle_month/Ukkel_waarnemingen.txt",
                   header = FALSE, skip = 5)
colnames(data) <- c("datum", "temp_max", "temp_min", "temp_gem", "neerslag",
                    "wind", "zonneschijn")
data$zonneschijn <- strtoi(as.difftime(data$zonneschijn,
                                       format = "%H:%M", units = "mins"))