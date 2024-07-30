perrin <- function(n) {
  rij <- c(3, 0, 2)
  if (n >= 4) {
    for (i in 4:n){
      nieuw <- rij[i - 2] + rij[i - 3]
      rij <- c(rij, nieuw)
    }
  }

  return(rij[n])
}

nsim <- 20
cases <- 1:20

context({
  testcase("De functie perrin(n) werkt met de volgende parameters:", {
    for (case in cases) {
      testEqual(paste("n =", case), function(env) {
        format(env$perrin(case), scientific = FALSE)
      }, format(perrin(case), scientific = FALSE))
    }
  })
})
