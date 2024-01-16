# Data inlezen van de IMDB
data <- read.csv2("http://tinyurl.com/mr4b4bz8",
                  sep=",",dec=".",
                  colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("NULL",2)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "metascore", "rating", "positivity_ratio", "time_to_beat","time_to_beat_extra")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
lang <- data$time_to_beat >= 24

context({
  testcaseAssert("De variabele lang bestaat.", function(env) {
    isTRUE(exists("lang", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("lang", function(env) {
      env$lang
    }, lang)
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("boxplot")
  })
})


