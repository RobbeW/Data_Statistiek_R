context({
  testcaseAssert("De variabele metingen_2023 bestaat.", function(env) {
    isTRUE(exists("metingen_2023", env))
  })
}, preExec = {
  library(rvest, polite)
})
context({
  # Data scrapen
  library(rvest, polite)
  cols <- c("datum", "kwaliteit", "enterococcus", "e_coli", "temp")
  data <- data.frame(matrix(nrow = 0, ncol = length(cols)))
  # Data uit een aantal pagina's extraheren
  for (i in 0:20){
    url <- paste0("https://kwaliteitzwemwater.be/nl/blaarmeersen/blaarmeersen",
                  "-zwemsportzone-gent?page=", i)
    result <-  as.data.frame(
      polite::bow(url)
      %>% polite::scrape(content="text/html; charset=UTF-8")
      %>% rvest::html_nodes(".views-table")
      %>% rvest::html_table())
    data <- rbind(data, result[, !(names(result) %in% c("Cyanobacteriën"))])
  }
  colnames(data) <- cols
  data$temp <- as.numeric(sub(",", ".", data$temp, fixed = TRUE))
  data$datum <- as.Date(data$datum, "%d-%m-%Y")

  # Antwoorden
  metingen_2023 <- length(data$temp[data$datum > "2023-01-01"])

  testcase("Variabelen werden correct berekend:", {
    testEqual("metingen_2023", function(env) {
      env$metingen_2023
    }, metingen_2023)
  })
  testcase("De volgende functie werd gebruikt:", {
    testFunctionUsedInVar("length", "metingen_2023")
  })
}, preExec = {
  library(rvest, polite)
})