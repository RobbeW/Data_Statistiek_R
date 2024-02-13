# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bevolkingsaantal-per-wijk-per-jaar-gent/exports/csv",
                  sep = ";",
                  colClasses = c(rep("NULL", 5), "numeric", "character", "NULL","character", rep("NULL", 2)) )
colnames(data) <- c("jaar", "aantal", "wijk")
data$aantal <- as.integer(data$aantal)
data <- data[order(data$jaar),]
rownames(data) <- seq_len(nrow(data))

# Plot
laatste <- data$jaar == 2023

totaal <- sum(data$aantal[laatste])
percentages <- round(data$aantal[laatste] / totaal * 100, 0)

labels <- paste0(data$wijk[laatste], " (", percentages,"%)")

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res * 2,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
pie(percentages,
    main = "Aantal inwoners per wijk",
    col = rainbow(25),
    labels = labels)
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res * 2,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
pie(percentages,
    main = "Aantal inwoners per wijk",
    col = rainbow(25),
    labels = labels,
    border = "white",
    col.main = "white",
    col.lab = "white",
    col.axis = "white"
)

dev.off()

