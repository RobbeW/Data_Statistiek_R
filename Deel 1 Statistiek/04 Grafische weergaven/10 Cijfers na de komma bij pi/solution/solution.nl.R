# needed library
library(readr)

# downloading 100 000 digits of pi
url <- "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/refs/heads/main/bronnen/100000.txt"
getalpi.raw <- readr::read_file(url)

# splitting string into single characters
getalpi <- data.frame(strsplit(getalpi.raw, "")[1])
# removing the "." i.e. 2nd row
getalpi <- data.frame(getalpi[-c(1,2),])
data <- as.data.frame(table(getalpi[,1], dnn = list("cijfer")), responseName = "aantal")

# Antwoord op de vragen
aantal_cijfers <- sum(data$aantal)

relatieve_frequentie <- round( (data$aantal / aantal_cijfers)*100, 2)

barplot(relatieve_frequentie,
        names.arg = data$cijfer,
        main = "Verdeling van de 100 000 cijfers na de komma in pi",
        col = "cadetblue",
        ylab = "Relatieve frequentie",
        xlab = "Cijfer")
