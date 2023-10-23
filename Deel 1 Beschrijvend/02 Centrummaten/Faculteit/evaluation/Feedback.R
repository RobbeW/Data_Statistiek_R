faculteit <- function(getal) {
  if( getal == 0){
    resultaat = 1
  } else{
    resultaat = prod(1:getal)
  }

  return(resultaat)
}

nsim <- 20
cases <- 1:10

for(case in cases){
  context({
     testcase("De functie werkt:", {
       testEqual(paste("met parameter", case), function(env) {
         format(env$faculteit(case), scientific = FALSE)
    }, format(faculteit(case), scientific = FALSE))
     })
  })
}

