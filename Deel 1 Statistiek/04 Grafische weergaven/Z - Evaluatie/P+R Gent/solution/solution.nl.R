# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/real-time-bezetting-pr-gent/exports/csv",
                  sep = ";",
                  colClasses = c("character", rep("NULL", 3),"numeric", rep("NULL", 4), rep("numeric", 2), rep("NULL", 7)) )
colnames(data) <- c("naam", "nu_open", "aantal_plaatsen", "beschikbaar")
data$nu_open <- data$nu_open == 1

# Plot
bezettingsgraad <- round((1-data$beschikbaar/data$aantal_plaatsen) * 100, 1)
par(mar = c(4, 13, 4, 4)) # zorgt voor een bredere marge voor de lange titels
barplot(bezettingsgraad,
        main = "Bezettingsgraad P+R",
        col = "dodgerblue3",
        xlab = "Percentage bezet",
        names.arg = data$naam,
        las = 1, horiz = TRUE)
