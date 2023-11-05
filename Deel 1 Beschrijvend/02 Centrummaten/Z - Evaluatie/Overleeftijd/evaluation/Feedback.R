# De functies alpha en beta programmeren
alpha <- function(vector) {
  gem <- mean(vector)
  n <- length(vector)
  res <- gem^2/(1/n*sum(vector^2) - gem^2)
  return(round(res, 2))
}

beta <- function(vector) {
  gem <- mean(vector)
  n <- length(vector)
  res <- (1/n*sum(vector^2) - gem^2)/gem
  return(round(res, 2))
}

printVecAsis <- function(x) {
  ifelse(length(x) == 1, x, 
       ifelse(is.character(x), paste0("c(", paste(sapply(x, function(a) paste0("\'",a,"\'")), collapse=", "), ")"),
              paste0("c(", paste(x, collapse=", "), ")")))}

data <- list()
for(i in 1:6){
  vector <- round(rgamma(sample(10:15, 1),shape = sample(5:20, 1), rate = 1/sample(5:15, 1)))
  data[[i]] <- vector
}

context({
  testcase("De functie alpha werkt:", {
    for (vec in data) {
      testEqual(paste0("met parameter ", 
                       printVecAsis(vec)), function(env) {
                  env$alpha(vec)
                }, alpha(vec))
    }
  })
})

context({
  testcase("De functie beta werkt:", {
    for (vec in data) {
      testEqual(paste0("met parameter ", 
                       printVecAsis(vec)), function(env) {
                  env$beta(vec)
                }, beta(vec))
    }
  })
})