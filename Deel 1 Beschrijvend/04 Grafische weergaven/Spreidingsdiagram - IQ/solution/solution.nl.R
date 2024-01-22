library(dplyr)  
# Data inlezen
data <- read.csv2("http://bcs.whfreeman.com/WebPub/Statistics/shared_resources/EESEE/BrainSize/Data_Files/BRAINSZE.TXT",
                  sep="\t")
data <- data %>% mutate(across(where(is.character), ~na_if(., ".")))
data <- as.data.frame(data)
data$Weight <- as.numeric(data$Weight)*0.45359237
data$Height <- as.numeric(data$Height)*2.54
colnames(data) <- c("geslacht", "FSIQ", "VIQ", "PIQ", "massa", "lengte", "MRI")

# Beantwoord hieronder de vragen
vrouwen <- data$geslacht ==  "Female"

plot(data$VIQ[vrouwen]~data$MRI[vrouwen],
     xlab = "Verbaal IQ",
     ylab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan",
     pch = 19)
abline(lm(data$VIQ[vrouwen]~data$MRI[vrouwen]),
       col = "red")
