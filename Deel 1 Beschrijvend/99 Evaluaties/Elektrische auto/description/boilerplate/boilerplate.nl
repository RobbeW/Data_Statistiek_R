# Gegevens ophalen
data <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/002-EVs---One-Electric-Vehicle-Dataset---Smaller/main/ElectricCar_Clean.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("character", 3), rep("NULL", 2), rep("numeric", 2) ))



