# Importeert de data
data <- read.csv2("https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/games.csv",
                  sep = ",")
data <- data[,c(2,5,7)]
colnames(data) <- c("title", "rating", "reviews")
data$reviews <- substr(data$reviews, 1, nchar(data$reviews) - 1)

testVar <- data$reviews

context({
  testcaseAssert("De variabele testVar bestaat.", function(env) {
    isTRUE(exists("testVar", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("testVar", function(env) {
      env$testVar
    }, testVar)
  })
})