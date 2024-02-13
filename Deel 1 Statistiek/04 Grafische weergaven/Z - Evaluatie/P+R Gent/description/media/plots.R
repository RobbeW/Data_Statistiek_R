# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/real-time-bezetting-pr-gent/exports/csv",
                  sep = ";",
                  colClasses = c("character", rep("NULL", 3),"numeric", rep("NULL", 4), rep("numeric", 2), rep("NULL", 7)) )
colnames(data) <- c("naam", "nu_open", "aantal_plaatsen", "beschikbaar")
data$nu_open <- data$nu_open == 1

# Plot
reserveringsgraad <- round((1-data$beschikbaar/data$aantal_plaatsen) * 100, 1)

res <- 150
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
par(mar = c(4, 15, 4, 4)) # zorgt voor een bredere marge voor de lange titels
barplot(reserveringsgraad,
        main = "Reserveringsgraad P+R",
        col = "dodgerblue3",
        xlab = "Percentage bezet",
        names.arg = data$naam,
        las = 1, horiz = TRUE)
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
par(mar = c(4, 15, 4, 4)) # zorgt voor een bredere marge voor de lange titels
barplot(reserveringsgraad,
        main = "Reserveringsgraad P+R",
        col = "dodgerblue3",
        xlab = "Percentage bezet",
        names.arg = data$naam,
        las = 1, horiz = TRUE,
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()
