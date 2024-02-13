# Data inlezen van de IMDB
data <- read.csv2("https://download.waterinfo.be/tsmdownload/KiWIS/KiWIS?datasource=1&type=queryServices&service=kisters&request=getTimeseriesValueLayer&timeseriesgroup_id=192929&metadata=true&md_returnfields=station_name,station_no,stationparameter_name&format=csv",
                  sep=";",dec=".",
                  colClasses = c("NULL", "character", "NULL", "numeric",  rep("NULL",2), "character", "NULL", "character") )
data <- data[data$stationparameter_name == "Bodemverzadiging(0-10cm)",c(1,2,3)]
data$timestamp <- as.Date(data$timestamp)
data$station_name <- gsub('.{2}$', '', data$station_name)
data <- data[data$timestamp > "2024-01-01",]
colnames(data) <- c("datum", "verzadiging", "locatie")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
n = length(data$runtime)
aantal_staven = sqrt(n)

hist(data$runtime,
     breaks = aantal_staven,
     main = "Histogram van de speeltijd",
     xlab = "Speeltijd in minuten",
     ylab = "Aantal films",
     col = "cadetblue")
