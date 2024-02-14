# Importeert de data
data <- read.csv2("https://www.openintro.org/data/csv/lego_population.csv",
                  sep = ",")
data <- data[,c(2,3,4,5,7,8)]
data$price <- as.numeric(data$price)
data <- data[complete.cases(data),]

# Antwoord op de vragen
thema_city = data$theme == "City"

# Plot
plot(data$price[thema_city]~data$pieces[thema_city],
     main = "Prijs versus aantal blokken",
     xlab = "aantal blokken",
     ylab = "winkeprijs (in $)",
     pch = 4)
abline(lm(data$price[thema_city]~data$pieces[thema_city]), 
       col="red")
