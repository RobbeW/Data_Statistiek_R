# Eenheidslengte
eenheidslengte <- function(data) {
  lengte <- sqrt(sum(data^2))
  res <- data / lengte
  return(round(res, 4))
}