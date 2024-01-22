# Data inlezen
data <- read.csv2("https://raw.githubusercontent.com/shrikant-temburwar/Wine-Quality-Dataset/master/winequality-red.csv",
                  sep=";", dec=".",
                  colClasses=c(rep("NULL", 4), "numeric", rep("NULL", 2),rep("numeric", 5)))

# Beantwoord hieronder de vragen
mediaan <- median(data$quality)
goede_wijnen <- data$quality > mediaan

plot(data$pH[goede_wijnen]~data$alcohol[goede_wijnen],
     main = "Verband tussen alcoholgehalte en zuurtegraad (bij goede wijn)",
     xlab = "Alcoholgehalte",
     ylab = "Zuurtegraad (pH)")
abline(lm(data$pH[goede_wijnen]~data$alcohol[goede_wijnen]),
       col="red")
