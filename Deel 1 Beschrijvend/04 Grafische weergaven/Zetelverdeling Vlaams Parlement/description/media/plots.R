# Variabelen
partijen <- c("NV-A", "Vlaams Belang", "CD&V", "Open Vld", "GROEN", "sp.a", "PVDA")
kleuren <- c("gold", "yellow", "orange", "blue", "green", "red", "firebrick")
zetels <- c(35, 23, 19, 16, 14, 13, 4)

# Plot
par(bg = NA)
par(fg = "black")
barplot(zetels,
        main = "Zetelverdeling Vlaams Parlement 2019", 
        col = kleuren,
        ylab = "zetels",
        names.arg = partijen,
        las = 2)
png("plot.png", res = 300)

dev.off()


dev.copy(png, "plot.png", res=300)
# Plot
par(bg = NA)
par(fg = "white")
barplot(zetels,
        main = "Zetelverdeling Vlaams Parlement 2019",
        col = kleuren,
        ylab = "zetels",
        names.arg = partijen,
        las = 2,
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)


dev.copy(png, "plot_dark.png")
dev.off()
