# Een dataset over Starbucks
data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/ti",
                        "dytuesday/master/data/2021/2021-12-21/starbucks.csv"),
                 header = TRUE,
                 colClasses = c("character", rep("NULL", 3), rep("numeric", 3), rep("NULL",4), rep("numeric", 4)))

# Enkel de grote bekers
grote_beker <- data$serv_size_m_l == 473

# Hoeveel bevatten teveel caffeïne?
aantal_teveel_caffeine <- sum(data$caffeine_mg[grote_beker] > 200)

# Bepalen van de 'ongezonde' drankjes.
gem_sugar <- mean(data$sugar_g[grote_beker])
gem_caffeine <- mean(data$caffeine_mg[grote_beker])

producten_in_grote_beker <- data$product_name[grote_beker]
ongezonde_drank <- producten_in_grote_beker[data$sugar_g[grote_beker] > gem_sugar & data$caffeine_mg[grote_beker] > gem_caffeine]

ongezond_percentage <- round( length(ongezonde_drank)/sum(grote_beker) * 100, 2)

context({
  testcaseAssert("De variabele grote_beker bestaat.", function(env) {
    isTRUE(exists("grote_beker", env))
  })
  testcase("De variabele werden correct berekend:", {
    testEqual("grote_beker", function(env) {
      env$grote_beker
    }, grote_beker)
  })
})

context({
  testcaseAssert("De variabele aantal_teveel_caffeine bestaat.", function(env) {
    isTRUE(exists("aantal_teveel_caffeine", env))
  })
  testcase("De variabele werden aantal_teveel_caffeine berekend:", {
    testEqual("aantal_teveel_caffeine", function(env) {
      env$aantal_teveel_caffeine
    }, aantal_teveel_caffeine)
  })
})

context({
  testcaseAssert("De variabele ongezonde_drank bestaat.", function(env) {
    isTRUE(exists("ongezonde_drank", env))
  })
  testcaseAssert("De variabele ongezond_percentage bestaat.", function(env) {
    isTRUE(exists("ongezond_percentage", env))
  })
  testcase("De variabele werden ongezonde_drank berekend:", {
    testEqual("ongezonde_drank", function(env) {
      env$ongezonde_drank
    }, ongezonde_drank)
  })
  testcase("De variabele werden ongezond_percentage berekend:", {
    testEqual("ongezond_percentage", function(env) {
      env$ongezond_percentage
    }, ongezond_percentage)
  })
  testFunctionUsedInVar("round", "ongezond_percentage")
})