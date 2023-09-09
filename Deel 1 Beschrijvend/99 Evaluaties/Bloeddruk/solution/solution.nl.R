# Een dataset met patiëntgegevens
data <- read.csv(paste0("https://raw.githubusercontent.com/caravanuden/cardio/master/cardio_train.csv"),
                 sep = ";",
                 header = TRUE)
# Cleanup
flag <- 100 < data$ap_hi & data$ap_hi < 210 & data$ap_lo >60 & data$ap_lo < 1
data <- data[flag, ]

data$map <- data$ap_lo + 1 / 3 * (data$ap_hi - data$ap_lo)
