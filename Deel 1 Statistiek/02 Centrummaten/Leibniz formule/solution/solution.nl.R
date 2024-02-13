# Een functie die het probleem van Leibniz simuleert
leibniz <- function(n) {
  rij <- 1:n
  alter <- (-1)^(rij+1)
  oneven <- rij*2 - 1
  res <- alter * oneven
  return(round(sum(1/res), 6))
}

# Mogelijke controle
c(pi / 4, leibniz(10000))
