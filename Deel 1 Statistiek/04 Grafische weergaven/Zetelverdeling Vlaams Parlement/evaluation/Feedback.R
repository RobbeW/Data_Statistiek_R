context({
  testcaseAssert("De variabele partijen bestaat.", function(env) {
    isTRUE(exists("partijen", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("partijen", function(env) {
      env$partijen
    }, c("N-VA", "Vlaams Belang", "CD&V", "Open Vld", "GROEN", "sp.a", 
"PVDA"))
  })
})

context({
  testcaseAssert("De variabele kleuren bestaat.", function(env) {
    isTRUE(exists("kleuren", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("kleuren", function(env) {
          env$kleuren
        }, c("gold", "yellow", "orange", "blue", "green", "red", "firebrick"))
  })
})

context({
  testcaseAssert("De variabele zetels bestaat.", function(env) {
    isTRUE(exists("zetels", env))
  })
  testcase("De variabele werd correct bepaald:", {
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



  