# Je dient eerst onderstaande biliotheken te installeren via
# > install.packages(c("rvest", "polite")) # dit is slechts één keer nodig
# De bibliotheken inladen doe je via:
# > library(rvest, polite)
cols <- c("datum", "kwaliteit", "enterococcus", "e_coli", "temp")
data <- data.frame(matrix(nrow = 0, ncol = length(cols)))
# Data uit een aantal pagina's extraheren
for (i in 0:20){
  url <- paste0("https://kwaliteitzwemwater.be/nl/blaarmeersen/blaarmeersen-z",
                "wemsportzone-gent?page=", i)
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

# Geef hieronder een antwoord op het gevraagde:
