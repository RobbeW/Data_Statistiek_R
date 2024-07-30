recaman <- function(n) {
  rij <- c(0)
  if (n >= 2) {
    for (i in 2:n) {
      nieuw <- rij[i - 1] - i + 1
      if (nieuw <= 0 || (nieuw %in% rij)) {
        nieuw <- rij[i - 1] + i - 1
      }
      rij <- c(rij, nieuw)
    }
  }

  return(rij[n])
}

nsim <- 20
cases <- 1:20

context({
  testcase("De functie recaman(n) werkt met de volgende parameters:", {
    for (case in cases) {
      testEqual(paste("n =", case), function(env) {
        format(env$recaman(case), scientific = FALSE)
      }, format(recaman(case), scientific = FALSE))
    }
  })
})
