# De variabelen aanmaken
jaren <- 2008:2023
aantal_zieken <- c(250000, 266667, 283334, 300001, 316668, 333335, 350002,
                   366669, 383336, 400003, 416670, 433337, 450004, 466671,
                   483338, 500005)

# Totale aantal verloren arbeidsjaren door ziekte berekenen:
totaal_verloren_arbeidsjaren <- sum(aantal_zieken)

# Gemiddeld aantal
gemiddeld_aantal_zieken <- mean(aantal_zieken)

# Hoeveel jaren hebben een bovengemiddeld aantal zieken
veel_zieken <- (aantal_zieken > gemiddeld_aantal_zieken)
aantal_jaren_met_veel_zieken <- length(aantal_zieken[veel_zieken])
