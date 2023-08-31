# Een dataset met gegevens van Olympische atleten.
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv",
                 header = TRUE)
# Enkel de gegevens van de atleten worden geselecteer.
data <- data[data$sport == "Athletics" &
               !is.na(data$height) &
               !is.na(data$weight), ]

# Aantal atleten
aantal_atleten <- length(data$height)

# Bereken het BMI
bmi <- round(data$weight / (data$height / 100)^2, 2)

# Centrummaten
mediaan_bmi <- median(bmi)
gemiddelde_bmi <- mean(bmi)