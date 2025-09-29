# Importeert de data
data <- read.csv2("https://www.openintro.org/data/csv/lego_population.csv",
                  sep = ",")
data <- data[,c(2,3,4,5,7,8)]
data$price <- as.numeric(data$price)
data <- data[complete.cases(data),]
data <- data[data$price < 10000,]

# Antwoord op de vragen
gemiddelde_prijs <- mean(data$price)
thema_star_wars <- data$theme == "Star Wars™"
gemiddelde_prijs_star_wars <- mean(data$price[thema_star_wars])
prijs_per_stuk <- data$price / data$pieces
gemiddelde_prijs_per_stuk <- mean(prijs_per_stuk)
gemiddelde_prijs_per_stuk_star_wars <- mean(prijs_per_stuk[thema_star_wars])

context({
  testcaseAssert("De variabele gemiddelde_prijs bestaat.", function(env) {
    isTRUE(exists("gemiddelde_prijs", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("gemiddelde_prijs", function(env) {
      env$gemiddelde_prijs
    }, gemiddelde_prijs)
    testFunctionUsedInVar("mean", "gemiddelde_prijs")
  })
})

context({
  testcaseAssert("De variabele thema_star_wars bestaat.", function(env) {
    isTRUE(exists("thema_star_wars", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("thema_star_wars", function(env) {
      env$thema_star_wars
    }, thema_star_wars)
  })
})

context({
  testcaseAssert("De variabele gemiddelde_prijs_star_wars bestaat.", function(env) {
    isTRUE(exists("gemiddelde_prijs_star_wars", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("gemiddelde_prijs_star_wars", function(env) {
      env$gemiddelde_prijs_star_wars
    }, gemiddelde_prijs_star_wars)
    testFunctionUsedInVar("mean", "gemiddelde_prijs_star_wars")
  })
})

context({
  testcaseAssert("De variabele prijs_per_stuk bestaat.", function(env) {
    isTRUE(exists("prijs_per_stuk", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("prijs_per_stuk", function(env) {
      env$prijs_per_stuk
    }, prijs_per_stuk)
  })
})

  context({
  testcaseAssert("De variabele gemiddelde_prijs_per_stuk bestaat.", function(env) {
    isTRUE(exists("gemiddelde_prijs_per_stuk", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("gemiddelde_prijs_per_stuk", function(env) {
      env$gemiddelde_prijs_per_stuk
    }, gemiddelde_prijs_per_stuk)
    testFunctionUsedInVar("mean", "gemiddelde_prijs_per_stuk")
  })
})

context({
  testcaseAssert("De variabele gemiddelde_prijs_per_stuk_star_wars bestaat.", function(env) {
    isTRUE(exists("gemiddelde_prijs_per_stuk_star_wars", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("gemiddelde_prijs_per_stuk_star_wars", function(env) {
      env$gemiddelde_prijs_per_stuk_star_wars
    }, gemiddelde_prijs_per_stuk_star_wars)
    testFunctionUsedInVar("mean", "gemiddelde_prijs_per_stuk_star_wars")
  })
})