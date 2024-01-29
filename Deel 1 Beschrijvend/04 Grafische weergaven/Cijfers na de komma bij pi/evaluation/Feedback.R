# needed library
library(dplyr)

# downloading 100 000 digits of pi
url <- "https://www.angio.net/pi/digits/100000.txt"
getalpi.raw<-readr::read_file(url)

# splitting string into single characters
getalpi <- data.frame(strsplit(getalpi.raw, "")[1])
# removing the "." i.e. 2nd row
getalpi <- data.frame(getalpi[-c(1,2),])
data <- as.data.frame(table(getalpi[,1], dnn = list("cijfer")), responseName = "aantal")

# Antwoord op de vragen
aantal_cijfers <- sum(data$aantal)

relatieve_frequentie <- round( (data$aantal / aantal_cijfers)*100, 2)

context({
  testcaseAssert("De variabele aantal_cijfers bestaat.", function(env) {
    isTRUE(exists("aantal_cijfers", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("aantal_cijfers", function(env) {
      env$aantal_cijfers
    }, aantal_cijfers)
    testFunctionUsedInVar("sum", "aantal_cijfers")
  })
})

context({
  testcaseAssert("De variabele relatieve_frequentie bestaat.", function(env) {
    isTRUE(exists("relatieve_frequentie", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("relatieve_frequentie", function(env) {
          env$relatieve_frequentie
        }, relatieve_frequentie)
    testFunctionUsedInVar("round","relatieve_frequentie")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})



  