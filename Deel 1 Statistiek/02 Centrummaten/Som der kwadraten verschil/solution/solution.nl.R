verschil <- function(n) {
  row <- 1:n
  res <- sum(row)^2 - sum(row^2)
  return(res)
}
