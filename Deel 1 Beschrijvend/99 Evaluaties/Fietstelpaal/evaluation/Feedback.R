context({
  testcaseAssert("De variabele drukke_dagen bestaat.", function(env) {
    isTRUE(exists("drukke_dagen", env))
  })
  testcaseAssert("De variabele verschil bestaat.", function(env) {
    isTRUE(exists("verschil", env))
  })
  testcaseAssert("De variabele richting_binnenstad bestaat.", function(env) {
    isTRUE(exists("richting_binnenstad", env))
  })
})
context({
  # Gegevens ophalen van het Open Data portaal
  data <- read.csv(paste0("https://data.stad.gent/api/explore/v2.1/catalog/da",
                          "tasets/fietstelpaal-visserij-2023-gent/exports/csv"),
                   sep = ";", header = TRUE)
  data <- data.frame(aggregate(totaal ~ datum, data, sum),
                     tegenrichting = aggregate(tegenrichting ~ datum,
                                               data, sum)$tegenrichting,
                     hoofdrichting = aggregate(hoofdrichting ~ datum,
                                               data, sum)$hoofdrichting)

  # Bepaal het gevraagde
  drukke_dagen <- data$datum[data$totaal > 8500]

  verschil <- data$hoofdrichting - data$tegenrichting
  richting_binnenstad <- data$datum[verschil >= 1000]

  testcase("De variabelen werden correct bepaald:", {
    testEqual("drukke_dagen", function(env) {
      env$drukke_dagen
    }, drukke_dagen)
    testEqual("verschil", function(env) {
      env$verschil
    }, verschil)
    testEqual("richting_binnenstad", function(env) {
      env$richting_binnenstad
    }, richting_binnenstad)
  })
})