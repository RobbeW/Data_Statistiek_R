set.seed(1234)

# Lehmers gemiddelde
lehmer <- function(vector, p) {
  teller <- sum(vector^p)
  noemer <- sum(vector^(p - 1))
  resultaat <- teller / noemer
  return(round(resultaat, 4))
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

nsim <- 20
cases <- list(list(c(1, 2, 5), 2))

while (length(cases) < nsim) {
  len <- length(cases)
  n <- sample(2:20, 1)
  p <- sample(1:4, 1)
  vec <- sample(1:50, n, replace = TRUE)
  cases[[len + 1]] <- list(vec, p)
}

for (case in cases) {
  vec <- case[[1]]
  p <- case[[2]]
  context({
    testcase("De functie lehmer(vector, p) werkt met de parameters", {
      testEqual(paste("vector =", printVecAsis(vec), "en p =", p), function(env) {
         env$lehmer(vec, p)
       }, lehmer(vec, p))
     })
  })
}