# Defineer de data en sla deze op in variabelen.
aantal_doden <- c(700, 800)
aantal_gereden_km <- c(80, 100) * 10^9  # Converteer naar km.

# Bereken het risico en sla op in een variabele.
risico <- (aantal_doden / aantal_gereden_km) * 10^6  # vermenigvuldig per miljoen

# Print het berekende risico via de variabele.
# De uitkomst lees je als: 
# Resultaat van 2013, dan dat van 2023. 
print(risico)
