# Variabelen
partijen <- c("N-VA", "Vlaams Belang", "CD&V", "Open Vld", "GROEN", "sp.a", "PVDA")
kleuren <- c("gold", "yellow", "orange", "blue", "green", "red", "firebrick")
zetels <- c(35, 23, 19, 16, 14, 13, 4)

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
barplot(zetels,
        main = "Zetelverdeling Vlaams Parlement 2019", 
        col = kleuren,
        ylab = "zetels",
        names.arg = partijen,
        las = 2)
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
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

dev.off()

