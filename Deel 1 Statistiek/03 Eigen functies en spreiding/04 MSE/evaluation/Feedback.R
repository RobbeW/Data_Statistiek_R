set.seed(1234)

mse <- function(echte_gegevens, voorspelde_gegevens) {
  result <- mean( (echte_gegevens - voorspelde_gegevens)^2)
  return(round(result, 3))
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

nsim <- 20
cases <- list(list(c(1000.02, 1000.96, 1001.82, 1002.75) , c(999.96, 1001.00, 1002.04, 1002.56)),
              list(c(1000.02, 1000.96, 1001.82, 1002.75), c(950.34, 987.15, 1011.71, 1034.18)))

while( length(cases) < nsim){
  len <- length(cases)
  n <- sample(3:8, 1)
  beta <- runif(1, min=0.001, max=2)
  alpha <- runif(1, min=200, max=1200)
  echt <- round(1:n * alpha + beta + rnorm(n), 1)
  pred <- round(1:n * (alpha*runif(1,0.9,1.1)) + beta*runif(1,0.9,1.1) + rnorm(n)*2,1)

  cases[[len + 1]] <- list(echt, pred)
}

for (case in cases) {
  echt <- case[[1]]
  pred <- case[[2]]
  context({
    testcase("De functie mse(echt,voorspelling) werkt met de parameters:", {
      testEqual(paste("echt =",printVecAsis(echt), "en voorspelling =", printVecAsis(pred)),
                function(env) {
                  env$mse(echt, pred)
                }, mse(echt, pred))
    })
  })
}