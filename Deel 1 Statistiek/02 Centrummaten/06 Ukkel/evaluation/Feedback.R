dataset <- read.table("https://www.meteo.be/resources/climatology/uccle_month/Ukkel_waarnemingen.txt",
                       header = FALSE, skip = 5)
colnames(dataset) <- c("datum", "temp_max", "temp_min", "temp_gem",
                        "neerslag", "wind", "zonneschijn")
dataset$zonneschijn <- strtoi(as.difftime(dataset$zonneschijn,
                                          format = "%H:%M", units = "mins"))

# Dagen met bovengemiddeld aantal minuten zon
res1a <- round(mean(dataset$zonneschijn), 2)
res1b <- (dataset$zonneschijn > res1a)
res1c <- dataset$datum[res1b]

# Dagen met ondergemiddelde hoeveelheid neerslag
res2a <- round(mean(dataset$neerslag), 2)
res2b <- (dataset$neerslag < res2a)
res2c <- dataset$datum[res2b]

context({
  testcaseAssert("De variabele gemiddelde_zonneschijn bestaat.", function(env) {
    isTRUE(exists("gemiddelde_zonneschijn", env))
  })
  testcase("Variabele werd correct berekend:", {
    testEqual("gemiddelde_zonneschijn", function(env) {
      env$gemiddelde_zonneschijn
    }, res1a)
    testFunctionUsedInVar("mean", "gemiddelde_zonneschijn")
    testFunctionUsedInVar("round", "gemiddelde_zonneschijn")
  })
})

context({
  testcaseAssert("De variabele veel_zon bestaat.", function(env) {
    isTRUE(exists("veel_zon", env))
  })
  testcase("Variabele werd correct bepaald:", {
    testEqual("veel_zon", function(env) {
      env$veel_zon
    }, res1b)
  })
})

context({
  testcaseAssert("De variabele zonnige_dagen bestaat.", function(env) {
    isTRUE(exists("zonnige_dagen", env))
  })
  testcase("Variabele werd correct bepaald:", {
    testEqual("zonnige_dagen", function(env) {
      env$zonnige_dagen
    }, res1c)
  })
})

context({
  testcaseAssert("De variabele gemiddelde_neerslag bestaat.", function(env) {
    isTRUE(exists("gemiddelde_neerslag", env))
  })
  testcaseAssert("De variabele weinig_neerslag bestaat.", function(env) {
    isTRUE(exists("weinig_neerslag", env))
  })
  testcaseAssert("De variabele droge_dagen bestaat.", function(env) {
    isTRUE(exists("droge_dagen", env))
  })
  testcase("Variabelen werden correct bepaald.", {
    testEqual("gemiddelde_neerslag", function(env) {
      env$gemiddelde_neerslag
    }, res2a)
    testEqual("weinig_neerslag", function(env) {
      env$weinig_neerslag
    }, res2b)
    testEqual("droge_dagen", function(env) {
      env$droge_dagen
    }, res2c)
    testFunctionUsedInVar("mean", "gemiddelde_neerslag")
    testFunctionUsedInVar("round", "gemiddelde_neerslag")
  })
})