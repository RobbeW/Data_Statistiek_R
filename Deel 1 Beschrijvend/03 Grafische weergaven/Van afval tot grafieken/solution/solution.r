# Data
materialen <- c("Voedselresten", "Glas", "Metalen", "Papier & karton", "Plastic", "Rubber", "Hout", "Tuinafval", "Overige")
gewicht <- c(25.9, 12.8, 18, 86.7, 24.7, 15.8, 12.7, 27.7, 7.5)
percentage <- c(11.2, 5.5, 7.8, 37.4, 10.7, 6.8, 5.5, 11.9, 3.2) / 100

# Som van alle materialen
totale_gewicht <- sum(gewicht)
cat("Het totale gewicht van alle materialen is:", totale_gewicht, "miljoenen tonnen.\n")

# Staafdiagram van de percentages
barplot(percentage, names.arg = materialen, main = "Staafdiagram van de percentages", col = "#3dffd0", las = 2, cex.names = 0.7)

# Taartdiagram van de percentages
pie(percentage, labels = materialen, main = "Taartdiagram van de percentages", col = rainbow(length(materialen)))