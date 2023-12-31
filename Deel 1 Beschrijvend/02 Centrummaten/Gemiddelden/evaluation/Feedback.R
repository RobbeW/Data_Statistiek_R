set.seed(1234)

# Het meetkundig gemiddelde
mean_geom <- function(data) {
  n <- length(data)
  x_g <- prod(data)^(1 / n)
  return(round(x_g, 2))
}

# Het harmonisch gemiddelde
mean_harm <- function(data) {
  n <- length(data)
  x_h <- n / sum(1 / data)
  return(round(x_h, 2))
}

# Het kwadratisch gemiddelde
mean_kwadr <- function(data) {
  n <- length(data)
  x_q <- sqrt(1 / n * sum(data^2))
  return(round(x_q, 2))
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

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
     testcase(paste("De functies werken met parameter", printVecAsis(case)), {
       testEqual("mean_geom()" , function(env) {
         env$mean_geom(case)
       }, mean_geom(case))
       testEqual("mean_harm()" , function(env) {
         env$mean_harm(case)
       }, mean_harm(case))
       testEqual("mean_kwadr()" , function(env) {
         env$mean_kwadr(case)
       }, mean_kwadr(case))
     })
  })
}