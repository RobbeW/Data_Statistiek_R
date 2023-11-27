set.seed(1234)

# Een functie die het inproduct simuleert
inproduct <- function(vec1, vec2) {
  resultaat <- sum(vec1 * vec2)
  return(round(resultaat, 2))
}


printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

nsim <- 20
cases <- list(list(c(1, 2, 3), c(3, -1, 2)),
              list(c(-1, 3), c(3, 1)),
              list(c(-0.5), c(2.111)))

while( length(cases) < nsim){
  len <- length(cases)
  n <- sample(2:20, 1)
  vec1 <- sample(-50:50, n, replace = TRUE)
  vec2 <- sample(-50:50, n, replace = TRUE)
  cases[[len+1]] <- list(vec1, vec2)
}

for(case in cases){
  vec1 <- case[[1]]
  vec2 <- case[[2]]
  context({
     testcase(paste("De functie werkt met als parameters", printVecAsis(vec1), "en", printVecAsis(vec2)), {
       testEqual("inproduct()" , function(env) {
         env$inproduct(vec1, vec2)
       }, inproduct(vec1, vec2))
     })
  })
}