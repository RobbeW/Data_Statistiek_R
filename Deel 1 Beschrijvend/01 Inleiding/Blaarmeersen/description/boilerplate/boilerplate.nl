# Je dient eerst onderstaande biliotheken te installeren via
# > install.packages(c("rvest", "polite")) # dit is slechts één keer nodig
# en nadien de bibliotheken inladen via
# > library(rvest, polite)
cols <- c("datum", "kwaliteit", "enterococcus", "e_coli", "temp")
data <- data.frame(matrix(nrow = 0, ncol = length(cols)))
# De eerste 15 pagina's ophalen
for(i in 0:15){
  url <- paste0("https://kwaliteitzwemwater.be/nl/blaarmeersen/blaarmeersen-zwemsportzone-gent?page=", i)
  result <- polite::bow(url) %>%
    polite::scrape(content="text/html; charset=UTF-8") %>%
    html_nodes(".views-table") %>%
    html_table()
  data <- rbind(data, as.data.frame(result))
}
colnames(data) <- cols
data$temp <- as.numeric(sub(",", ".", data$temp, fixed = TRUE))

## Geef hieronder een antwoord op het gevraagde:
