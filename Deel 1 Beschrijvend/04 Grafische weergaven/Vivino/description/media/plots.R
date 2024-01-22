# Data inlezen
data <- read.csv2("https://raw.githubusercontent.com/shrikant-temburwar/Wine-Quality-Dataset/master/winequality-red.csv",
                  sep=";", dec=".",
                  colClasses=c(rep("NULL", 4), "numeric", rep("NULL", 2),rep("numeric", 5)))

# Beantwoord hieronder de vragen
mediaan <- median(data$quality)
hoge_kwaliteit <- data$quality > mediaan

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
plot(data$pH[hoge_kwaliteit]~data$alcohol[hoge_kwaliteit],
     main = "Verband tussen alcoholgehalte en zuurtegraad",
     xlab = "Alcoholgehalte",
     ylab = "Zuurtegraad (pH)")
abline(lm(data$pH[hoge_kwaliteit]~data$alcohol[hoge_kwaliteit]),
       col="red")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
plot(data$pH[hoge_kwaliteit]~data$alcohol[hoge_kwaliteit],
     main = "Verband tussen alcoholgehalte en zuurtegraad",
     xlab = "Alcoholgehalte",
     ylab = "Zuurtegraad (pH)",
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
abline(lm(data$pH[hoge_kwaliteit]~data$alcohol[hoge_kwaliteit]),
       col="red")
dev.off()