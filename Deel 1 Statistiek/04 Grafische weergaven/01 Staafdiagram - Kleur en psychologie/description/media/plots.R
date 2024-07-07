# Variabelen
kleuren <- c("Oranje", "Paars", "Rood", "Wit", "Geel", "Blauw", "Groen")
percentages <- c(28, 17, 16, 2, 26, 5, 6)

res <- 300
# Plot
png("plot1.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
barplot(percentages,
        main = "Leuke kleuren",
        names.arg = kleuren)
dev.off()

# Plot
png("plot1_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
barplot(percentages,
        main = "Leuke kleuren",
        names.arg = kleuren,
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()

## PLOT 2
staaf_kleuren <- c("orange", "purple", "red", "white", "yellow", "blue", "green")
png("plot2.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
barplot(percentages,
        main = "Leuke kleuren",
        col = staaf_kleuren,
        ylim = c(0, 30))
dev.off()

# Plot
png("plot2_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
barplot(percentages,
        main = "Leuke kleuren",
        col = staaf_kleuren,
        ylim = c(0, 30),
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()


### PLOT 3
kleuren <- c("Zwart", "Bruin", "Groen", "Grijs", "Oranje", "Rood", "Wit", "Geel")
kleuren_2 <- c("black", "brown", "green", "gray", "orange", "red", "white", "yellow")
percentages <- c(38, 2, 2, 5, 4, 42, 4, 3)

png("plot3.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
barplot(percentages,
        main = "Angstige kleuren",
        col = kleuren_2,
        ylab = "Percentages",
        ylim = c(0, 50))
dev.off()

# Plot
png("plot3_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
barplot(percentages,
        main = "Angstige kleuren",
        col = kleuren_2,
        ylab = "Percentages",
        ylim = c(0, 50),
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()
