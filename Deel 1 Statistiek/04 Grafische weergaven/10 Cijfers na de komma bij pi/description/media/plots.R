# needed library
library(dplyr)
library(readr)

# downloading 100 000 digits of pi
url <- "https://www.angio.net/pi/digits/100000.txt"
getalpi.raw <- readr::read_file(url)

# splitting string into single characters
getalpi <- data.frame(strsplit(getalpi.raw, "")[1])
# removing the "." i.e. 2nd row
getalpi <- data.frame(getalpi[-c(1,2),])
data <- as.data.frame(table(getalpi[,1], dnn = list("cijfer")), responseName = "aantal")

# Antwoord op de vragen
aantal_cijfers <- sum(data$aantal)

relatieve_frequentie <- round( (data$aantal / aantal_cijfers)*100, 2)

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
barplot(relatieve_frequentie,
        names.arg = data$cijfer,
        main = "Verdeling van de 100 000 cijfers na de komma in pi",
        col = "cadetblue",
        ylab = "Relatieve frequentie (in %)",
        xlab = "Cijfer na de komma")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
barplot(relatieve_frequentie,
        names.arg = data$cijfer,
        main = "Verdeling van de 100 000 cijfers na de komma in pi",
        col = "cadetblue",
        ylab = "Relatieve frequentie (in %)",
        xlab = "Cijfer na de komma",
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()


