set.seed(1234)

mse <- function(echte_gegevens, voorspelde_gegevens) {
  result <- mean( (echte_gegevens - voorspelde_gegevens)^2)
  return(round(result, 2))
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

nsim <- 2
cases <- list(list(c(1000.02, 1000.96, 1001.82, 1002.75) , c(999.96, 1001.00, 1002.04, 1002.56)))
cases <- append(cases, list(c(1000.02, 1000.96, 1001.82, 1002.75), c(950.34, 987.15, 1011.71, 1034.18)))

while( length(cases) < nsim){
  len <- length(cases)
  n <- sample(5:20, 1)
  min <- sample(5:20, 1)
  max <- sample(min:200, 1)
  vec <- sample(min:max, n)
  cases[[len+1]] <- vec
}

for(case in cases){
  echt <- case[[1]]
  pred <- case[[2]]
  context({
     testcase(paste("De functie mse werkt met parameter 1", printVecAsis(echt), "en parameter 2", printVecAsis(pred)), {
       testEqual("mse()" , function(env) {
         env$mse(echt, pred)
       }, mse(echt, pred))
     })
  })
}