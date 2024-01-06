context({
  testcaseAssert("De variabele partijen bestaat.", function(env) {
    isTRUE(exists("partijen", env))
  })
  testcaseAssert("De variabele kleuren bestaat.", function(env) {
    isTRUE(exists("kleuren", env))
  })
  testcaseAssert("De variabele zetels bestaat.", function(env) {
    isTRUE(exists("zetels", env))
  })
})

context({
  testcase("De variabelen werden correct bepaald:", {
    testEqual("partijen", function(env) {
      env$partijen
    }, c("NV-A", "Vlaams Belang", "CD&V", "Open Vld", "GROEN", "sp.a", 
"PVDA"))
    testEqual("kleuren", function(env) {
          env$kleuren
        }, c("gold", "yellow", "orange", "blue", "green", "red", "firebrick"))
    testEqual("zetels", function(env) {
          env$zetels
        }, c(35, 23, 19, 16, 14, 13, 4))
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("barplot")
  })
})



  