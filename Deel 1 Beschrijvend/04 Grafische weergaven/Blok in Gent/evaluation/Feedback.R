# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bloklocaties-gent/exports/csv",
                  sep = ";",
                  colClasses = c("NULL", "character", rep("NULL", 5), rep("numeric", 2), rep("NULL", 4), "character", rep("NULL", 5)) )
colnames(data) <- c("naam", "capaciteit", "gereserveerd", "status")
data <- data[data$status == "Reserveerbaar" & data$capaciteit != 0, 1:3]
data <- data[order(data$capaciteit, decreasing=TRUE),]
rownames(data) <- seq_len(nrow(data))

reserveringsgraad <- round(data$gereserveerd/data$capaciteit * 100, 1)

context({
  testcaseAssert("De variabele reserveringsgraad bestaat.", function(env) {
    isTRUE(exists("reserveringsgraad", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("reserveringsgraad", function(env) {
      env$reserveringsgraad
    }, reserveringsgraad)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})



  