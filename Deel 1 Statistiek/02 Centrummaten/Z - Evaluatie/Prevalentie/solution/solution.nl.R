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
data <- read.csv("https://raw.githubusercontent.com/GTPB/PSLS20/master/data/NHANES.csv",
                 header = TRUE)
data <- na.omit(data[, c("Gender","Age","BMI","Diabetes", "DaysMentHlthBad", "AlcoholYear")])
data$Diabetes <- data$Diabetes == "Yes"
rownames(data) <- seq_len(nrow(data))
colnames(data) <- c("gender","age","bmi","diabetes","days_bad_mental_health","days_alc")

# Antwoord op de vragen
median_alc <- median(data$days_alc)
weinig_alc <- data$days_alc < median_alc
p_diabetes_weinig_alc <- agresti_coull(data$diabetes[weinig_alc])

veel_alc <- data$days_alc > median_alc
p_diabetes_veel_alc <- agresti_coull(data$diabetes[veel_alc])
