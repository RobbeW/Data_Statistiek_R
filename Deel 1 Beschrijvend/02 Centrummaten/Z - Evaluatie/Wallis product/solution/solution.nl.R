# Een functie die het Wallis product simuleert
wallis <- function(n) {
  rij <- 1:n
  factoren <- 4*rij^2 / (4*rij^2 - 1)
  res <- prod(factoren)
  return(round(res, 6))
}

### Enkele testen ###
wallis(2)    # 1.422222
wallis(10)   # 1.533852
wallis(100)  # 1.566894

# Mogelijke controle
c(pi / 2, wallis(10000))
