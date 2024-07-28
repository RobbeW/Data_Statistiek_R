# Een dataset met gegevens Old Faithful
data <- read.csv("https://raw.githubusercontent.com/gchoi/Dataset/master/OldFaithful.csv",
                 header = TRUE)
colnames(data) <- c("time_eruption", "time_waiting")

# Bepaal hier een antwoord op de vragen
# Vraag 1
kort <- data$time_eruption < 3.5

# Vraag 2
wachttijd_kort <- data$time_waiting[kort]
wachttijd_lang <- data$time_waiting[!kort]
gem_wachttijd_kort <- mean(wachttijd_kort)
gem_wachttijd_lang <- mean(wachttijd_lang)

# Vraag 3
boolean <- data$time_waiting > gem_wachttijd_kort & data$time_waiting < gem_wachttijd_lang

percentage_wachttijd <- round(mean(boolean)*100, 2)


context({
  testcaseAssert("De variabele kort bestaat.", function(env) {
    isTRUE(exists("kort", env))
  })
  testcase("De variabele werden correct berekend:", {
    testEqual("kort", function(env) {
      env$kort
    }, kort)
  })
})

context({
  testcaseAssert("De variabele wachttijd_kort bestaat.", function(env) {
    isTRUE(exists("wachttijd_kort", env))
  })
  testcaseAssert("De variabele wachttijd_lang bestaat.", function(env) {
    isTRUE(exists("wachttijd_lang", env))
  })
  testcaseAssert("De variabele gem_wachttijd_kort bestaat.", function(env) {
    isTRUE(exists("gem_wachttijd_kort", env))
  })
  testcaseAssert("De variabele gem_wachttijd_lang bestaat.", function(env) {
    isTRUE(exists("gem_wachttijd_lang", env))
  })
  testcase("De variabelen werden correct berekend:", {
    testEqual("wachttijd_kort", function(env) {
      env$wachttijd_kort
    }, wachttijd_kort)
    testEqual("wachttijd_lang", function(env) {
      env$wachttijd_lang
    }, wachttijd_lang)
    testEqual("gem_wachttijd_kort", function(env) {
      env$gem_wachttijd_kort
    }, gem_wachttijd_kort)
    testEqual("gem_wachttijd_lang", function(env) {
      env$gem_wachttijd_lang
    }, gem_wachttijd_lang)
    testFunctionUsedInVar("mean", "gem_wachttijd_kort")
    testFunctionUsedInVar("mean", "gem_wachttijd_lang")
  })

})


context({
  testcaseAssert("De variabele percentage_wachttijd bestaat.", function(env) {
    isTRUE(exists("percentage_wachttijd", env))
  })

  testcase("De variabele werden correct berekend:", {
    testEqual("percentage_wachttijd", function(env) {
      env$percentage_wachttijd
    }, percentage_wachttijd)
    testFunctionUsedInVar("round", "percentage_wachttijd")
  })
})