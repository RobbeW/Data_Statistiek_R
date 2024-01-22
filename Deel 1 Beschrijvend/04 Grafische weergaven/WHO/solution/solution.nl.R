# Data inlezen
data <- read.csv2("https://gist.githubusercontent.com/aishwarya8615/89d9f36fc014dea62487f7347864d16a/raw/8629d284e13976dcb13bb0b27043224b9266fffa/Life_Expectancy_Data.csv",
                  sep=",", dec=".",
                  colClasses=c("character", "NULL", "numeric", "NULL", "numeric", rep("NULL", 2), "numeric", rep("NULL", 3), "numeric",rep("NULL", 2), "character",rep("NULL",2), "numeric", rep("NULL",5)))
colnames(data) <- c("land", "jaar","levensverwachting", "alcohol", "BMI","uitgavepercentage","BBP")
data$uitgavepercentage <- suppressWarnings(as.numeric(data$uitgavepercentage))
data <- na.omit(data)
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
meest_recent <- data$jaar == 2014

plot(data$levensverwachting[meest_recent]~data$uitgavepercentage[meest_recent],
     xlab = "Percentage uitgaven in volksgezondheid.",
     ylab = "Levensverwachting",
     pch = 22)
abline(lm(data$levensverwachting[meest_recent]~data$uitgavepercentage[meest_recent]),
       col = "green")
