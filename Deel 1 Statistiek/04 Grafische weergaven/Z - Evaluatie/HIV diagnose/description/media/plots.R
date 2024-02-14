# Importeert de data van Sciensano
data <- read.csv2("Deel\ 1\ Statistiek/04\ Grafische\ weergaven/Z\ -\ Evaluatie/HIV\ diagnose/workdir/hiv.csv")
#read.csv2("hiv.csv") # if run a solution
colnames(data) <- c("jaar", "new_AIDS", "new_HIV")

# Plot
dagelijks <- round(data$new_HIV / 365.25, 1)
laatste_10 <- data$jaar > max(data$jaar)-10

res <- 150
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
barplot(dagelijks[laatste_10],
        main = "Dagelijks aantal nieuwe HIV besmettingen",
        col = "indianred",
        ylim = c(0,3),
        names.arg = data$jaar[laatste_10])
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
barplot(dagelijks[laatste_10],
        main = "Dagelijks aantal nieuwe HIV besmettingen",
        col = "indianred",
        ylim = c(0,3),
        names.arg = data$jaar[laatste_10],
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()

