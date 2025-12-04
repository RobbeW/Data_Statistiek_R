# Importeert de data van OpenFoodFacts en vormt om:
data <- read.csv2(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/openfood_belgium_delhaize.csv",
  sep = ",",
  dec = "."
)

colnames(data) <- c("update", "naam", "nutriscore", "nutri", "nova", "ecoscore", "eco",
                    "kcal", "vet", "verz_vet", "koolhydr", "suiker", "vezels", "eiwit", "zout")

# Datumstring (met tijd) omzetten naar datum:
data$update <- as.Date(data$update, format = "%Y-%m-%dT%H:%M:%SZ")
data$nutri  <- toupper(data$nutri)
data$eco    <- toupper(data$eco)

# Antwoord op de vragen:
ecologisch <- data$eco == "A" | data$eco == "B"

# Teken de plot: 
boxplot(
  data$kcal[ecologisch] ~ data$nutri[ecologisch],
  main = "Energie per nutriscore (voor ecologische producten)",
  col  = c("green4", "chartreuse3", "gold2", "darkorange2", "firebrick2"),
  xlab = "Nutriscore",
  ylab = "Aantal kilocalorieën"
)
