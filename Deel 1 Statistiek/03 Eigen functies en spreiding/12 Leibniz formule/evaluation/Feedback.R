context({
  leibniz <- function(n) {
    rij <- 1:n
    alter <- (-1)^(rij + 1)
    oneven <- rij * 2 - 1
    res <- alter * oneven
    return(round(sum(1 / res), 6))
  }

  testcase("De functie leibniz() werkt met de volgende parameters:", {
    rijtje <- 1:6
    for (aantal in rijtje) {
      testEqual(format(10^aantal, scientific = FALSE),
                function(env) {
                  env$leibniz(10^aantal)
                }, leibniz(10^aantal))
    }
  })
  testcase("Ter controle:", {
    testEqual("pi / 4", function(env) {
      pi / 4
    }, pi / 4)
  })
})