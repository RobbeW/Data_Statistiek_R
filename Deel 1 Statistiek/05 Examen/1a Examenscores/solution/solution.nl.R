library(dplyr)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/student_exam_scores.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Scores herberekenen op 20
data$exam_score <- round(data$exam_score / max(data$exam_score) * 20, 1)

# Alleen gewenste kolommen:
data <- data[c("student_id","hours_studied","sleep_hours","exam_score")]

gemiddelde_slaap <- mean(data$sleep_hours)
bovengemiddelde_slaap <- data$sleep_hours > gemiddelde_slaap

gemiddelde_studieuren <- mean(data$hours_studied)
bovengemiddelde_studieuren <- data$hours_studied > gemiddelde_studieuren

boxplot(data$exam_score~bovengemiddelde_slaap,
     col = c("cadetblue", "coral"),
     xlab = "Slaapduur",
     names = c("Ondergemiddeld", "Bovengemiddeld"),
     ylab = "Resultaten (op 20)",
     main = "Resultaten versus Slaapduur")
