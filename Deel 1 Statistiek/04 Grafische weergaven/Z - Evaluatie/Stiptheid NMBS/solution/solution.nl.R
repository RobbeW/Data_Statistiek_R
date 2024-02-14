# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Importeert de data van Infrabel
res <- GET("https://opendata.infrabel.be/api/explore/v2.1/catalog/datasets/nationale-stiptheid-per-moment-en-per-maand/records?select=sum(min_rt)%20as%20totaal_min%2Csum(tel)%20as%20totaal_trein%2Csum(reg)%20as%20totaal_trein_stipt&group_by=maand")
data <- fromJSON(rawToChar(res$content))$results
data$maand <- as.Date(data$maand)

# Aantal vertraagde treinen bepalen
trein_vertraging <- data$totaal_trein - data$totaal_trein_stipt
minuten_vertraging <- round(data$totaal_min / trein_vertraging, 2)

# grenswaarden
xmin = floor(min(minuten_vertraging))
xmax = ceiling(max(minuten_vertraging))

# Plot
hist(minuten_vertraging,
     xlim = c(xmin-1,xmax+1),
     main = "Heeft mijn trein veel vertraging?",
     col = "cadetblue",
     xlab = "Gemiddeld aantal minuten",
     ylab = "Percentage treinen")

