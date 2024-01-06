# Benodigde bibliotheken
library(dplyr)
library(lubridate)

# Importeert de data van Stad Gent en vormt om
src <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/sluikstort-meldingen-gent-2023/exports/csv",
                  sep = ";" )
src$datum <- as.Date(src$gemaakt_op)
data <- as.data.frame( src %>% group_by(jaar = year(datum), dag =wday(datum, week_start = 1, label= TRUE)) %>% count())
colnames(data) <- c("jaar","dag","aantal")

# Beantwoord hieronder de vragen
totaal <- sum(data$aantal)

percentages <- round( data$aantal / totaal * 100, 1)

context({
  testcaseAssert("De variabele totaal bestaat.", function(env) {
    isTRUE(exists("totaal", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("totaal", function(env) {
      env$totaal
    }, totaal)
    testFunctionUsedInVar("sum", "totaal")
  })
})

context({
  testcaseAssert("De variabele percentages bestaat.", function(env) {
    isTRUE(exists("percentages", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("percentages", function(env) {
          env$percentages
        }, percentages)
    testFunctionUsedInVar("round","percentages")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})



  