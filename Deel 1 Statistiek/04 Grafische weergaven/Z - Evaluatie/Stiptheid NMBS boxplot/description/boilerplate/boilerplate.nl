# Importeert de data van Infrabel
data <- read.csv2("https://opendata.infrabel.be/api/explore/v2.1/catalog/datasets/nationale-stiptheid-per-moment-en-per-maand/exports/csv",
                  sep = ";",
                  colClasses = c(rep("character",2), rep("NULL", 3), rep("numeric", 3), "NULL") )
colnames(data) <- c("maand", "tijdstip", "totaal_trein", "totaal_trein_stipt", "totaal_min")
data$maand <- as.Date(paste0(data$maand,"-01"))

# Schrijf hieronder je code
