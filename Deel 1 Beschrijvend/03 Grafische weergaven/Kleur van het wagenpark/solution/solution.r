# 1. Variabele met alle kleuren
kleuren <- c("Zilver", "Wit", "Zwart", "Donkergrijs", "Donkerblauw", "Lichtbruin", "Rood")

# 2. Variabele met alle percentages
percentages <- c(7.4, 20.4, 10.53, 24.22, 22.64, 1.21, 13.6)

# 3. Som van alle percentages
som_percentages <- sum(percentages)
print(paste("De totale som van alle percentages is:", som_percentages, "%."))

# 4. Staafdiagram van de gegevens
barplot(percentages, names.arg = kleuren, main = "Verdeling van verkochte auto's in 2022 op basis van kleur", xlab = "Kleur", ylab = "Percentage auto's", col = rainbow(length(kleuren)), las = 2, cex.names = 0.7)
