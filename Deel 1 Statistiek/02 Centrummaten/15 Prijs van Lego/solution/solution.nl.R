# Importeert de data
data <- read.csv2("https://www.openintro.org/data/csv/lego_population.csv",
                  sep = ",")
data <- data[,c(2,3,4,5,7,8)]
data$price <- as.numeric(data$price)
data <- data[complete.cases(data),]
data <- data[data$price < 10000,]

# Antwoord op de vragen
gemiddelde_prijs <- mean(data$price)
thema_star_wars <- data$theme == "Star Wars™"
gemiddelde_prijs_star_wars <- mean(data$price[thema_star_wars])
prijs_per_stuk <- data$price / data$pieces
gemiddelde_prijs_per_stuk <- mean(prijs_per_stuk)
gemiddelde_prijs_per_stuk_star_wars <- mean(prijs_per_stuk[thema_star_wars])