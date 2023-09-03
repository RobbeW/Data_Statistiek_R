context({
  bazel <- function(aantal) {
    rij <- 1:aantal
    res <- sum(1 / (rij)^2)
    return(round(res, 6))
  }

  testcase("De functie bazel werkt:", {
    rijtje <- 1:6
    for (aantal in rijtje) {
      testEqual(paste0("met parameter ", 
                       format(10^aantal, scientific = FALSE)), function(env) {
                  env$bazel(10^aantal)
                }, bazel(10^aantal))
    }
  })
})