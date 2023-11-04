# Een functie die de agresti-coull schatter simuleert
agresti_coull <- function(vector) {
  n <- length(vector)
  X <- sum(vector)
  ag <- (X+2)/(n+4) * 100
  return(round(ag, 2))
}

### Een voorbeeld ###
agresti_coull(c(TRUE, TRUE, FALSE, TRUE, FALSE))  # 55.56


# NHANES dataset
NHANES <- read.csv("https://raw.githubusercontent.com/GTPB/PSLS20/master/data/NHANES.csv",
                 header = TRUE)
NHANES <- na.omit(NHANES[, c("Gender","Age","BMI","Diabetes", "DaysMentHlthBad", "AlcoholYear")])
rownames(NHANES) <- seq_len(nrow(NHANES))
colnames(NHANES) <- c("gender","age","bmi","diabetes","days_bad_mental_health","days_alc")

# Antwoord op de vragen
median_alc <- median(NHANES$days_alc)
weinig_alc <- NHANES$days_alc < median_alc
p_diabetes_weinig_alc <- agresti_coull(NHANES$diabetes[weinig_alc] == "Yes")

veel_alc <- NHANES$days_alc > median_alc
p_diabetes_veel_alc <- agresti_coull(NHANES$diabetes[veel_alc] == "Yes")
