# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bevolkingsaantal-per-jaar-gent/exports/csv",
                  sep = ";",
                  colClasses = c(rep("NULL", 5), "numeric", "character") )
colnames(data) <- c("jaar", "aantal")
data$aantal <- as.integer(data$aantal)
data <- data[order(data$jaar),]
rownames(data) <- seq_len(nrow(data))

# Plot
laatste_15 <- data$jaar > 2023 - 15

res <- 150
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
barplot(data$aantal[laatste_15],
        main = "Aantal inwoners in Gent",
        yaxp= c(0, 280000, 14),
        col = "yellowgreen",
        names.arg = data$jaar[laatste_15],
        las = 2)
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
barplot(data$aantal[laatste_15],
        main = "Aantal inwoners in Gent",
        yaxp= c(0, 280000, 14),
        col = "yellowgreen",
        names.arg = data$jaar[laatste_15],
        las = 2,
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()

