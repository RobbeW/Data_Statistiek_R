# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bevolkingsaantal-per-jaar-gent/exports/csv",
                  sep = ";",
                  colClasses = c(rep("NULL", 5), "numeric", "character") )
colnames(data) <- c("jaar", "aantal")
data$aantal <- as.integer(data$aantal)
data <- data[order(data$jaar),]
rownames(data) <- seq_len(nrow(data))

# Plot
laatste_15 <- data$jaar > 2023-15

context({
  testcaseAssert("De variabele laatste_15 bestaat.", function(env) {
    isTRUE(exists("laatste_15", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("laatste_15", function(env) {
      env$laatste_15
    }, laatste_15)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})



  