  wallis <- function(n) {
    rij <- 1:n
    alter <- (-1)^(rij+1)
    oneven <- rij*2 - 1
    res <- alter * oneven
    return(round(sum(1/res), 6))
  }

context({
  testcase("De functie wallis werkt:", {
    rijtje <- 1:6
    for (aantal in rijtje) {
      testEqual(paste0("met parameter ", 
                       format(10^aantal, scientific = FALSE)), function(env) {
                  env$wallis(10^aantal)
                }, wallis(10^aantal))
    }
  })
  testcase("Ter controle:", {
    testEqual("pi / 2", function(env) {
      pi / 2
    }, pi / 2)
  })
})