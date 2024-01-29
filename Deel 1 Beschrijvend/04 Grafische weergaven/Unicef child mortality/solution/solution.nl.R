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

barplot(data$rate[selectie],
        main = "Kindersterfte (jonger dan 5 jaar) in Europe",
        ylab = "Aantal kinderen per 1000 geboortes",
        names.arg = data$country[selectie],
        ylim = c(0,5),
        col = rainbow(aantal_landen))
