set.seed(1234)

mean_geom <- function(data) {
  n <- length(data)
  result <- prod(data)^(1 / n)
  return(result)
}

nsim <- 20
cases <- list(c(1.5, 1.5, 96), c(98, 97, 98, 99, 100, 98) , c(14, 25, 14, 18, 16, 16, 20))

while (length(cases) < nsim) {
  len <- length(cases)
  n <- sample(5:20, 1)
  min <- sample(5:20, 1)
  max <- sample(min:200, 1)
  vec <- sample(min:max, n, replace = TRUE)
  cases[[len + 1]] <- vec
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

for (case in cases) {
  context({
    testcase("De functie mean_geom(data) werkt met de volgende parameter:", {
      testEqual(print("data =",printVecAsis(case)), function(env) {
        env$mean_geom(case)
      }, mean_geom(case))
    })
  })
}