# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bevolkingsaantal-per-jaar-gent/exports/csv",
                  sep = ";",
                  colClasses = c(rep("NULL", 5), "numeric", "character") )
colnames(data) <- c("jaar", "aantal")
data$aantal <- as.integer(data$aantal)
data <- data[order(data$jaar),]
rownames(data) <- seq_len(nrow(data))

# Plot
laatste_15 <- data$jaar > 2023-15

barplot(data$aantal[laatste_15],
        main = "Aantal inwoners in Gent",
        yaxp= c(0, 280000, 14),
        col = "yellowgreen",
        names.arg = data$jaar[laatste_15],
        las = 2)
