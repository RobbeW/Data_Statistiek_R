# Importeert de data van OpenFoodFacts en vormt om
data <- read.csv2(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/openfood_belgium_delhaize.csv",
  sep = ",",
  dec = "."
)

colnames(data) <- c("update", "naam", "nutriscore", "nutri", "nova", "ecoscore", "eco",
                    "kcal", "vet", "verz_vet", "koolhydr", "suiker", "vezels", "eiwit", "zout")

data$update <- as.Date(data$update, format = "%Y-%m-%dT%H:%M:%SZ")
data$nutri  <- toupper(data$nutri)
data$eco    <- toupper(data$eco)

# Antwoord op de vragen
ecologisch <- data$eco == "A" | data$eco == "B"

context({
  testcaseAssert("De variabele ecologisch bestaat.", function(env) {
    isTRUE(exists("ecologisch", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("ecologisch", function(env) {
      env$ecologisch
    }, ecologisch)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("boxplot")
  })
})
