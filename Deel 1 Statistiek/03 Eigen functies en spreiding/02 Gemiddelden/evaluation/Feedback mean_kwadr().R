set.seed(1234)

# Het kwadratisch gemiddelde
mean_kwadr <- function(data) {
  n <- length(data)
  x_q <- sqrt(1 / n * sum(data^2))
  return(round(x_q, 2))
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x,
         ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse = ", "), ")")))
}

nsim <- 20
cases <- list(c(98, 97, 98, 99, 100, 98), c(14, 25, 14, 18, 16, 16, 20), c(21, 21))

while (length(cases) < nsim) {
  len <- length(cases)
  n <- sample(5:20, 1)
  min <- sample(5:20, 1)
  max <- sample(min:200, 1)
  vec <- sample(min:max, n)
  cases[[len + 1]] <- vec
}

for (case in cases) {
  context({
    testcase("De functie mean_kwadr(data) werkt met de volgende parameter:", {
      testEqual(paste("data =", printVecAsis(case)), function(env) {
        env$mean_kwadr(case)
      }, mean_kwadr(case))
    })
  })
}