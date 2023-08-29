# Gegevens inladen
data <- read.table("https://tinyurl.com/4p3znsv9", header = TRUE)

# De mediaan berekenen
mediaan_remweg <- median(data$remweg)