# Lehmers gemiddelde
lehmer <- function(vector, p) {
  teller <- sum(vector^p)
  noemer <- sum(vector^(p - 1))
  resultaat <- teller / noemer
  return(round(resultaat, 4))
}
