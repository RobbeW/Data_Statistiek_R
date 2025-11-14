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

gemiddelde_slaap <- mean(data$sleep_hours)
bovengemiddelde_slaap <- data$sleep_hours > gemiddelde_slaap

gemiddelde_studieuren <- mean(data$hours_studied)
bovengemiddelde_studieuren <- data$hours_studied > gemiddelde_studieuren

gemiddelde_aanwezigheid <- mean(data$attendance_percentage)
bovengemiddelde_aanwezigheid <- data$attendance_percentage > gemiddelde_aanwezigheid

bovengemiddelde_leerlingen <- bovengemiddelde_aanwezigheid + bovengemiddelde_slaap + bovengemiddelde_studieuren >= 2

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
boxplot(data$exam_score~bovengemiddelde_leerlingen,
     col = c("cadetblue", "coral"),
     xlab = "Slaapduur",
     names = c("Ondergemiddeld", "Bovengemiddeld"),
     ylab = "Resultaten (op 20)",
     main = "Resultaten versus Slaapduur")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
boxplot(data$exam_score~bovengemiddelde_leerlingen,
     col = c("cadetblue", "coral"),
     xlab = "Slaapduur",
     names = c("Ondergemiddeld", "Bovengemiddeld"),
     ylab = "Resultaten (op 20)",
     main = "Resultaten versus Slaapduur",
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
dev.off()
