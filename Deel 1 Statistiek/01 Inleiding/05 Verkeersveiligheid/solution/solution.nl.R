# Defineer de data en sla deze op in variabelen.
aantal_doden <- c(716, 510)
aantal_miljoen_gereden_km <- c(84.2, 92.9) * 10^3

# Bereken het risico en sla op in een variabele.
risico <- aantal_doden / aantal_miljoen_gereden_km

# Print het berekende risico via de variabele.
# De uitkomst lees je als:
# Resultaat van 2015, dan dat van 2022.
risico
