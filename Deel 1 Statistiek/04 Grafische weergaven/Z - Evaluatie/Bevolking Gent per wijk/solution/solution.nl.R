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

pie(percentages,
    main = "Aantal inwoners per wijk",
    col = rainbow(25),
    labels = labels)
