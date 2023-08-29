context({
  # Parkeerdata van Stad Gent
  data <- read.csv2(paste0("https://data.stad.gent/api/explore/v2.1/catalog/d",
                           "atasets/bezetting-parkeergarages-real-time/export",
                           "s/csv?lang=nl&timezone=Europe%2FBrussels&use_labe",
                           "ls=true&delimiter=%3B"),
                    sep = ";",
                    colClasses = c("character", "character", "NULL", "numeric",
                                   "numeric", rep("NULL", 14)))
  colnames(data) <- c("naam", "laatste_update", "capaciteit",
                      "percentage_bezet")
  data$percentage_bezet <- data$percentage_bezet / 100

  # Berekeningen
  vrije_plaatsen <- floor(data$capaciteit * (1 - data$percentage_bezet))
  veel_plaats <- data$percentage_bezet < 0.25
  parking_met_veel_plaats <- data$naam[veel_plaats]

  testcase("Variabelen werden correct berekend:", {
    testEqual("vrije_plaatsen", function(env) {
      env$vrije_plaatsen
    }, vrije_plaatsen)
    testEqual("veel_plaats", function(env) {
      env$veel_plaats
    }, veel_plaats)
    testEqual("parking_met_veel_plaats", function(env) {
      env$parking_met_veel_plaats
    }, parking_met_veel_plaats)
  })
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsedInVar("floor", "vrije_plaatsen")
  })
})