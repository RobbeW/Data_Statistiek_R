# Importeert de data UNICEF en vormt deze om
url <- "https://sdmx.data.unicef.org/ws/public/sdmxapi/rest/data/UNICEF,GLOBAL_DATAFLOW,1.0/BEL+DEU+FRA+GBR+LUX+NLD.CME_MRY0T4._T.?format=csv&startPeriod=2010"
data <- read.csv2(url, sep=",", dec=".",
                  colClasses = c("NULL","character", rep("NULL",4), rep("numeric", 2), rep("NULL", 22)))
colnames(data) <- c("country","year","rate")
data$country[data$country == "Netherlands (Kingdom of the)"] = "The Netherlands"

# Beantwoord hieronder de vragen
max_year <- max(data$year)
selectie <- data$year == max_year
aantal_landen <- length(data$country[selectie])

context({
  testcaseAssert("De variabele max_year bestaat.", function(env) {
    isTRUE(exists("max_year", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("max_year", function(env) {
      env$max_year
    }, max_year)
    testFunctionUsedInVar("max", "max_year")
  })
})

context({
  testcaseAssert("De variabele selectie bestaat.", function(env) {
    isTRUE(exists("selectie", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("selectie", function(env) {
      env$selectie
    }, selectie)
  })
})

context({
  testcaseAssert("De variabele aantal_landen bestaat.", function(env) {
    isTRUE(exists("aantal_landen", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("aantal_landen", function(env) {
      env$aantal_landen
    }, aantal_landen)
    testFunctionUsedInVar("length", "aantal_landen")
  })
})


contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})



  