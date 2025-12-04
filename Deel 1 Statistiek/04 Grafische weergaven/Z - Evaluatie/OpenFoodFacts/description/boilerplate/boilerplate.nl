# Importeert de data van OpenFoodFacts en vormt om
data <- read.csv2(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/openfood_belgium_delhaize.csv",
  sep = ",",
  dec = "."
)

colnames(data) <- c("update", "naam", "nutriscore", "nutri", "nova",
                    "ecoscore", "eco", "kcal", "vet", "verz_vet",
                    "koolhydr", "suiker", "vezels", "eiwit", "zout")

# Datumstring (met tijd) omzetten naar datum
data$update <- as.Date(data$update, format = "%Y-%m-%dT%H:%M:%SZ")

# Nutriscore- en ecoscore-letters in hoofdletters
data$nutri <- toupper(data$nutri)
data$eco   <- toupper(data$eco)

# Schrijf hieronder je code
