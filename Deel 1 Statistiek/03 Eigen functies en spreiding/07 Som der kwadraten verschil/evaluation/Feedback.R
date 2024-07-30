verschil <- function(n) {
  row <- 1:n
  res <- sum(row)^2 - sum(row^2)
  return(res)
}

nsim <- 20
cases <- list(10, 20)

while (length(cases) < nsim) {
  len <- length(cases)
  n <- sample(5:40, 1) * 5
  cases[[len + 1]] <- n
}

cases <- sort(cases)

context({
  testcase("De functie verschil() werkt met de volgende parameters:", {
    for (case in cases) {
      testEqual(case, function(env) {
        env$verschil(case)
      }, verschil(case))
    }
  })
})
