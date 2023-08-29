# De lengtes van de mannelijke en vrouwelijke leden uit de Belgische 3x3 ploegen
lengtes_mannen <- c(198, 195, 193, 202)
lengtes_vrouwen <- c(185, 186, 172, 185)

# Mannen
som <- 0
for (lengte in lengtes_mannen){
  som <- som + lengte
}
gemiddelde_mannen <- som / length(lengtes_mannen)

# Vrouwen
som <- 0
for (lengte in lengtes_vrouwen){
  som <- som + lengte
}
gemiddelde_vrouwen <- som / length(lengtes_vrouwen)