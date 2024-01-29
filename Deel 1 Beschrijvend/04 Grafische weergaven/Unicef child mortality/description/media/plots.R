# Importeert de data UNICEF en vormt deze om
url <- "https://sdmx.data.unicef.org/ws/public/sdmxapi/rest/data/UNICEF,GLOBAL_DATAFLOW,1.0/BEL+DEU+FRA+GBR+LUX+NLD.CME_MRY0T4._T.?format=csv&startPeriod=2010"
data <- read.csv2(url, sep=",", dec=".",
                  colClasses = c("NULL","character", rep("NULL",4), rep("numeric", 2), rep("NULL", 22)))
colnames(data) <- c("country","year","rate")
data$country[data$country == "Netherlands (Kingdom of the)"] = "The Netherlands"

# Beantwoord hieronder de vragen
max_year <- max(data$year)
selectie <- data$year == max_year
aantal_landen <- length(data$country[selectie])

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(mar = c(8,4,4,4))
par(fg = "black")
barplot(data$rate[selectie],
        main = "Kindersterfte (jonger dan 5 jaar) in Europa",
        ylab = "Aantal kinderen per 1000 geboortes",
        names.arg = data$country[selectie],
        ylim = c(0, 5),
        col = rainbow(aantal_landen),
        las = 2)
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(mar = c(8,4,4,4))
par(fg = "white")
barplot(data$rate[selectie],
        main = "Kindersterfte (jonger dan 5 jaar) in Europa",
        ylab = "Aantal kinderen per 1000 geboortes",
        names.arg = data$country[selectie],
        ylim = c(0,5),
        col = rainbow(aantal_landen),
        las = 2,
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()

