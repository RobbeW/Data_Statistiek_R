# Data inlezen
data <- read.csv2("https://raw.githubusercontent.com/shrikant-temburwar/Wine-Quality-Dataset/master/winequality-red.csv",
                  sep=";", dec=".",
                  colClasses=c(rep("NULL", 4), "numeric", rep("NULL", 2),rep("numeric", 5)))

# Beantwoord hieronder de vragen
mediaan <- median(data$quality)
goede_wijnen <- data$quality > mediaan

context({
  testcaseAssert("De variabele mediaan bestaat.", function(env) {
    isTRUE(exists("vrouwen", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("mediaan", function(env) {
      env$mediaan
    }, mediaan)
    functionUsedInVar('mediaan', 'median')
  })
})

context({
  testcaseAssert("De variabele goede_wijnen bestaat.", function(env) {
    isTRUE(exists("goede_wijnen", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("goede_wijnen", function(env) {
      env$goede_wijnen
    }, goede_wijnen)
  })
})

contextWithImage({
  testcase("De volgende functies werd gebruikt:", {
    testFunctionUsed("plot")
    testFunctionUsed("abline")
  })
})



  