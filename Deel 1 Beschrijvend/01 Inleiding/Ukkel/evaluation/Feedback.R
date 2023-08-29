context({
  testcase("Aantal minuten zonneschijn:", {
    testEqual("gemiddelde_zonneschijn", function(env) {
      env$gemiddelde_zonneschijn
    }, res1a)
    testEqual("veel_zon", function(env) {
      env$veel_zon
    }, res1b)
    testEqual("zonnige_dagen", function(env) {
      env$zonnige_dagen
    }, res1c)
  })
  testcase("Aantal mm neerslag:", {
    testEqual("gemiddelde_neerslag", function(env) {
      env$gemiddelde_neerslag
    }, res2a)
    testEqual("weinig_neerslag", function(env) {
      env$weinig_neerslag
    }, res2b)
    testEqual("droge_dagen", function(env) {
      env$droge_dagen
    }, res2c)
  })
}, preExec = {
  dataset <- read.table("https://www.meteo.be/resources/climatology/uccle_month/Ukkel_waarnemingen.txt",
                    header = FALSE, skip = 5)
  colnames(dataset) <- c("datum", "temp_max", "temp_min", "temp_gem",
                         "neerslag", "wind", "zonneschijn")
  dataset$zonneschijn <- strtoi(as.difftime(dataset$zonneschijn,
                                            format = "%H:%M", units = "mins"))

  # Dagen met bovengemiddeld aantal minuten zon
  res1a <- mean(dataset$zonneschijn)
  res1b <- (dataset$zonneschijn > res1a)
  res1c <- dataset$datum[res1b]

  # Dagen met ondergemiddelde hoeveelheid neerslag
  res2a <- mean(dataset$neerslag)
  res2b <- (dataset$neerslag < res2a)
  res2c <- dataset$datum[res2b]
})