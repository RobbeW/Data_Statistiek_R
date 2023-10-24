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

# Vraag 3
gemiddeld_kort <- mean(wachttijd_kort)
gemiddeld_lang <- mean(wachttijd_lang)

boolean <- data$time_waiting > gemiddeld_kort & data$time_waiting < gemiddeld_lang

percentage_wachttijd <- round(mean(boolean), 2)

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
  testcase("De variabelen werden correct berekend:", {
    testEqual("wachttijd_kort", function(env) {
      env$wachttijd_kort
    }, wachttijd_kort)
    testEqual("wachttijd_lang", function(env) {
      env$wachttijd_lang
    }, wachttijd_lang)
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
    testFunctionUsedInVar("mean", "percentage_wachttijd")
  })
})