# Gegevens ophalen en enkele manipulaties
data <- read.csv(paste0("https://raw.githubusercontent.com/sit-2021-int214/00",
                        "2-EVs---One-Electric-Vehicle-Dataset---Smaller/main/",
                        "ElectricCar_Clean.csv"),
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 5),
                                rep("NULL", 5), rep("numeric", 2)))
names(data) <- tolower(names(data))
data$model <- paste(data$brand, data$model)
data <- subset(data, select = -c(brand))
data <- subset(data, fastcharge != 0)
rownames(data) <- seq_len(nrow(data))

# Antwoorden

# Topmodellen
top <- data$accel <= 3 & data$range > 600
topmodellen <- data$model[top]
topprijzen <- data$priceeuro[top]

# Actieradius in de winter
range_winter <- data$range * 0.85
wagens_winter <- data$model[range_winter >= 200]

# Laadtijden
laadtijden_round <- round(data$range / data$fastcharge * 60)
laadtijden_ceil <- ceiling(data$range / data$fastcharge * 60)

laadtijden <- laadtijden_ceil
