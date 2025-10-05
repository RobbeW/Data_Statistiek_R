library(dplyr)

# Data inlezen:
url  <- "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/BRAINSIZE.csv"
data <- read.table(url, header=TRUE, sep="\t", na.strings=c(".", "NA", ""), stringsAsFactors=FALSE)

# Kolommen hernoemen (Engelse begrippen naar NL):
names(data)[names(data)=="Gender"]   <- "geslacht"
names(data)[names(data)=="MRICount"] <- "MRI"

# Eenheden omzetten: lbs→kg, inch→cm:
data$massa  <- as.numeric(data$Weight) * 0.45359237
data$lengte <- as.numeric(data$Height) * 2.54

# Alleen gewenste kolommen:
data <- data[c("geslacht","FSIQ","VIQ","PIQ","massa","lengte","MRI")]

# Beantwoord hieronder de vragen:
