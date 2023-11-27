# Een functie die het inproduct simuleert
inproduct <- function(vec1, vec2) {
  resultaat <- sum(vec1 * vec2)
  return(round(resultaat, 2))
}

### Enkele testen ###
inproduct( c(1, 2, 3), c(3, -1, 2) )   # 7
inproduct( c(-1, 3), c(3, 1) )         # 0
