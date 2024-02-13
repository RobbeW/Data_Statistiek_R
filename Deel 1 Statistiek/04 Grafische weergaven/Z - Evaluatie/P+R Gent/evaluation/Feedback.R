# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/real-time-bezetting-pr-gent/exports/csv",
                  sep = ";",
                  colClasses = c("character", rep("NULL", 3),"numeric", rep("NULL", 4), rep("numeric", 2), rep("NULL", 7)) )
colnames(data) <- c("naam", "nu_open", "aantal_plaatsen", "beschikbaar")
data$nu_open <- data$nu_open == 1

# Plot
bezettingsgraad <- round((1-data$beschikbaar/data$aantal_plaatsen) * 100, 1)

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



  