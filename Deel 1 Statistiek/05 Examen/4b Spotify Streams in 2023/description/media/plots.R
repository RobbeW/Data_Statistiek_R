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
taylor_swift <- grepl("Taylor Swift", data$artists_name)
totaal <- sum(data$mil_streams[taylor_swift])
aantal_staven <- floor(sqrt(length(data$mil_streams[taylor_swift])))

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
hist(data$mil_streams[taylor_swift],
    breaks = aantal_staven,
    col = "coral",
    main = "Aantal Spotify streams in 2023",
    xlab = "Aantal Streams (x 1.000.000)",
    ylab = "Aantal Nummers")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
hist(data$mil_streams[taylor_swift],
    breaks = aantal_staven,
    col = "coral",
    main = "Aantal Spotify streams in 2023",
    xlab = "Aantal Streams (x 1.000.000)",
    ylab = "Aantal Nummers",
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white")
dev.off()
