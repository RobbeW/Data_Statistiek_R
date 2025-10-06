# Gegevens ophalen van Github (na problemen met data portal): 
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/fietstelpaal-visserij-2023-gent.csv",
  sep = ";", header = TRUE, stringsAsFactors = FALSE
)

# Totalen per dag
data <- data.frame(
  aggregate(totaal ~ datum, data, sum),
  tegenrichting = aggregate(tegenrichting ~ datum, data, sum)$tegenrichting,
  hoofdrichting = aggregate(hoofdrichting ~ datum, data, sum)$hoofdrichting
)

# Antwoorden: 
drukke_dagen <- data$datum[data$totaal > 8500]

verschil <- data$hoofdrichting - data$tegenrichting
richting_binnenstad <- data$datum[verschil >= 1000]

context({
  testcaseAssert("De variabele drukke_dagen bestaat.", function(env) {
    isTRUE(exists("drukke_dagen", env))
  })
  testcase("De variabelen werden correct bepaald:", {
    testEqual("drukke_dagen", function(env) env$drukke_dagen, drukke_dagen)
  })
})

context({
  testcaseAssert("De variabele verschil bestaat.", function(env) {
    isTRUE(exists("verschil", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("verschil", function(env) env$verschil, verschil)
  })
})

context({
  testcase("Resultaat werd correct bepaald:", {
    testEqual("De dag(en) waarop vooral richting binnenstad gefietst werd:", function(env) {
      env$evaluationResult
    }, richting_binnenstad)
  })
})
