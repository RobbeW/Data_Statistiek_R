# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Importeert de data van Stad Gent en vormt om
res <- GET("https://data.stad.gent/api/explore/v2.1/catalog/datasets/criminaliteitscijfers-per-wijk-per-maand-gent-2023/records?select=sum(total)&group_by=fact_category")
data <- fromJSON(rawToChar(res$content))$results
colnames(data) <- c("categorie","aantal")

# Plot
misdrijven <- data$categorie != "Parkeerovertredingen"

totaal <- sum(data$aantal[misdrijven])
percentages <- round(data$aantal[misdrijven] / totaal * 100, 0)

labels <- paste0(data$categorie[misdrijven], " - ", percentages,"%")

pie(percentages,
    main = "Criminaliteit in Gent",
    col = rainbow(15),
    labels = labels)
