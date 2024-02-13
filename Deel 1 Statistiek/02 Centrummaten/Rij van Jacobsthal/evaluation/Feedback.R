jacobsthal <- function(n) {
  rij <- c(0, 1)
  if(n >= 2){
    for( i in 2:n){
      nieuw <- 2*rij[i-2]+rij[i-1]
      rij <- c(rij, nieuw)
    }
  } 

  return(rij[n])
}

nsim <- 20
cases <- 1:20

for(case in cases){
  context({
     testcase("De functie werkt:", {
       testEqual(paste("met parameter", case), function(env) {
         format(env$jacobsthal(case), scientific = FALSE)
    }, format(jacobsthal(case), scientific = FALSE))
     })
  })
}

