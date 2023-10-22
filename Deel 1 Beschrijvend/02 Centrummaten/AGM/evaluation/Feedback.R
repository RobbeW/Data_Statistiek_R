mean_geom <- function(data) {
  n <- length(data)
  result <- prod(data)^(1/n)
  return(result)
}

agm <- function(data){
  a <- mean(data)
  g <- mean_geom(data)

  for (i in 1:10){
    x <- mean(c(a,g))
    y <- mean_geom(c(a, g))

    a <- x
    g <- y
  }

  result <- a
  return(result)
}

nsim <- 20
cases <- list(c(1.5, 1.5, 96))


printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

for(case in cases){
  context({
     testcase("De functie mean_geom werkt:", {
       testEqual(paste("met parameter", printVecAsis(case)), function(env) {
         env$mean_geom(case)
    }, mean_geom(case))
     })
  })
  context({
     testcase("De functie agm werkt:", {
       testEqual(paste("met parameter", printVecAsis(case)), function(env) {
         env$agm(case)
    }, agm(case))
     })
  })
}

