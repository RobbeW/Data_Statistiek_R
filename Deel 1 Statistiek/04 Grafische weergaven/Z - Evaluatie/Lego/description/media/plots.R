# Importeert de data
data <- read.csv2("https://www.openintro.org/data/csv/lego_population.csv",
                  sep = ",")
data <- data[,c(2,3,4,5,7,8)]
data$price <- as.numeric(data$price)
data <- data[complete.cases(data),]

# Antwoord op de vragen
thema_city = data$theme == "City"

res <- 150
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
plot(data$price[thema_city]~data$pieces[thema_city],
     main = "Prijs versus aantal blokken",
     xlab = "aantal blokken",
     ylab = "winkeprijs (in $)",
     pch = 4)
abline(lm(data$price[thema_city]~data$pieces[thema_city]), 
       col="red")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
plot(data$price[thema_city]~data$pieces[thema_city],
     main = "Prijs versus aantal blokken",
     xlab = "aantal blokken",
     ylab = "winkeprijs (in $)",
     pch = 4,
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)
abline(lm(data$price[thema_city]~data$pieces[thema_city]), 
       col="red")

dev.off()
