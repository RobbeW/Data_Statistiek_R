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
gewicht <- data$weight / 2.204
lengte <- data$height * 100
vrouwen <- data$sex == "F"
basaal_metabolisme_vrouwen <- round(10 * gewicht[vrouwen] + 6.25 * lengte[vrouwen] - 5 * data$age[vrouwen] - 161, 2)
mediaan_metabolisme <- median(basaal_metabolisme_vrouwen)

context({
  testcaseAssert("De variabele gewicht bestaat.", function(env) {
    isTRUE(exists("gewicht", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gewicht", function(env) {
      env$gewicht
    }, gewicht)
  })
})

context({
  testcaseAssert("De variabele lengte bestaat.", function(env) {
    isTRUE(exists("lengte", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("lengte", function(env) {
      env$lengte
    }, lengte)
  })
})

context({
  testcaseAssert("De variabele vrouwen bestaat.", function(env) {
    isTRUE(exists("vrouwen", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("vrouwen", function(env) {
      env$vrouwen
    }, vrouwen)
  })
})

context({
  testcaseAssert("De variabele basaal_metabolisme_vrouwen bestaat.", function(env) {
    isTRUE(exists("basaal_metabolisme_vrouwen", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("basaal_metabolisme_vrouwen", function(env) {
      env$basaal_metabolisme_vrouwen
    }, basaal_metabolisme_vrouwen)
    testFunctionUsed("round")
  })
})

context({
  testcaseAssert("De variabele mediaan_metabolisme bestaat.", function(env) {
    isTRUE(exists("mediaan_metabolisme", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("mediaan_metabolisme", function(env) {
      env$mediaan_metabolisme
    }, mediaan_metabolisme)
    testFunctionUsed("median")
  })
})

