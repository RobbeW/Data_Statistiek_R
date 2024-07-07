# Variabelen
partijen <- c("N-VA", "Vlaams Belang", "CD&V", "Open Vld", "GROEN", "sp.a", "PVDA")
kleuren <- c("gold", "yellow", "orange", "blue", "green", "red", "firebrick")
zetels <- c(35, 23, 19, 16, 14, 13, 4)

# Plot
barplot(zetels,
        main = "Zetelverdeling Vlaams Parlement 2019", 
        col = kleuren,
        ylab = "zetels",
        names.arg = partijen,
        las = 2)