library(dplyr)  
# Data inlezen
data <- read.csv2("https://github.com/RobbeW/Data_Statistiek_R/blob/main/bronnen/BRAINSIZE.txt",
                  sep="\t")
data <- data %>% mutate(across(where(is.character), ~na_if(., ".")))
data <- as.data.frame(data)
data$Weight <- as.numeric(data$Weight)*0.45359237
data$Height <- as.numeric(data$Height)*2.54
colnames(data) <- c("geslacht", "FSIQ", "VIQ", "PIQ", "massa", "lengte", "MRI")

# Beantwoord hieronder de vragen
