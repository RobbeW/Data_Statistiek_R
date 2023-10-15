set.seed(1234)

# Olympisch gemiddelde als functie
olympic_mean <- function(data) {
  data_sorted <- sort(data)
  resultaat <- mean(data_sorted[2:(length(data) - 1)])
  return(resultaat)
}

nsim <- 20
cases <- list(c(98, 97, 98, 99, 100, 98) , c(14, 25, 14, 18, 16, 16, 20))

while( length(cases) < nsim){
  len <- length(cases)
  n <- sample(5:20, 1)
  min <- sample(5:20, 1)
  max <- sample(min:200, 1)
  vec <- sample(min:max, n)
  cases[[len+1]] <- vec
}

for(case in cases){
  context({
     testcase("De functie werkt:", {
       testEqual(paste("met parameter", case), function(env) {
         env$olympic_mean(case)
    }, olympic_mean(case))
     })
  })
}
