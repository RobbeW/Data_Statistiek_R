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

res <- agm(c(1.5, 1.5, 96))
# 16.674979426402