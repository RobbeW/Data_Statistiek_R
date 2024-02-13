# Programmeer hier de functie






### Een voorbeeld ###
agresti_coull(c(TRUE, TRUE, FALSE, TRUE, FALSE))  # 55.56


# NHANES dataset
data <- read.csv("https://raw.githubusercontent.com/GTPB/PSLS20/master/data/NHANES.csv",
                 header = TRUE)
data <- na.omit(data[, c("Gender","Age","BMI","Diabetes", "DaysMentHlthBad", "AlcoholYear")])
data$Diabetes <- data$Diabetes == "Yes"
rownames(data) <- seq_len(nrow(data))
colnames(data) <- c("gender","age","bmi","diabetes","days_bad_mental_health","days_alc")

# Antwoord op de vragen
