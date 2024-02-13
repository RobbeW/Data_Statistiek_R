# Een functie die het probleem van Bazel simuleert
bazel <- function(aantal) {
  rij <- 1:aantal
  res <- sum(1 / (rij)^2)
  return(round(res, 6))
}

# Mogelijke controle
c(pi^2 / 6, bazel(10000))