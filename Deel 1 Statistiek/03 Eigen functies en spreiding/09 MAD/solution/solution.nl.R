# Mean absolute deviation
mad <- function(data) {
  overline_x <- mean(data)
  res <- mean(abs(data - overline_x))
  return(round(res, 4))
}