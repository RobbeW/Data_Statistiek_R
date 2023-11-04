# Stiptheidsscijfers Infrabel
data <- read.csv("https://opendata.infrabel.be/api/explore/v2.1/catalog/datasets/nationale-stiptheid-per-maand/exports/csv",
                 sep = ";", header = TRUE,
                 colClasses = c("NULL", "character", rep("numeric", 5)))
# De kolommen hernoemen
colnames(data) <- c("maand", "stiptheid", "aantal", "aantal_min_6", "totale_min_vertraging", "stiptheid_neutr")
data <- data[order(data$maand, decreasing = TRUE),]
rownames(data) <- seq_len(nrow(data))

# Bepaal hier een antwoord op de vragen
