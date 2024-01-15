# Data inlezen van de IMDB
data <- read.csv2("https://raw.githubusercontent.com/LearnDataSci/articles/master/Python%20Pandas%20Tutorial%20A%20Complete%20Introduction%20for%20Beginners/IMDB-Movie-Data.csv",
                  sep=",",dec=".",
                  colClasses = c("NULL", "character", rep("NULL",4), "character", rep("numeric", 5)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "runtime", "rating", "votes", "revenue_millions","metascore")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
n = length(data$runtime)
aantal_staven = sqrt(n)

context({
  testcaseAssert("De variabele n bestaat.", function(env) {
    isTRUE(exists("n", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("n", function(env) {
      env$n
    }, n)
    testFunctionUsedInVar("length", "n")
  })
})

context({
  testcaseAssert("De variabele aantal_staven bestaat.", function(env) {
    isTRUE(exists("aantal_staven", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("aantal_staven", function(env) {
      env$aantal_staven
    }, aantal_staven)
    testFunctionUsedInVar("sqrt", "aantal_staven")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("hist")
  })
})



  