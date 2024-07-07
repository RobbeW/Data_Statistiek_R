# Gegevens
h <- 2.85
D <- c(20, 5, 30, 100, 10) * 1000
K <- c(60, 100, 200, 40, 80)

goederen <- c("Ontstekings auto (bougie)", "Bepaald type smartphone",
              "Bepaald geneesmiddel", "McDonalds burgers",
              "Bestverkopende boeken")

# Geef hieronder een antwoord op de vragen
eoq <- round(sqrt(2 * D * K / h))

aantal_te_bestellen <- ceiling(D / eoq)

goederen[aantal_te_bestellen >= 15]
