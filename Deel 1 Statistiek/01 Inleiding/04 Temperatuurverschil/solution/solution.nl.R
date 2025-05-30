# Meetgegevens
maanden <- c("Januari", "Februari", "Maart", "April", "Mei", "Juni", "Juli")
gemiddelde_temperatuur <- c(5.2, 5.9, 7.5, 9, 14, 20.3, 18.4)
normale_temperatuur <- c(3.7, 4.2, 7.1, 10.4, 13.9, 16.7, 18.7)
minimale_temperatuur <- c(-0.2, 0, 3, 7.3, 10.4, 13.2, 15.3)
maximale_temperatuur <- c(7.2, 7.2, 9.6, 14.3, 16.4, 19.3, 23)

# Extreme verschil
extreem_verschil <- maximale_temperatuur - minimale_temperatuur

# Maanden die 1 graad kouder zijn dan normaal
graad_kouder_dan_normaal <- (normale_temperatuur - gemiddelde_temperatuur) > 1
koude_maanden <- maanden[graad_kouder_dan_normaal]

# Maand(en) die een nieuw record vastleggen
extreem <- (gemiddelde_temperatuur > maximale_temperatuur) |
  (gemiddelde_temperatuur < minimale_temperatuur)
# Maanden weergeven
maanden[extreem]
