context({
  testcaseAssert("De variabele avg_speed bestaat.", function(env) {
    isTRUE(exists("avg_speed", env))
  })
  testcaseAssert("De variabele marge_minuten bestaat.", function(env) {
    isTRUE(exists("marge_minuten", env))
  })
  testcaseAssert("De variabele spannende_jaren bestaat.", function(env) {
    isTRUE(exists("spannende_jaren", env))
  })
  testcaseAssert("De variabele spannende_marge_seconden bestaat.",
    function(env) {
      isTRUE(exists("spannende_marge_seconden", env))
    }
  )
  testcaseAssert("De variabele speciale_winnaars bestaat.", function(env) {
    isTRUE(exists("speciale_winnaars", env))
  })
})

# Gegevens ophalen en enkele manipulaties
data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/",
                        "tidytuesday/master/data/2020/2020-04-07/tdf_winner",
                        "s.csv"),
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), "NULL",
                                rep("numeric", 8), rep("NULL", 7)))
data <- na.omit(data)
colnames(data)[1:2] <- c("year", "winner")
data$year <- substr(data$year, 1, 4)
rownames(data) <- seq_len(nrow(data))
# Beantwoord hieronder de vragen
avg_speed <- round(data$distance / data$time_overall, 2)
# Hoeveel minuten verschil?
marge_minuten <- round(data$time_margin * 60, 2)
# Spannende edities
spannende_jaren <- data$year[marge_minuten < 1]
spannende_marge_seconden <- marge_minuten[marge_minuten < 1] * 60
spannende_marge_seconden2 <- data$time_margin[marge_minuten < 1]*3600
# Meer ritten gewonnen dan in het geel rijden
speciale_winnaars <- data$winner[data$stage_wins > data$stages_led]
# Amerikaanse winnaars
jaren_amerika <- data$year[data$winner == "Greg LeMond"
                           | data$winner == "Lance Armstrong"]

context({
  testcase("Variabele werd correct berekend:", {
    testEqual("avg_speed", function(env) {
      env$avg_speed
    }, avg_speed)
    testFunctionUsedInVar("round", "avg_speed")
  })
})
context({
  testcase("Variabele werd correct berekend:", {
    testEqual("marge_minuten", function(env) {
      env$marge_minuten
    }, marge_minuten)
    testFunctionUsedInVar("round", "marge_minuten")
  })
})
context({
  testcase("Variabelen werden correct berekend:", {
    testEqual("spannende_jaren", function(env) {
      env$spannende_jaren
    }, spannende_jaren)
    testEqual("spannende_marge_seconden", function(env) {
      env$spannende_marge_seconden
    }, paste(toString(spannende_marge_seconden), "of afgerond", toString(spannende_marge_seconden2)),
    function(gen, exp) {
      isTRUE(all.equal(gen, spannende_marge_seconden)) | isTRUE(all.equal(gen, spannende_marge_seconden2))
    })
  })
})
context({
  testcase("Variabele werd correct berekend:", {
    testEqual("speciale_winnaars", function(env) {
      env$speciale_winnaars
    }, speciale_winnaars)
  })
})
context({
  testcase("Resultaat werd correct geselecteerd:", {
    testEqual("Jaren waarbij er een Amerikaanse winnaar was", function(env) {
      env$evaluationResult
    }, jaren_amerika)
  })
})