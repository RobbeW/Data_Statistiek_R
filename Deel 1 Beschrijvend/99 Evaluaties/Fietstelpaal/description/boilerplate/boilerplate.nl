# Gegevens ophalen van het Open Data portaal
data <- read.csv("https://data.stad.gent/api/explore/v2.1/catalog/datasets/fietstelpaal-visserij-2023-gent/exports/csv",
                 sep = ";", header = TRUE)
# Het onderstaande bepaalt de totalen per dag
data <- data.frame(aggregate(totaal ~ datum, data, sum),
                   tegenrichting = aggregate(tegenrichting ~ datum, data, sum)$tegenrichting,
                   hoofdrichting = aggregate(hoofdrichting ~ datum, data, sum)$hoofdrichting)

# Bepaal nu het gevraagde

