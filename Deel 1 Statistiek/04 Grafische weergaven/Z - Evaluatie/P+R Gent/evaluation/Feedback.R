# Importeert de data van Stad Gent (nieuwe dataset parkeergarages)
data <- read.csv2(
  "https://data.stad.gent/api/v2/catalog/datasets/bezetting-parkeergarages-real-time/exports/csv",
  sep = ";",
  dec = ","
)

# Hou alleen de relevante kolommen
data <- data[, c("name", "isopennow", "totalcapacity", "availablecapacity")]

# Zelfde namen als in je oorspronkelijke oefening
colnames(data) <- c("naam", "nu_open", "aantal_plaatsen", "beschikbaar")
data$nu_open <- data$nu_open == 1

# Referentiewaarde voor de tests
bezettingsgraad <- round((1 - data$beschikbaar / data$aantal_plaatsen) * 100, 1)


context({
  testcaseAssert("De variabele bezettingsgraad bestaat.", function(env) {
    isTRUE(exists("bezettingsgraad", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("bezettingsgraad", function(env) {
      env$bezettingsgraad
    }, bezettingsgraad)
    testFunctionUsedInVar("round", "bezettingsgraad")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})



  
