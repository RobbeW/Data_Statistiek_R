# Data inlezen van de IMDB
data <- read.csv2("https://raw.githubusercontent.com/LearnDataSci/articles/master/Python%20Pandas%20Tutorial%20A%20Complete%20Introduction%20for%20Beginners/IMDB-Movie-Data.csv",
                  sep=",",dec=".",
                  colClasses = c("NULL", "character", rep("NULL",4), "character", rep("numeric", 5)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "runtime", "rating", "votes", "revenue_millions","metascore")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
n = length(data$runtime)
aantal_staven = sqrt(n)

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
hist(data$runtime,
     breaks = aantal_staven,
     main = "Histogram van de speeltijd",
     xlab = "Speeltijd in minuten",
     ylab = "Aantal films",
     xlim = c(60,200),
     col = "cadetblue")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
hist(data$runtime,
     breaks = aantal_staven,
     main = "Histogram van de speeltijd",
     xlab = "Speeltijd in minuten",
     ylab = "Aantal films",
     col = "cadetblue",
     xlim = c(60,200),
    border = "white",
    col.main = "white",
    col.lab = "white",
    col.axis = "white"
)
dev.off()
