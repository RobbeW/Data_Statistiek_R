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
data <- data[c("student_id","hours_studied","sleep_hours","attendance_percentage","exam_score")]

# Beantwoord hieronder de vragen
