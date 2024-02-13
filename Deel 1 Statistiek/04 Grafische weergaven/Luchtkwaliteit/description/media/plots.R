# Data inlezen van de Intergewestelijke Cel voor het Leefmilieu
locaties <- c("BETR701" = "Baudelo", "BETR702" = "Afrit Zuid", "BETR710" = "Nachtegaalstadion", "BETR716" = "Bourgoyen")
data <- read.csv2("https://geo.irceline.be/realtime/ows?service=WFS&version=1.3.0&request=GetFeature&typeName=realtime:pm10_24hmean_station&outputFormat=csv",
                  sep=",",
                  colClasses = c("NULL", "character", "NULL", "character", "NULL", "numeric", rep("NULL", 2)) )
data <- data[data$ab_eoi_code %in% c("BETR701", "BETR702", "BETR710", "BETR716"), ]
colnames(data) <- c("locatie", "datum", "waarde")
data$locatie <- locaties[data$locatie]
rownames(data) <- seq_len(nrow(data))

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
boxplot(data$waarde~data$locatie,
        main = "PM10 metingen in en rond Gent",
        ylab = "PM10 waarde in microgram/m³",
        xlab = "Locatie",
        col = c("red", "green", "blue"))
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
boxplot(data$waarde~data$locatie,
        main = "PM10 metingen in en rond Gent",
        ylab = "PM10 waarde in microgram/m³",
        xlab = "Locatie",
        col = c("red", "green", "blue"),
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)
dev.off()
