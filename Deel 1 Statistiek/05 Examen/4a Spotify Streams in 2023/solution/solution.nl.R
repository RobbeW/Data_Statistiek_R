library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/spotify-2023.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
data <- data[c("track_name","artist.s._name","released_year","streams")]

# Kolommen hernoemen
names(data)[names(data)=="artist.s._name"] <- "artists_name"
names(data)[names(data)=="released_year"] <- "release_year"
names(data)[names(data)=="streams"] <- "mil_streams"

# Scores omvormen naar integers
data$mil_streams <- as.numeric(data$mil_streams) / 1000000

# Beantwoord hieronder de vragen
totaal <- sum(data$mil_streams)
n <- length(data$mil_streams)
aantal_staven <- floor(sqrt(n))

hist(data$mil_streams, breaks = aantal_staven, col = "coral", main = "Aantal Spotify streams in 2023", xlab = "Aantal Streams (x 1.000.000)", ylab = "Aantal Nummers", xlim = c(0, 4000))