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
gent <- data$gemeente == "GENT"
aantal_installaties_gent <- sum(data$aantal[gent])
gemiddelde_gent <- mean(gemiddeld_vermogen[gent])

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
  testcaseAssert("De variabele gent bestaat.", function(env) {
    isTRUE(exists("gent", env))
  })
  testcase("De variabele werd gent correct berekend:", {
    testEqual("gent", function(env) {
      env$gent
    }, gent)
  })
})

context({
  testcaseAssert("De variabele aantal_installaties_gent bestaat.", function(env) {
    isTRUE(exists("aantal_installaties_gent", env))
  })
  testcase("De variabele werd aantal_installaties_gent correct berekend:", {
    testEqual("aantal_installaties_gent", function(env) {
      env$aantal_installaties_gent
    }, aantal_installaties_gent)
    testFunctionUsedInVar("sum", "aantal_installaties_gent")
  })
})

 context({
  testcaseAssert("De variabele gemiddelde_gent bestaat.", function(env) {
    isTRUE(exists("gemiddelde_gent", env))
  })
  testcase("De variabele werd gemiddelde_gent correct berekend:", {
    testEqual("gemiddelde_gent", function(env) {
      env$gemiddelde_gent
    }, gemiddelde_gent)
    testFunctionUsedInVar("mean", "gemiddelde_gent")
  })
}) 