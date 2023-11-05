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

context({
  testcaseAssert("De variabele aantal_atleten bestaat.", function(env) {
    isTRUE(exists("aantal_atleten", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("aantal_atleten", function(env) {
      env$aantal_atleten
    }, aantal_atleten)
    #testFunctionUsedInVar("length", "aantal_atleten")
  })
})

context({
  testcaseAssert("De variabele bmi bestaat.", function(env) {
    isTRUE(exists("bmi", env))
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

context({
  testcaseAssert("De variabele gemiddelde_bmi bestaat.", function(env) {
    isTRUE(exists("gemiddelde_bmi", env))
  })
  testcaseAssert("De variabele percentage_lager_gemiddelde bestaat.", function(env) {
    isTRUE(exists("percentage_lager_gemiddelde", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("gemiddelde_bmi", function(env) {
      env$gemiddelde_bmi
    }, gemiddelde_bmi)
    testEqual("percentage_lager_gemiddelde", function(env) {
      env$percentage_lager_gemiddelde
    }, percentage_lager_gemiddelde)
    testFunctionUsedInVar("mean", "gemiddelde_bmi")
    testFunctionUsedInVar("round", "percentage_lager_gemiddelde")
  })
})

context({
  testcaseAssert("De variabele mediaan_bmi bestaat.", function(env) {
    isTRUE(exists("mediaan_bmi", env))
  })
  testcaseAssert("De variabele percentage_lager_mediaan bestaat.", function(env) {
    isTRUE(exists("percentage_lager_mediaan", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("mediaan_bmi", function(env) {
      env$mediaan_bmi
    }, mediaan_bmi)
    testEqual("percentage_lager_mediaan", function(env) {
      env$percentage_lager_mediaan
    }, percentage_lager_mediaan)
    testFunctionUsedInVar("median", "mediaan_bmi")
    testFunctionUsedInVar("round", "percentage_lager_mediaan")
  })
})