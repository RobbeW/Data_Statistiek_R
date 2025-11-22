# Een dataset met gegevens van Olympische atleten.
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 3), rep("NULL", 6), "character", rep("NULL", 2)))
# Enkel de gegevens van de atleten worden geselecteerd.
data$height <- data$height / 100
data$weight <- data$weight * 2.204
data <- data[data$sport == "Athletics" &
               !is.na(data$height) &
               !is.na(data$weight) & 
               !is.na(data$age), ]
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen