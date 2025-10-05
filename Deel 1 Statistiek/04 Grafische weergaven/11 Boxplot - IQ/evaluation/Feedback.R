library(dplyr)  
# Data inlezen
data <- read.csv2("https://github.com/RobbeW/Data_Statistiek_R/blob/main/bronnen/BRAINSIZE.txt",
                  sep="\t")
data <- data %>% mutate(across(where(is.character), ~na_if(., ".")))
data <- as.data.frame(data)
data$Weight <- as.numeric(data$Weight)*0.45359237
data$Height <- as.numeric(data$Height)*2.54
colnames(data) <- c("geslacht", "FSIQ", "VIQ", "PIQ", "massa", "lengte", "MRI")

# Beantwoord hieronder de vragen
gemiddeld_MRI <- mean(data$MRI)
bovengemiddeld_MRI <- data$MRI > gemiddeld_MRI

context({
  testcaseAssert("De variabele gemiddeld_MRI bestaat.", function(env) {
    isTRUE(exists("gemiddeld_MRI", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gemiddeld_MRI", function(env) {
      env$gemiddeld_MRI
    }, gemiddeld_MRI)
    testFunctionUsedInVar("mean", "gemiddeld_MRI")
  })
})

context({
  testcaseAssert("De variabele bovengemiddeld_MRI bestaat.", function(env) {
    isTRUE(exists("bovengemiddeld_MRI", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("bovengemiddeld_MRI", function(env) {
      env$bovengemiddeld_MRI
    }, bovengemiddeld_MRI)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("boxplot")
  })
})



  
