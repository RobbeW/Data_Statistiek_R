set.seed(1234)

# Het veralgemeend gemiddelde
mean_generalized <- function(data, p) {
  n <- length(data)
  x_h <- (1 / n * sum(data^p))**(1/p)
  return(round(x_h, 2))
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

nsim <- 20
cases <- list(list(c(98, 97, 98, 99, 100, 98), 3),
              list(c(14, 25, 14, 18, 16, 16, 20), 2))

while( length(cases) < nsim){
  len <- length(cases)
  p <- sample(1:5, 1)
  n <- sample(5:20, 1)
  min <- sample(5:20, 1)
  max <- sample(min:200, 1)
  vec <- sample(min:max, n, replace = TRUE)
  cases[[len+1]] <- list(vec, p)
}

for(case in cases){
  vec <- case[[1]]
  p <- case[[2]]
  context({
     testcase(paste("De functie werkt met als vector", printVecAsis(vec), "en p =", p), {
       testEqual("mean_generalized()" , function(env) {
         env$mean_generalized(vec, p)
       }, mean_generalized(vec, p))
     })
  })
}