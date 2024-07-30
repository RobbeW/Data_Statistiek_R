set.seed(1234)

# De steekproefvariantie
var_steekproef <- function(data) {
  overline_x <- mean(data)
  n <- length(data)
  res <- 1 / (n - 1) * sum((data - overline_x)^2)
  return(round(res, 4))
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

nsim <- 20
cases <- list(list(c(98, 97, 98, 99, 100, 98)),
              list(c(14, 25, 14, 18, 16, 16, 20)))

while (length(cases) < nsim) {
  len <- length(cases)
  n <- sample(5:20, 1)
  min <- sample(5:20, 1)
  max <- sample(min:200, 1)
  vec <- sample(min:max, n, replace = TRUE)
  cases[[len + 1]] <- list(vec)
}

for (case in cases) {
  vec <- case[[1]]
  context({
    testcase("De functie var_steekproef() werkt met de volgende parameter:", {
      testEqual(printVecAsis(vec), function(env) {
        env$var_steekproef(vec)
      }, var_steekproef(vec))
    })
  })
}