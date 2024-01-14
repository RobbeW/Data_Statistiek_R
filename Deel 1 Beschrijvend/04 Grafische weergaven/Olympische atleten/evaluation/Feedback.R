# Een dataset met gegevens van Olympische atleten.
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 3), "NULL", "character", "NULL", "numeric", rep("character", 4), "NULL" ))
# Enkel de gegevens van de atleten worden geselecteerd.
data <- data[data$sport == "Athletics" &
               !is.na(data$height) &
               !is.na(data$weight), ]
rownames(data) <- seq_len(nrow(data))

# Bereken het BMI
bmi <- round(data$weight / (data$height / 100)^2, 2)

# Rice rule
n <- length(bmi)
aantal_staven <- floor( 2 * n^(1/3) )

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
  testcaseAssert("De variabele n bestaat.", function(env) {
    isTRUE(exists("n", env))
  })
  testcaseAssert("De variabele aantal_staven bestaat.", function(env) {
    isTRUE(exists("aantal_staven", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("n", function(env) {
      env$n
    }, n)
    testEqual("aantal_staven", function(env) {
      env$aantal_staven
    }, aantal_staven)
    testFunctionUsedInVar("length", "n")
    testFunctionUsedInVar("floor", "aantal_staven")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("hist")
  })
})
