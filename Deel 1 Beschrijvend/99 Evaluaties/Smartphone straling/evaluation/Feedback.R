context({
  testcaseAssert("De variabele niet_conform bestaat.", function(env) {
    isTRUE(exists("niet_conform", env))
  })
  testcaseAssert("De variabele modellen_conform bestaat.", function(env) {
    isTRUE(exists("modellen_conform", env))
  })
})
context({
  testcase("Variabelen werden correct bepaald:", {
    testEqual("niet_conform", function(env) {
      env$niet_conform
    }, c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 
FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 
FALSE))
    testEqual("modellen_conform", function(env) {
      env$modellen_conform
    }, c("Asus Zenfone 8", "OnePlus 9 Pro 5G", "Xiaomi Poco F3", "Xiaomi Mi 11i", 
"Xiaomi Redmi Note 10S", "Sony Xperia 5III", "Samsung Galaxy Xcover 5 EE", 
"Samsung Galaxy A03S", "Xiaomi Poco X3", "Samsung Galaxy S20 FE", 
"Apple Galaxy Z Flip", "Apple iPhone SE 2020", "Samsung iPhone 12 Pro Max", 
"Nokia 4.2", "Xiaomi Poco F2 Pro", "Motorola Moto G10", "Xiaomi Redmi 9A"
))
  })

})