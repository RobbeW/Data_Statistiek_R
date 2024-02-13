# Gegevens ophalen van het Open Data portaal
data <- read.csv(paste0("https://data.stad.gent/api/explore/v2.1/catalog/data",
                        "sets/fietstelpaal-visserij-2023-gent/exports/csv"),
                 sep = ";", header = TRUE)
data <- data.frame(aggregate(totaal ~ datum, data, sum),
                   tegenrichting = aggregate(tegenrichting ~ datum,
                                             data, sum)$tegenrichting,
                   hoofdrichting = aggregate(hoofdrichting ~ datum,
                                             data, sum)$hoofdrichting)

# Bepaal het gevraagde
drukke_dagen <- data$datum[data$totaal > 8500]

verschil <- data$hoofdrichting - data$tegenrichting
richting_binnenstad <- data$datum[verschil >= 1000]