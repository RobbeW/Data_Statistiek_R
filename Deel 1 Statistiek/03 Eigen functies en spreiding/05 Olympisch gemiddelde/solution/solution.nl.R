# Olympisch gemiddelde als functie
olympic_mean <- function(data) {
  data_sorted <- sort(data)
  resultaat <- mean(data_sorted[2:(length(data) - 1)])
  return(resultaat)
}