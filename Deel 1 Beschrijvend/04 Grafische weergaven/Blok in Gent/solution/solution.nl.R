# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bloklocaties-gent/exports/csv",
                  sep = ";",
                  colClasses = c("NULL", "character", rep("NULL", 5), rep("numeric", 2), rep("NULL", 4), "character", rep("NULL", 5)) )
colnames(data) <- c("naam", "capaciteit", "gereserveerd", "status")
data <- data[data$status == "Reserveerbaar" && data$capaciteit != 0,1:3]
data <- data[order(data$capaciteit, decreasing=TRUE),]
rownames(data) <- seq_len(nrow(data))

# Plot
reserveringsgraad <- round(data$gereserveerd/data$capaciteit * 100, 1)
par(mar = c(4,20,4,4)) # zorgt voor een bredere marge voor de lange titels
barplot(reserveringsgraad,
        main = "Reserveringsgraad blok@Gent", 
        col = "steelblue",
        xlab = "Percentage bezet",
        names.arg = data$naam,
        las = 1, horiz = TRUE)
