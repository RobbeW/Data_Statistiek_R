# Importeert de data van Infrabel
data <- read.csv2("https://opendata.infrabel.be/api/explore/v2.1/catalog/datasets/nationale-stiptheid-per-moment-en-per-maand/exports/csv",
                  sep = ";",
                  colClasses = c(rep("character",2), rep("NULL", 3), rep("numeric", 3), "NULL") )
colnames(data) <- c("maand", "tijdstip", "totaal_trein", "totaal_trein_stipt", "totaal_min")
data$maand <- as.Date(paste0(data$maand,"-01"))

# Aantal vertraagde treinen bepalen
trein_vertraging <- data$totaal_trein - data$totaal_trein_stipt
minuten_vertraging <- round(data$totaal_min / trein_vertraging, 2)

res <- 150
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
boxplot(minuten_vertraging~data$tijdstip,
        main = "Heeft mijn trein veel vertraging?",
        col = rainbow(4),
        xlab = "",
        ylab = "Gemiddeld aantal minuten")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
boxplot(minuten_vertraging~data$tijdstip,
        main = "Heeft mijn trein veel vertraging?",
        col = rainbow(4),
        xlab = "",
        ylab = "Gemiddeld aantal minuten",
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()
