sylvester <- function(n) {
  rij <- c(2)
  if(n > 1){
    for( i in 1:n){
      resultaat <- prod(rij) + 1
      rij <- c(rij, resultaat)
    }
  }

  return(rij[n])
}

nsim <- 20
cases <- 1:9

for(case in cases){
  context({
     testcase("De functie werkt:", {
       testEqual(paste("met parameter", case), function(env) {
         format(env$sylvester(case), scientific = FALSE)
    }, format(sylvester(case), scientific = FALSE))
     })
  })
}

