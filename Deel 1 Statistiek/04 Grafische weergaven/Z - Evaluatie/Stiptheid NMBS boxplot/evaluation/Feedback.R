# Importeert de data van Infrabel
data <- read.csv2("https://opendata.infrabel.be/api/explore/v2.1/catalog/datasets/nationale-stiptheid-per-moment-en-per-maand/exports/csv",
                  sep = ";",
                  colClasses = c(rep("character",2), rep("NULL", 3), rep("numeric", 3), "NULL") )
colnames(data) <- c("maand", "tijdstip", "totaal_trein", "totaal_trein_stipt", "totaal_min")
data$maand <- as.Date(paste0(data$maand,"-01"))

# Aantal vertraagde treinen bepalen
trein_vertraging <- data$totaal_trein - data$totaal_trein_stipt
minuten_vertraging <- round(data$totaal_min / trein_vertraging, 2)

context({
  testcaseAssert("De variabele trein_vertraging bestaat.", function(env) {
    isTRUE(exists("trein_vertraging", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("trein_vertraging", function(env) {
      env$trein_vertraging
    }, trein_vertraging)
  })
})

context({
  testcaseAssert("De variabele minuten_vertraging bestaat.", function(env) {
    isTRUE(exists("minuten_vertraging", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("minuten_vertraging", function(env) {
      env$minuten_vertraging
    }, minuten_vertraging)
    testFunctionUsedInVar("round", "minuten_vertraging")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("boxplot")
  })
})



  