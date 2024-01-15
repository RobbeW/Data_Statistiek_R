# Data inlezen van de IMDB
data <- read.csv2("http://tinyurl.com/mr4b4bz8",
                  sep=",",dec=".",
                  colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("NULL",2)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "metascore", "rating", "positivity_ratio", "time_to_beat","time_to_beat_extra")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
lang <- data$time_to_beat >= 24

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
boxplot(data$metascore~lang,
     col = "cadetblue",
     ylab = "Metascore",
     xlab = "Uitspeeltijd",
     names = c("Kort (< 24 uur)", "Lang (>= 24 uur)"),
     main = "Metascore versus speeltijd")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
boxplot(data$metascore~lang,
     col = "cadetblue",
     ylab = "Metascore",
     xlab = "Uitspeeltijd",
     names = c("Kort (< 24 uur)", "Lang (>= 24 uur)"),
     main = "Metascore versus speeltijd",
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
dev.off()
