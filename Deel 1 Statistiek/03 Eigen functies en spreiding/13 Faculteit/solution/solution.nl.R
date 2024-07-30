faculteit <- function(getal) {
  if (getal == 0) {
    resultaat <- 1
  } else{
    resultaat <- prod(1:getal)
  }

  return(resultaat)
}