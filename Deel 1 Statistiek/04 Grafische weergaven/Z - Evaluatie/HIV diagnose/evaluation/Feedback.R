# Importeert de data van Sciensano
data <- read.csv2("https://tinyurl.com/376hakzy")
colnames(data) <- c("jaar", "new_AIDS", "new_HIV")

# Plot
dagelijks <- round(data$new_HIV / 365.25, 1)
laatste_10 <- data$jaar > max(data$jaar)-10

context({
  testcaseAssert("De variabele dagelijks bestaat.", function(env) {
    isTRUE(exists("dagelijks", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("dagelijks", function(env) {
      env$dagelijks
    }, dagelijks)
    testFunctionUsedInVar("round", "dagelijks")
  })
})

context({
  testcaseAssert("De variabele laatste_10 bestaat.", function(env) {
    isTRUE(exists("laatste_10", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("laatste_10", function(env) {
      env$laatste_10
    }, laatste_10)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})



  