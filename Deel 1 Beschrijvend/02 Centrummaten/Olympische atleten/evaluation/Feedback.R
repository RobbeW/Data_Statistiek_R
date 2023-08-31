context({
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

  testcase("De variabelen werden correct berekend:", {
    testEqual("aantal_atleten", function(env) {
      env$aantal_atleten
    }, aantal_atleten)
    testFunctionUsedInVar("length", "aantal_atleten")
    testEqual("mediaan_bmi", function(env) {
      env$mediaan_bmi
    }, mediaan_bmi)
    testFunctionUsedInVar("median", "mediaan_bmi")
    testEqual("gemiddelde_bmi", function(env) {
      env$gemiddelde_bmi
    }, gemiddelde_bmi)
    testFunctionUsedInVar("mean", "gemiddelde_bmi")
  })
  testcase("De variabele bmi werd correct berekend:",{
    testEqual("bmi[1]", function(env) {
      env$bmi[1]
    }, bmi[1])
    testEqual("bmi[100]", function(env) {
      env$bmi[100]
    }, bmi[100])
    testEqual("bmi[1000]", function(env) {
      env$bmi[1000]
    }, bmi[1000])
    testEqual("bmi[10000]", function(env) {
      env$bmi[10000]
    }, bmi[10000])
    testFunctionUsedInVar("round", "bmi")
  })
})