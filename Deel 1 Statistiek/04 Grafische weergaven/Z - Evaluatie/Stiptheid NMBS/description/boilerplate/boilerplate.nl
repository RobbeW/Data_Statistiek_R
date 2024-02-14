# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Importeert de data van Infrabel
res <- GET("https://opendata.infrabel.be/api/explore/v2.1/catalog/datasets/nationale-stiptheid-per-moment-en-per-maand/records?select=sum(min_rt)%20as%20totaal_min%2Csum(tel)%20as%20totaal_trein%2Csum(reg)%20as%20totaal_trein_stipt&group_by=maand")
data <- fromJSON(rawToChar(res$content))$results
data$maand <- as.Date(data$maand)

# Schrijf hieronder je code
