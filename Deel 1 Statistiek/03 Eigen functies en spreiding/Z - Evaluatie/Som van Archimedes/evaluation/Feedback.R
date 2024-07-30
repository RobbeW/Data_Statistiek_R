options(digits = 20)
# Een functie die de Archimedes som simuleert
archimedes <- function(n) {
  rij <- 1:n
  resultaat <- sum((1 / 4)^rij)
  return(round(resultaat, 9))
}

rijtje <- c(2, 3, 4, 5)
rijtje <- c(rijtje, 10^(1:3))

context({
  testcase("De functie archimedes(aantal) werkt met de volgende parameters:", {
    for (case in rijtje) {
      testEqual(paste("aantal =", case), function(env) {
        format(env$sylvester(case), scientific = FALSE)
      }, format(sylvester(case), scientific = FALSE))
    }
  })
})