context({
  testcaseAssert("De variabele topmodellen bestaat.", function(env) {
    isTRUE(exists("topmodellen", env))
  })
  testcaseAssert("De variabele topprijzen bestaat.", function(env) {
    isTRUE(exists("topprijzen", env))
  })
  testcaseAssert("De variabele range_winter bestaat.", function(env) {
    isTRUE(exists("range_winter", env))
  })
  testcaseAssert("De variabele wagens_winter bestaat.", function(env) {
    isTRUE(exists("wagens_winter", env))
  })
  testcaseAssert("De variabele laadtijden bestaat.", function(env) {
    isTRUE(exists("laadtijden", env))
  })
})
context({
  testcase("Variabele werd correct bepaald:", {
    testEqual("topmodellen", function(env) {
      env$topmodellen
    }, c("Lucid Air", "Tesla Cybertruck Tri Motor", "Tesla Roadster"))
  })
})
context({
  testcase("Variabele werd correct bepaald:", {
    testEqual("topprijzen", function(env) {
      env$topprijzen
    }, c(105000, 75000, 215000))
  })
})
context({
  testcase("Variabele werd correct bepaald:", {
    testEqual("range_winter", function(env) {
      env$range_winter
    }, c(382.5, 229.5, 340, 306, 144.5, 518.5, 161.5, 233.75, 263.5,
340, 314.5, 187, 340, 382.5, 212.5, 374, 318.75, 165.75, 187,
157.25, 233.75, 361.25, 246.5, 361.25, 369.75, 357, 297.5, 318.75,
199.75, 212.5, 238, 314.5, 267.75, 637.5, 153, 276.25, 229.5,
361.25, 263.5, 297.5, 437.75, 216.75, 323, 165.75, 165.75, 310.25,
284.75, 310.25, 488.75, 284.75, 310.25, 824.5, 216.75, 357, 382.5,
144.5, 212.5, 212.5, 429.25, 216.75, 348.5, 374, 310.25, 382.5,
361.25, 161.5, 391, 365.5, 195.5, 340, 327.25, 331.5, 191.25,
199.75, 348.5, 289, 331.5, 289, 374, 306, 280.5, 212.5, 331.5,
250.75, 340, 272, 272, 310.25, 357, 212.5, 289, 195.5, 276.25,
280.5, 284.75, 276.25, 318.75, 340))
  })
})
context({
  testcase("Variabele werd correct bepaald:", {
    testEqual("wagens_winter", function(env) {
      env$wagens_winter
    }, c("Tesla Model 3 Long Range Dual Motor", "Volkswagen ID.3 Pure", 
"Polestar 2", "BMW iX3", "Lucid Air", "Peugeot e-208", "Tesla Model 3 Standard Range Plus", 
"Audi Q4 e-tron", "Mercedes EQC 400 4MATIC", "Hyundai Kona Electric 64 kWh", 
"BMW i4", "Hyundai IONIQ Electric", "Volkswagen ID.3 Pro S", 
"Porsche Taycan Turbo S", "Opel Corsa-e", "Tesla Model Y Long Range Dual Motor", 
"Skoda Enyaq iV 50", "Audi e-tron GT", "Tesla Model 3 Long Range Performance", 
"Volkswagen ID.4", "Volkswagen ID.3 Pro", "Volvo XC40 P8 AWD Recharge", 
"Peugeot e-2008 SUV", "Audi e-tron 50 quattro", "Kia e-Niro 64 kWh", 
"Renault Zoe ZE50 R110", "Tesla Cybertruck Tri Motor", "Nissan Leaf e+", 
"Lexus UX 300e", "CUPRA el-Born", "Renault Zoe ZE50 R135", "Mercedes EQA", 
"Tesla Model S Long Range", "Hyundai Kona Electric 39 kWh", "Audi e-tron Sportback 55 quattro", 
"Kia e-Soul 64 kWh", "Opel Ampera-e", "Porsche Taycan 4S", "Lightyear One", 
"Aiways U5", "Audi e-tron 55 quattro", "Tesla Roadster", "Opel Mokka-e", 
"Skoda Enyaq iV 80", "Tesla Model X Long Range", "DS 3 Crossback E-Tense", 
"Citroen e-C4", "Tesla Model S Performance", "Renault Zoe ZE40 R110", 
"Tesla Model Y Long Range Performance", "Nissan Ariya 87kWh", 
"Jaguar I-Pace", "Ford Mustang Mach-E ER RWD", "Porsche Taycan 4S Plus", 
"Tesla Cybertruck Dual Motor", "Ford Mustang Mach-E ER AWD", 
"Skoda Enyaq iV 80X", "Porsche Taycan Cross Turismo", "Byton M-Byte 95 kWh 4WD", 
"Audi Q4 Sportback e-tron", "Ford Mustang Mach-E SR AWD", "Porsche Taycan Turbo", 
"Volkswagen ID.3 1st", "Tesla Model X Performance", "Ford Mustang Mach-E SR RWD", 
"Mercedes EQV 300 Long", "Fiat 500e Hatchback", "Tesla Cybertruck Single Motor", 
"Audi e-tron Sportback 50 quattro", "Skoda Enyaq iV vRS", "Skoda Enyaq iV 60", 
"Audi e-tron S 55 quattro", "Kia e-Soul 64 kWh", "Nissan Ariya e-4ORCE 87kWh", 
"Fiat 500e Convertible", "Volkswagen ID.3 Pro Performance", "Byton M-Byte 72 kWh 2WD", 
"Nissan Ariya 63kWh", "Audi e-tron S Sportback 55 quattro", "Nissan Ariya e-4ORCE 63kWh", 
"Nissan Ariya e-4ORCE 87kWh Performance", "Byton M-Byte 95 kWh 2WD"))
  })
})
context({
  laadtijd_round <- c(29, 65, 39, 39, 54, 59, 52, 39, 29, 44, 50, 57, 63, 42, 71, 
45, 29, 69, 51, 43, 39, 27, 76, 30, 29, 45, 43, 48, 52, 39, 37, 
63, 82, 63, 45, 50, 85, 45, 81, 48, 55, 73, 37, 69, 69, 64, 96, 
30, 64, 57, 37, 63, 39, 45, 55, 54, 39, 39, 55, 67, 27, 51, 64, 
63, 29, 60, 39, 63, 53, 44, 30, 51, 50, 61, 45, 57, 29, 43, 55, 
57, 68, 45, 32, 38, 44, 44, 38, 68, 50, 45, 43, 63, 46, 45, 37, 
44, 50, 50)
laadtijd_ceil <- c(29, 65, 39, 39, 54, 60, 52, 40, 29, 45, 51, 58, 64, 42, 72, 
45, 29, 69, 51, 43, 40, 28, 76, 30, 29, 45, 43, 48, 53, 40, 38, 
64, 83, 64, 45, 50, 86, 45, 81, 48, 56, 73, 38, 69, 69, 65, 96, 
30, 64, 58, 38, 64, 40, 45, 56, 54, 40, 40, 56, 67, 28, 51, 65, 
63, 29, 60, 39, 63, 54, 45, 30, 51, 50, 62, 45, 57, 29, 44, 55, 
57, 69, 46, 32, 38, 45, 44, 38, 69, 51, 46, 44, 63, 47, 45, 38, 
45, 50, 50)

  testcase("Variabele werd correct bepaald:", {
    testEqual("laadtijden", function(env) {
      env$laadtijden
    }, paste(toString(laadtijd_ceil), "of afgerond", toString(laadtijd_round)),
    function(gen, exp) {
      isTRUE(all.equal(gen, laadtijd_ceil)) | isTRUE(all.equal(gen, laadtijd_round))
    })
  })
})