# Importeert de data van Stad Gent
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bevolkingsaantal-per-wijk-per-jaar-gent/exports/csv",
                  sep = ";",
                  colClasses = c(rep("NULL", 5), "numeric", "character", "NULL","character", rep("NULL", 2)) )
colnames(data) <- c("jaar", "aantal", "wijk")
data$aantal <- as.integer(data$aantal)
data <- data[order(data$jaar),]
rownames(data) <- seq_len(nrow(data))

# Plot
laatste <- data$jaar == 2023

totaal <- sum(data$aantal[laatste])
percentages <- round(data$aantal[laatste] / totaal * 100, 0)

labels <- paste0(data$wijk[laatste], " - ", percentages,"%")

context({
  testcaseAssert("De variabele laatste bestaat.", function(env) {
    isTRUE(exists("laatste", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("laatste", function(env) {
      env$laatste
    }, laatste)
  })
})

context({
  testcaseAssert("De variabele totaal bestaat.", function(env) {
    isTRUE(exists("totaal", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("totaal", function(env) {
      env$totaal
    }, totaal)
    testFunctionUsedInVar("sum","totaal")
  })
})

context({
  testcaseAssert("De variabele percentages bestaat.", function(env) {
    isTRUE(exists("percentages", env))
  })
  testcase("De variabele werd percentages berekend:", {
    testEqual("percentages", function(env) {
      env$percentages
    }, percentages)
    testFunctionUsedInVar("round","percentages")
  })
})


context({
  testcaseAssert("De variabele labels bestaat.", function(env) {
    isTRUE(exists("labels", env))
  })
  testcase("De variabele werd labels bepaald:", {
    testEqual("labels", function(env) {
      env$labels
    }, labels)
    testFunctionUsedInVar("paste0","labels")
  })
})


contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("pie")
  })
})



  