library(dplyr)  
# Data inlezen
data <- read.table(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/BRAINSIZE.txt",
  header = TRUE, sep = "\t", na.strings = c(".", "NA", ""),
  stringsAsFactors = FALSE
)

# ── NL kolomnamen + eenheden
names(data)[names(data) == "Gender"]   <- "geslacht"
names(data)[names(data) == "MRICount"] <- "MRI"
data$massa  <- as.numeric(data$Weight) * 0.45359237   # lbs → kg
data$lengte <- as.numeric(data$Height) * 2.54          # inch → cm
data <- data[c("geslacht","FSIQ","VIQ","PIQ","massa","lengte","MRI")]

# ── Referentie-oplossing voor de tests 
gemiddeld_MRI       <- mean(data$MRI, na.rm = TRUE)
bovengemiddeld_MRI  <- data$MRI > gemiddeld_MRI  # NA's blijven NA (OK voor vergelijking)

# ── Tests
context({
  testcaseAssert("De variabele gemiddeld_MRI bestaat.", function(env) {
    isTRUE(exists("gemiddeld_MRI", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gemiddeld_MRI", function(env) env$gemiddeld_MRI, gemiddeld_MRI)
    testFunctionUsedInVar("mean", "gemiddeld_MRI")
  })
})

context({
  testcaseAssert("De variabele bovengemiddeld_MRI bestaat.", function(env) {
    isTRUE(exists("bovengemiddeld_MRI", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("bovengemiddeld_MRI", function(env) env$bovengemiddeld_MRI, bovengemiddeld_MRI)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("boxplot")
  })
})



  
