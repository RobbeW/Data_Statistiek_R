# Data inlezen van de Intergewestelijke Cel voor het Leefmilieu
locaties <- c("BETR701" = "Baudelo", "BETR702" = "Afrit Zuid", "BETR710" = "Nachtegaalstadion", "BETR716" = "Bourgoyen")
data <- read.csv2("https://geo.irceline.be/realtime/ows?service=WFS&version=1.3.0&request=GetFeature&typeName=realtime:pm10_24hmean_station&outputFormat=csv",
                  sep=",",
                  colClasses = c("NULL", "character", "NULL", "character", "NULL", "numeric", rep("NULL", 2)) )
data <- data[data$ab_eoi_code %in% c("BETR701", "BETR702", "BETR710", "BETR716"), ]
colnames(data) <- c("locatie", "datum", "waarde")
data$locatie <- locaties[data$locatie]
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
