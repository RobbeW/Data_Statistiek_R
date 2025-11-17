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

# Scores omvormen naar integers
data$streams <- as.numeric(data$streams) / 1000000

# Beantwoord hieronder de vragen
n <- length(data$streams)
aantal_staven <- sqrt(n)

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
hist(data$streams,
    breaks = aantal_staven,
    col = "coral",
    main = "Aantal Spotify streams in 2023",
    xlab = "Aantal Streams (x 1.000.000)",
    ylab = "Aantal Nummers",
    xlim = c(0, 4000))
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
hist(data$streams,
    breaks = aantal_staven,
    col = "coral",
    main = "Aantal Spotify streams in 2023",
    xlab = "Aantal Streams (x 1.000.000)",
    ylab = "Aantal Nummers",
    xlim = c(0, 4000),
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white")
dev.off()
