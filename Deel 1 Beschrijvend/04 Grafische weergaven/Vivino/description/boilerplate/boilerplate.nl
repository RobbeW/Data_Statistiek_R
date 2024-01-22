# Data inlezen
data <- read.csv2("https://raw.githubusercontent.com/shrikant-temburwar/Wine-Quality-Dataset/master/winequality-red.csv",
                  sep=";", dec=".",
                  colClasses=c(rep("NULL", 4), "numeric", rep("NULL", 2),rep("numeric", 5)))

# Beantwoord hieronder de vragen
