# Data inlezen van de IMDB
data <- read.csv2("https://raw.githubusercontent.com/LearnDataSci/articles/master/Python%20Pandas%20Tutorial%20A%20Complete%20Introduction%20for%20Beginners/IMDB-Movie-Data.csv",
                  sep=",",dec=".",
                  colClasses = c("NULL", "character", rep("NULL",4), "character", rep("numeric", 5)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "runtime", "rating", "votes", "revenue_millions","metascore")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
metascore_afgerond <- round(data$metascore / 10) * 10

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
boxplot(data$runtime~metascore_afgerond,
     col = "cadetblue",
     xlab = "Metascore",
     ylab = "Speeltijd (in minuten)",
     main = "Speeltijd versus Metascore")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
boxplot(data$runtime~metascore_afgerond,
     col = "cadetblue",
     xlab = "Metascore",
     ylab = "Speeltijd (in minuten)",
     main = "Speeltijd versus Metascore",
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
dev.off()
