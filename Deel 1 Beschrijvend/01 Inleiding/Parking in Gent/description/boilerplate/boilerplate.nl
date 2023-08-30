# Parkeerdata van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bezetting-parkeergarages-real-time/exports/csv",
                  sep = ";",
                  colClasses = c("character", "character", "NULL", "numeric", "numeric", rep("NULL", 14)) )
colnames(data) <- c("naam", "laatste_update", "capaciteit", "percentage_bezet")
data$percentage_bezet <- data$percentage_bezet / 100

