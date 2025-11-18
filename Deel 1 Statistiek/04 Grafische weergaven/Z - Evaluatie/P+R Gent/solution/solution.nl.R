# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/v2/catalog/datasets/bezetting-parkeergarages-real-time/exports/csv",
  sep = ";",
  dec = ","
)

data <- data[, c("name", "isopennow", "totalcapacity", "availablecapacity")]
colnames(data) <- c("naam", "nu_open", "aantal_plaatsen", "beschikbaar")
data$nu_open <- data$nu_open == 1

# Plot
bezettingsgraad <- round((1-data$beschikbaar/data$aantal_plaatsen) * 100, 1)

par(mar = c(4, 13, 4, 4)) 
barplot(
  bezettingsgraad,
  main = "Bezettingsgraad parkeergarages Gent",
  col = "dodgerblue3",
  xlab = "Percentage bezet",
  names.arg = data$naam,
  las = 1,
  horiz = TRUE
)
