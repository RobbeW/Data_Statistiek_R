faculteit <- function(getal) {
  if (getal == 0) {
    resultaat <- 1
  } else{
    resultaat <- prod(1:getal)
  }

  return(resultaat)
}

nsim <- 20
cases <- 0:10

context({
  testcase("De functie faculteit() werkt met de volgende parameters:", {
    for (case in cases) {
      testEqual(case, function(env) {
        format(env$faculteit(case), scientific = FALSE)
      }, format(faculteit(case), scientific = FALSE))
    }
  })
})
