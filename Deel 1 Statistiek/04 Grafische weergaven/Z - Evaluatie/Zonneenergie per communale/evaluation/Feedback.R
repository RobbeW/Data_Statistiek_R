# Importeert de data van Fluvius
data <- read.csv2("https://data.opendatasoft.com/api/explore/v2.1/catalog/datasets/1_33-lp-open-data-fluvius@fluvius/exports/csv",
                  sep = ";",
                  colClasses = c("NULL", rep("character", 3), "numeric", "character") )
colnames(data) <- c("netbeheerder", "gemeente", "technologie", "aantal", "vermogen")
data <- data[data$netbeheerder != "Niet toegewezen" & data$gemeente != "Niet toegewezen",]
data$vermogen <- as.numeric(data$vermogen)
rownames(data) <- seq_len(nrow(data))

# Plot
gemiddeld_vermogen <- round( data$vermogen/data$aantal, 2)
zon <- data$technologie == "ZONNE-ENERGIE"

context({
  testcaseAssert("De variabele gemiddeld_vermogen bestaat.", function(env) {
    isTRUE(exists("gemiddeld_vermogen", env))
  })
  testcase("De variabele werd gemiddeld_vermogen correct berekend:", {
    testEqual("gemiddeld_vermogen", function(env) {
      env$gemiddeld_vermogen
    }, gemiddeld_vermogen)
    testFunctionUsedInVar("round", "gemiddeld_vermogen")
  })
})

context({
  testcaseAssert("De variabele zon bestaat.", function(env) {
    isTRUE(exists("zon", env))
  })
  testcase("De variabele zon werd correct bepaald:", {
    testEqual("zon", function(env) {
      env$zon
    }, zon)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("boxplot")
  })
})



  