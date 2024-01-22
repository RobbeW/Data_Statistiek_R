# Data inlezen
data <- read.csv2("https://gist.githubusercontent.com/aishwarya8615/89d9f36fc014dea62487f7347864d16a/raw/8629d284e13976dcb13bb0b27043224b9266fffa/Life_Expectancy_Data.csv",
                  sep=",", dec=".",
                  colClasses=c("character", "NULL", "numeric", "NULL", "numeric", rep("NULL", 2), "numeric", rep("NULL", 3), "numeric",rep("NULL", 2), "character",rep("NULL",2), "numeric", rep("NULL",5)))
colnames(data) <- c("land", "jaar","levensverwachting", "alcohol", "BMI","uitgavepercentage","GDP")
data$uitgavepercentage <- suppressWarnings(as.numeric(data$uitgavepercentage))
data <- na.omit(data)
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
meest_recent <- data$jaar == 2014

context({
  testcaseAssert("De variabele meest_recent bestaat.", function(env) {
    isTRUE(exists("meest_recent", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("meest_recent", function(env) {
      env$meest_recent
    }, meest_recent)
  })
})

contextWithImage({
  testcase("De volgende functies werd gebruikt:", {
    testFunctionUsed("plot")
    testFunctionUsed("abline")
  })
})



  