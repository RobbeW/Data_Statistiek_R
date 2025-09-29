# Importeert de data
data <- read.csv2("https://www.openintro.org/data/csv/lego_population.csv",
                  sep = ",")
data <- data[,c(2,3,4,5,7,8)]
data$price <- as.numeric(data$price)
data <- data[complete.cases(data),]
data <- data[data$price < 10000,]

# Antwoord op de vragen
gemiddelde_prijs = mean(data$price)
thema_marvel = data$theme == "Marvel"

context({
  testcaseAssert("De variabele gemiddelde_prijs bestaat.", function(env) {
    isTRUE(exists("gemiddelde_prijs", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("gemiddelde_prijs", function(env) {
      env$gemiddelde_prijs
    }, gemiddelde_prijs)
  })
})

context({
  testcaseAssert("De variabele thema_marvel bestaat.", function(env) {
    isTRUE(exists("thema_marvel", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("thema_marvel", function(env) {
      env$thema_marvel
    }, thema_marvel)
  })
})



  