context({
  # Een dataset over Starbucks
  data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/",
                          "tidytuesday/master/data/2021/2021-12-21/starbucks.",
                          "csv"),
                   header = TRUE)

  # Aantal soorten drankjes
  aantal_soorten <- length(data$product_name)

  # Selectie van suikerhoudende dranken
  veel_suiker <- data$sugar_g > 20
  suikerrijke_dranken <- data$caffeine_mg[veel_suiker]

  weinig_suiker <- data$sugar_g <= 20
  suikerarme_dranken <- data$caffeine_mg[weinig_suiker]

  # Berekening centrummaten
  gemiddelde_suikerrijk <- mean(data$caffeine_mg[suikerrijke_dranken])
  mediaan_suikerrijk <- median(data$caffeine_mg[suikerrijke_dranken])

  gemiddelde_suikerarm <- mean(data$caffeine_mg[suikerarme_dranken])
  mediaan_suikerarm <- median(data$caffeine_mg[suikerarme_dranken])

  testcase("De variabelen werden correct berekend:", {
    testEqual("aantal_soorten", function(env) {
      env$aantal_soorten
    }, aantal_soorten)
    testFunctionUsedInVar("length", "aantal_soorten")
    testEqual("gemiddelde_suikerrijk", function(env) {
      env$gemiddelde_suikerrijk
    }, gemiddelde_suikerrijk)
    testFunctionUsedInVar("mean", "gemiddelde_suikerrijk")
    testEqual("mediaan_suikerrijk", function(env) {
      env$mediaan_suikerrijk
    }, mediaan_suikerrijk)
    testFunctionUsedInVar("median", "mediaan_suikerrijk")
    testEqual("gemiddelde_suikerarm", function(env) {
      env$gemiddelde_suikerarm
    }, gemiddelde_suikerarm)
    testFunctionUsedInVar("mean", "gemiddelde_suikerarm")
    testEqual("mediaan_suikerarm", function(env) {
      env$mediaan_suikerarm
    }, mediaan_suikerarm)
    testFunctionUsedInVar("median", "mediaan_suikerarm")
  })
  testcase("De variabele suikerrijke_dranken werd correct berekend:", {
    testEqual("suikerrijke_dranken[1]", function(env) {
      env$suikerrijke_dranken[1]
    }, suikerrijke_dranken[1])
    testEqual("suikerrijke_dranken[100]", function(env) {
      env$suikerrijke_dranken[100]
    }, suikerrijke_dranken[100])
  })
  testcase("De variabele suikerarme_dranken werd correct berekend:", {
    testEqual("suikerarme_dranken[1]", function(env) {
      env$suikerarme_dranken[1]
    }, suikerarme_dranken[1])
    testEqual("suikerarme_dranken[100]", function(env) {
      env$suikerarme_dranken[100]
    }, suikerarme_dranken[100])
  })
})