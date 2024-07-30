context({
  bazel <- function(aantal) {
    rij <- 1:aantal
    res <- sum(1 / (rij)^2)
    return(round(res, 6))
  }

  testcase("De functie bazel(aantal) werkt met de volgende parameters:", {
    rijtje <- 1:6
    for (aantal in rijtje) {
      testEqual(paste("aantal =",format(10^aantal, scientific = FALSE)),
                function(env) {
                  env$bazel(10^aantal)
                }, bazel(10^aantal))
    }
  })
  testcase("Ter controle:", {
    testEqual("pi^2 / 6", function(env) {
      pi^2 / 6
    }, pi^2 / 6)
  })
})