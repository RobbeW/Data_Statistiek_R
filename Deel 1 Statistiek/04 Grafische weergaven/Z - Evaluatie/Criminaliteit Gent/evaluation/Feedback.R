# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Importeert de data van Stad Gent en vormt om
res <- GET("https://data.stad.gent/api/explore/v2.1/catalog/datasets/criminaliteitscijfers-per-wijk-per-maand-gent-2023/records?select=sum(total)&group_by=fact_category")
data <- fromJSON(rawToChar(res$content))$results
colnames(data) <- c("categorie","aantal")

# Plot
misdrijven <- data$categorie != "Parkeerovertredingen"

totaal <- sum(data$aantal[misdrijven])
percentages <- round(data$aantal[misdrijven] / totaal * 100, 0)

labels <- paste0(data$categorie[misdrijven], " - ", percentages,"%")

context({
  testcaseAssert("De variabele misdrijven bestaat.", function(env) {
    isTRUE(exists("misdrijven", env))
  })
  testcase("De variabele werd misdrijven bepaald:", {
    testEqual("misdrijven", function(env) {
      env$misdrijven
    }, misdrijven)
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
}, width = 720)



  