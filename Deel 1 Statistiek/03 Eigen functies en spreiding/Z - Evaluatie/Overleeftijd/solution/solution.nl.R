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

### Enkele testen ###
alpha( c(152,115,109,94,88,137,152,77,160,165) )  # 16.57
beta( c(152,115,109,94,88,137,152,77,160,165) )   # 7.54
