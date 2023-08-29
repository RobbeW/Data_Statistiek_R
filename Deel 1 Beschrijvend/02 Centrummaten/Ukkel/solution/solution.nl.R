# Gegevens van het KMI
data <- read.table("https://www.meteo.be/resources/climatology/uccle_month/Ukkel_waarnemingen.txt",
                   header = FALSE, skip = 5)
colnames(data) <- c("datum", "temp_max", "temp_min", "temp_gem", "neerslag",
                    "wind", "zonneschijn")
data$zonneschijn <- strtoi(as.difftime(data$zonneschijn,
                                       format = "%H:%M", units = "mins"))

# Dagen met bovengemiddeld aantal minuten zon
gemiddelde_zonneschijn <- mean(data$zonneschijn)
veel_zon <- (data$zonneschijn > gemiddelde_zonneschijn)
zonnige_dagen <- data$datum[veel_zon]

# Dagen met ondergemiddelde hoeveelheid neerslag
gemiddelde_neerslag <- mean(data$neerslag)
weinig_neerslag <- (data$neerslag < gemiddelde_neerslag)
droge_dagen <- data$datum[weinig_neerslag]