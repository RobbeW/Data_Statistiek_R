# Afvaldata verzameld door OVAM
fracties <- c("GFT", "KGA", "Papier & karton", "Glas", "Houtafval", "PMD", "Bouwafval", "Restafval")
afval <- c(46.26, 0.23, 17.43, 2.14, 1.22, 19,  2.75)

# Geef nu een antwoord op de vragen
# Bepaal de hoeveelheid restafval
restafval <- 118.15 - sum(afval)
afval <- c(afval, restafval)

# Grafiek maken
pie(afval,
    main = "Sorteeranalyse Vlaming",
    labels = fracties,
    col = rainbow(length(afval)))
