# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Data ophalen van Elia
bronnen <- c(CP = "Kolen", LF = "Aardolie", NG = "Aardgas", NU = "Kernenergie", SO = "Zon", WA = "Water", WI = "Wind", Other = "Andere")
kleuren <- c(CP = "#a65628", LF = "#e41a1c", NG = "#ff7f00", NU = "#984ea3", SO = "#ffff33", WA = "#377eb8", WI = "#4daf4a", Other = "#cccccc")
res <- GET("https://opendata.elia.be/api/explore/v2.1/catalog/datasets/ods033/records?select=sum(generatedpower)%20as%20generatedpower&where=datetime%20%3E%20now(hour%3D0%2Cminute%3D0)&group_by=date_format(datetime%2C%20%27YYYY%2FMM%2Fdd%27)%20as%20date%2C%20fuelcode&order_by=date%20DESC&limit=20")
data <- fromJSON(rawToChar(res$content))$results
data$bron <- bronnen[data$fuelcode]
data$kleurcode <- kleuren[data$fuelcode]

# Beantwoord hieronder de vragen
totaal <- sum(data$generatedpower)
percentages <- round(data$generatedpower / totaal * 100, 1)

energielabels <- paste0(data$bron, " (", percentages, "%)")

niet_nul <- data$generatedpower != 0

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
pie(data$generatedpower[niet_nul],
    labels = energielabels[niet_nul],
    col = data$kleurcode[niet_nul],
    main = "Energiemix in België op 5 januari 2023")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
pie(data$generatedpower[niet_nul],
    labels = energielabels[niet_nul],
    col = data$kleurcode[niet_nul],
    main = "Energiemix in België op 5 januari 2023",
    border = "white",
    col.main = "white",
    col.lab = "white",
    col.axis = "white"
)
dev.off()
