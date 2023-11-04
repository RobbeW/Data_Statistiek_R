# Programmeer hier de functie






### Een voorbeeld ###
agresti_coull(c(TRUE, TRUE, FALSE, TRUE, FALSE))  # 55.56


# NHANES dataset
NHANES <- read.csv("https://raw.githubusercontent.com/GTPB/PSLS20/master/data/NHANES.csv",
                 header = TRUE)
NHANES <- na.omit(NHANES[, c("Gender","Age","BMI","Diabetes", "DaysMentHlthBad", "AlcoholYear")])
rownames(NHANES) <- seq_len(nrow(NHANES))
colnames(NHANES) <- c("gender","age","bmi","diabetes","days_bad_mental_health","days_alc")

# Antwoord op de vragen
