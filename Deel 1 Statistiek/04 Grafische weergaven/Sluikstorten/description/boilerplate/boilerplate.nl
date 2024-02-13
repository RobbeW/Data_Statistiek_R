# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Importeert de data van Stad Gent en vormt om
res <- GET("https://data.stad.gent/api/explore/v2.1/catalog/datasets/sluikstort-meldingen-gent-2023/records?select=2023%20as%20jaar%2C%20count(*)%20as%20aantal&group_by=date_format(gemaakt_op%2C%20%27E%27)%20as%20dag%2C%20date_format(gemaakt_op%2C%20%27e%27)%20as%20weekday&order_by=weekday")
data <- fromJSON(rawToChar(res$content))$results
data$weekday <- NULL

# Beantwoord hieronder de vragen
