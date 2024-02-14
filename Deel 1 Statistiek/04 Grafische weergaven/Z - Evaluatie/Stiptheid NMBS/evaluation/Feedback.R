# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Importeert de data van Infrabel
res <- GET("https://opendata.infrabel.be/api/explore/v2.1/catalog/datasets/nationale-stiptheid-per-moment-en-per-maand/records?select=sum(min_rt)%20as%20totaal_min%2Csum(tel)%20as%20totaal_trein%2Csum(reg)%20as%20totaal_trein_stipt&group_by=maand")
data <- fromJSON(rawToChar(res$content))$results
data$maand <- as.Date(data$maand)

# Aantal vertraagde treinen bepalen
trein_vertraging <- data$totaal_trein - data$totaal_trein_stipt
minuten_vertraging <- round(data$totaal_min / trein_vertraging, 2)

# grenswaarden
xmin = floor(min(minuten_vertraging))
xmax = ceiling(max(minuten_vertraging))

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

context({
  testcaseAssert("De variabelen xmin en xmax bestaan.", function(env) {
    isTRUE(exists("xmin", env))
    isTRUE(exists("xmax", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("xmin", function(env) {
      env$xmin
    }, xmin)
    testEqual("xmax", function(env) {
      env$xmax
    }, xmax)
    testFunctionUsedInVar("floor", "xmin")
    testFunctionUsedInVar("ceiling", "xmax")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("hist")
  })
})



  