# Gegevens ophalen en enkele manipulaties
data <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/002-EVs---One-Electric-Vehicle-Dataset---Smaller/main/ElectricCar_Clean.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("NULL", 5), rep("numeric", 2) ))
names(data) <- tolower(names(data))
data$model <- paste(data$brand, data$model)
data <- subset(data, select = -c(brand))
data <- subset(data, fastcharge != 0)
rownames(data) <- seq_len(nrow(data))

# Schrijf je antwoorden hieronder.
