verschil <- function(n) {
  row <- 1:n
  res <- sum(row)^2 - sum(row^2)
  return(res)
}

nsim <- 20
cases <- c(10, 20)

while (length(cases) < nsim) {
  len <- length(cases)
  n <- sample(5:40, 1) * 5
  if (!(n %in% cases)){
    cases <- c(cases, n)
  }
}

cases_sorted <- sort(cases)

context({
  testcase("De functie verschil(n) werkt met de volgende parameters:", {
    for (case in cases_sorted) {
      testEqual(paste("n =", case), function(env) {
        env$verschil(case)
      }, verschil(case))
    }
  })
})
