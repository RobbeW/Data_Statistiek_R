# Een dataset met gegevens van Olympische atleten.
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 3), "NULL", "character", "NULL", "numeric", rep("character", 4), "NULL" ))
# Enkel de gegevens van de atleten worden geselecteer.
data <- data[data$sport == "Athletics" &
               !is.na(data$height) &
               !is.na(data$weight), ]
rownames(data) <- seq_len(nrow(data))

# Aantal atleten
aantal_atleten <- length(data$height)

# Bereken het BMI
bmi <- round(data$weight / (data$height / 100)^2, 2)

# Centrummaten
mediaan_bmi <- median(bmi)
gemiddelde_bmi <- mean(bmi)

percentage_lager_gemiddelde <- round(sum(bmi < gemiddelde_bmi) / aantal_atleten, 4) * 100
percentage_lager_mediaan <- round(sum(bmi < mediaan_bmi) / aantal_atleten, 4) * 100
