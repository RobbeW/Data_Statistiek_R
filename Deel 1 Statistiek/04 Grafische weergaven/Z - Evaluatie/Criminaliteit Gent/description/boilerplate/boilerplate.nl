# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Importeert de data van Stad Gent en vormt om
res <- GET("https://data.stad.gent/api/explore/v2.1/catalog/datasets/criminaliteitscijfers-per-wijk-per-maand-gent-2023/records?select=sum(total)&group_by=fact_category")
data <- fromJSON(rawToChar(res$content))$results
colnames(data) <- c("categorie","aantal")

# Schrijf hieronder je code
