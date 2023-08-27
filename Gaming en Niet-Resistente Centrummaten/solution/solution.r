# Data zoals Senne die heeft ingetikt
data <- c(11, 8, 7, 9, 12, 14, 10, 7, 15, 9, 8, 12, 9, 11, 10, 1000, 14, 15, 8)

# Bereken het gemiddelde en de mediaan
gemiddelde <- mean(data)
mediaan <- median(data)

# Print de resultaten
print(paste("Het gemiddelde aantal uur dat jongeren gamen bedraagt:", gemiddelde))
print(paste("Het mediaan aantal uur dat jongeren gamen bedraagt:", mediaan))

# Corrigeer de tikfout en sla de correcte data op in de variabele data_correct
data_correct <- c(11, 8, 7, 9, 12, 14, 10, 7, 15, 9, 8, 12, 9, 11, 10, 10, 14, 15, 8)


# Bereken het gemiddelde en de mediaan voor de gecorrigeerde data
gemiddelde_correct <- mean(data_correct)
mediaan_correct <- median(data_correct)

# Print de gecorrigeerde resultaten
print(paste("Het gecorrigeerde gemiddelde bedraagt:", gemiddelde_correct))
print(paste("De gecorrigeerde mediaan bedraagt:", mediaan_correct))
