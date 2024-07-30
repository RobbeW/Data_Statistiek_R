fibonacci <- function(n) {
  rij <- c(1, 1)
  if (n >= 3) {
    for(i in 3:n){
      nieuw <- rij[i - 1] + rij[i - 2]
      rij <- c(rij, nieuw)
    }
  }

  return(rij[n])
}

nsim <- 20
cases <- 1:20

context({
  testcase("De functie fibonacci(n) werkt met de volgende parameters:", {
    for (case in cases) {
      testEqual(paste("n =", case), function(env) {
        format(env$fibonacci(case), scientific = FALSE)
      }, format(fibonacci(case), scientific = FALSE))
    }
  })
})