# Parkeerdata van Stad Gent
data <- read.csv2(paste0("https://data.stad.gent/api/explore/v2.1/catalog/dat",
                         "asets/bezetting-parkeergarages-real-time/exports/cs",
                         "v"),
                  sep = ";",
                  colClasses = c("character", "character", "NULL", "numeric",
                                 "numeric", rep("NULL", 14)))
colnames(data) <- c("naam", "laatste_update", "capaciteit", "percentage_bezet")
data$percentage_bezet <- data$percentage_bezet / 100

# Berekeningen
vrije_plaatsen <- floor(data$capaciteit * (1 - data$percentage_bezet))

veel_plaats <- data$percentage_bezet < 0.25
data$naam[veel_plaats]