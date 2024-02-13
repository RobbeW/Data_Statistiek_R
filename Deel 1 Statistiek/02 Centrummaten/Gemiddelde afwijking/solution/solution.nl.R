# De steekproefvariantie
var_steekproef <- function(data) {
  overline_x <- mean(data)
  n <- length(data)
  res <- 1/(n-1) * sum( (data-overline_x)^2 )
  return(round(res, 4))
}

# De steekproefstandaardafwijking
sd_steekproef <- function(data) {
  s_kwadraat <- var_steekproef(data)
  res <- sqrt(s_kwadraat)
  return(round(res, 4))
}