# Benodigde bibliotheken
library('jsonlite')
library('httr')

# Data ophalen van Elia
kleuren <- c("Biofuels" = "#3366BB", 
             "Other Fossil Fuels" = "#AA3366",
             "Other Fuel" = "#BB4466",
             "Natural Gas" = "#EEDD00", 
             "Nuclear" = "#0099CC", 
             "Solar" = "#EEDD00", 
             "Water" = "#22CCBB", 
             "Wind Offshore" = "#55BB55", 
             "Other" = "#cccccc", 
             "Wind Onshore" = "#99DD55")
res <- GET("https://opendata.elia.be/api/explore/v2.1/catalog/datasets/ods177/records?select=sum(generatedpower)%20as%20power&where=datetime%20%3E%20now(days%3D-7%2C%20hour%3D0%2C%20minute%3D0)%20and%20datetime%20%3C%20now(days%3D-1%2Chour%3D23%2Cminute%3D59)%20and%20generatedpower%20%3E0&group_by=date_format(datetime%2C%20%27YYYY%2FMM%2Fdd%27)%20as%20date%2C%20fueltypepublication%20as%20fuel&order_by=date%20DESC")
data <- fromJSON(rawToChar(res$content))$results
data <- data[order(data$power, decreasing = TRUE), ]
row.names(data) <- NULL
data$color <- kleuren[data$fuel]

# Beantwoord hieronder de vragen
datum_gisteren <- format(Sys.Date()-1,"%Y/%m/%d")

gisteren <- data$date == datum_gisteren

totaal <- sum(data$power[gisteren])
percentages <- round(data$power[gisteren] / totaal * 100, 1)

energielabels <- paste0(data$fuel[gisteren], " (", percentages, "%)")

context({
  testcaseAssert("De variabele gisteren bestaat.", function(env) {
    isTRUE(exists("gisteren", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("gisteren", function(env) {
      env$gisteren
    }, gisteren)
  })
})

context({
  testcaseAssert("De variabele totaal bestaat.", function(env) {
    isTRUE(exists("totaal", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("totaal", function(env) {
      env$totaal
    }, totaal)
    testFunctionUsedInVar("sum", "totaal")
  })
})

context({
  testcaseAssert("De variabele percentages bestaat.", function(env) {
    isTRUE(exists("percentages", env))
  })
  testcase("De variabele werd correct berekend:", {
    testEqual("percentages", function(env) {
          env$percentages
        }, percentages)
    testFunctionUsedInVar("round","percentages")
  })
})

context({
  testcaseAssert("De variabele energielabels bestaat.", function(env) {
    isTRUE(exists("energielabels", env))
  })
  testcase("De variabele werd correct bepaald:", {
    testEqual("energielabels", function(env) {
          env$energielabels
        }, energielabels)
    testFunctionUsedInVar("paste0","energielabels")
  })
})

contextWithImage({
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsed("pie")
  })
})



  