# Gegeven
lonen <- c(2500, 3200, 4800, 3900, 4100, 5600, 4000, 2700, 5100, 3800, 5900, 4400, 6200, 2900, 5300)

# Totale som van lonen
totaal_loon <- sum(lonen)

# Gemiddeld loonniveau
gemiddeld_loon <- mean(lonen)

# Mediaan loon
mediaan_loon <- median(lonen)

# Printen naar het scherm: 
print(paste('Totale som van lonen:', totaal_loon, 'euro.'))
print(paste('Gemiddeld loonniveau:', gemiddeld_loon, 'euro.'))
print(paste('Mediaan loon:', mediaan_loon, 'euro.'))
