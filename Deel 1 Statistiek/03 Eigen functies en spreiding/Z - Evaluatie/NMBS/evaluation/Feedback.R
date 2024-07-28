# Stiptheidsscijfers Infrabel
data <- read.csv(paste0("https://opendata.infrabel.be/api/explore/v2.1/cata",
                        "log/datasets/nationale-stiptheid-per-maand/exports",
                        "/csv"),
                  sep = ";", header = TRUE,
                  colClasses = c("NULL", "character", rep("numeric", 5)))
# De kolommen hernoemen
colnames(data) <- c("maand", "stiptheid", "aantal", "aantal_min_6",
                    "totale_min_vertraging", "stiptheid_neutr")
data <- data[order(data$maand, decreasing = TRUE),]
rownames(data) <- seq_len(nrow(data))

# Bepaal hier een antwoord op de vragen
maanden_slechte_stiptheid <- data$maand[data$stiptheid_neutr < 90]

# Gemiddeld aantal minuten vertraging
aantal_met_vertraging <- data$aantal - data$aantal_min_6
gemiddeld_min_vertraging <- round(data$totale_min_vertraging
                                  / aantal_met_vertraging, 2)

# Stiptheidsverschil
stiptheidsveschil <- data$stiptheid_neutr - data$stiptheid
mediaan_stiptheidsverschil <- median(stiptheidsveschil)
maanden_met_externe_factoren <- data$maand[stiptheidsveschil
                                            >= 2 * mediaan_stiptheidsverschil]

context({
  testcaseAssert("De variabele maanden_slechte_stiptheid bestaat.", function(env) {
    isTRUE(exists("maanden_slechte_stiptheid", env))
  })
  testcase("De variabele werden correct berekend:", {
    testEqual("maanden_slechte_stiptheid", function(env) {
      env$maanden_slechte_stiptheid
    }, maanden_slechte_stiptheid)
  })
})

context({
  testcaseAssert("De variabele aantal_met_vertraging bestaat.", function(env) {
    isTRUE(exists("aantal_met_vertraging", env))
  })
  testcaseAssert("De variabele gemiddeld_min_vertraging bestaat.", function(env) {
    isTRUE(exists("gemiddeld_min_vertraging", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("aantal_met_vertraging", function(env) {
      env$aantal_met_vertraging
    }, aantal_met_vertraging)
    testEqual("gemiddeld_min_vertraging", function(env) {
      env$gemiddeld_min_vertraging
    }, gemiddeld_min_vertraging)
    testFunctionUsedInVar("round", "gemiddeld_min_vertraging")
  })
})


context({
  testcaseAssert("De variabele mediaan_stiptheidsverschil bestaat.", function(env) {
    isTRUE(exists("mediaan_stiptheidsverschil", env))
  })
  testcaseAssert("De variabele maanden_met_externe_factoren bestaat.", function(env) {
    isTRUE(exists("maanden_met_externe_factoren", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("mediaan_stiptheidsverschil", function(env) {
      env$mediaan_stiptheidsverschil
    }, mediaan_stiptheidsverschil)
    testFunctionUsedInVar("median", "mediaan_stiptheidsverschil")
    testEqual("maanden_met_externe_factoren", function(env) {
      env$maanden_met_externe_factoren
    }, maanden_met_externe_factoren)
  })
})