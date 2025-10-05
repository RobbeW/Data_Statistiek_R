# Gegevens ophalen van GitHub:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/fietstelpaal-visserij-2023-gent.csv",
  sep = ";", header = TRUE, stringsAsFactors = FALSE
)

# Totalen per dag:
data <- data.frame(
  aggregate(totaal ~ datum, data, sum),
  tegenrichting = aggregate(tegenrichting ~ datum, data, sum)$tegenrichting,
  hoofdrichting = aggregate(hoofdrichting ~ datum, data, sum)$hoofdrichting
)

# Bepaal nu het gevraagde:
