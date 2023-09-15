# Een dataset met patiëntgegevens
data <- read.csv("https://raw.githubusercontent.com/caravanuden/cardio/master/cardio_train.csv",
                 sep = ";",
                 header = TRUE)
# Cleanup van de dataset
flag <- 100 < data$ap_hi & data$ap_hi < 210 & data$ap_lo >60 & data$ap_lo < 1
data <- data[flag, ]

