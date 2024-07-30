# Een functie die het inproduct simuleert
inproduct <- function(vec1, vec2) {
  resultaat <- sum(vec1 * vec2)
  return(round(resultaat, 2))
}