# Variabelen
kleuren <- c("Zwart", "Bruin", "Groen", "Grijs", "Oranje", "Rood", "Wit", "Geel")
kleuren_2 <- c("black", "brown", "green", "gray", "orange", "red", "white", "yellow")
percentages <- c(38, 2, 2, 5, 4, 42, 4, 3)

# Plot
barplot(percentages, main = "Angstige kleuren", col = kleuren_2, ylab = "Percentages", ylim = c(0,50))
