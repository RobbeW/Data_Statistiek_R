# Importeert de data van Stad Gent
data <- read.csv2(
  "https://data.stad.gent/api/v2/catalog/datasets/bezetting-parkeergarages-real-time/exports/csv",
  sep = ";",
  dec = ","
)

# Hou alleen de relevante kolommen
data <- data[, c("name", "isopennow", "totalcapacity", "availablecapacity")]
colnames(data) <- c("naam", "nu_open", "aantal_plaatsen", "beschikbaar")
data$nu_open <- data$nu_open == 1

# Schrijf hieronder jouw code
