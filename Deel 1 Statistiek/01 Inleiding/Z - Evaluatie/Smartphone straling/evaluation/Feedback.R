
context({
  testcaseAssert("De variabele niet_conform bestaat.", function(env) {
    isTRUE(exists("niet_conform", env))
  })
  testcase("Variabele werd correct bepaald:", {
    testEqual("niet_conform", function(env) {
      env$niet_conform
    }, c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 
TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE
    ))
  })
})

context({
  testcase("Resultaat werd correct bepaald:", {
    testEqual("De toestellen die wel binnen de grenzen liggen zijn:", function(env) {
      env$evaluationResult
    }, c("Asus Zenfone 8", "OnePlus 9 Pro 5G", "Xiaomi Poco F3", "Xiaomi Mi 11i", 
         "Xiaomi Redmi Note 10S", "Sony Xperia 5III", "Samsung Galaxy Xcover 5 EE", 
         "Samsung Galaxy A03S", "Samsung Galaxy S20 FE", "Apple iPhone SE 2020", 
         "Samsung iPhone 12 Pro Max", "Nokia 4.2", "Xiaomi Poco F2 Pro", 
         "Motorola Moto G10", "Xiaomi Redmi 9A"))
    testFunctionUsed("paste")
  })
})