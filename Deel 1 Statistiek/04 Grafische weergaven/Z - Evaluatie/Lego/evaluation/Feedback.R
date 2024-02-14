# Importeert de data
data <- read.csv2("https://www.openintro.org/data/csv/lego_population.csv",
                  sep = ",")
data <- data[,c(2,3,4,5,7,8)]
data$price <- as.numeric(data$price)
data <- data[complete.cases(data),]

# Antwoord op de vragen
thema_city = data$theme == "City"

context({
  testcaseAssert("De variabele thema_city bestaat.", function(env) {
    isTRUE(exists("thema_city", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("thema_city", function(env) {
      env$thema_city
    }, thema_city)
  })
})

contextWithImage({
  testcase("De volgende functies werd gebruikt:", {
    testFunctionUsed("plot")
    testFunctionUsed("abline")
  })
})



  