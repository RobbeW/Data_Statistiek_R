context({
  # Stiptheidsscijfers Infrabel
  data <- read.csv(paste0("https://opendata.infrabel.be/api/explore/v2.1/cata",
                          "log/datasets/nationale-stiptheid-per-maand/exports",
                          "/csv"),
                   sep = ";", header = TRUE,
                   colClasses = c("NULL", "character", rep("numeric", 5)))
  # De kolommen hernoemen
  colnames(data) <- c("maand", "stiptheid", "aantal", "aantal_min_6",
                      "totale_min_vertraging", "stiptheid_neutr")

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

  testcase("De variabelen werden correct berekend:", {
    testEqual("maanden_slechte_stiptheid", function(env) {
      env$maanden_slechte_stiptheid
    }, maanden_slechte_stiptheid)
    testEqual("gemiddeld_min_vertraging", function(env) {
      env$gemiddeld_min_vertraging
    }, gemiddeld_min_vertraging)
    testEqual("stiptheidsveschil", function(env) {
      env$stiptheidsveschil
    }, stiptheidsveschil)
    testEqual("mediaan_stiptheidsverschil", function(env) {
      env$mediaan_stiptheidsverschil
    }, mediaan_stiptheidsverschil)
    testFunctionUsedInVar("median", "mediaan_stiptheidsverschil")
    testEqual("maanden_met_externe_factoren", function(env) {
      env$maanden_met_externe_factoren
    }, maanden_met_externe_factoren)
  })
})