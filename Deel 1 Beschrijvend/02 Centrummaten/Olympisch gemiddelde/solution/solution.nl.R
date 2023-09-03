# Olympisch gemiddelde als functie
olympic_mean <- function(data) {
  data_sorted <- sort(data)
  resultaat <- mean(data_sorted[2:(length(data) - 1)])
  return(resultaat)
}

## Enkele testen ##
scores <- c(98, 97, 98, 99, 100, 98)
olympic_mean(scores)
# Geeft als resultaat: 98.25

resultaten <- c(14, 25, 14, 18, 16, 16, 20)
olympic_mean(resultaten)
# Geeft als resultaat: 16.8