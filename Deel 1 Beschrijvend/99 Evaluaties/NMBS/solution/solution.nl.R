# Stiptheidsscijfers Infrabel
data <- read.csv(paste0("https://opendata.infrabel.be/api/explore/v2.1/catalo",
                        "g/datasets/nationale-stiptheid-per-maand/exports/csv"),
                 sep = ";", header = TRUE,
                 colClasses = c("NULL", "character", rep("numeric", 5)))
# De kolommen hernoemen
colnames(data) <- c("maand", "stiptheid", "aantal", "aantal_min_6",
                    "totale_min_vertraging", "stiptheid_neutr")

# Bepaal hier een antwoord op de vragen
maanden_slechte_stiptheid <- data$maand[data$stiptheid_neutr < 90]

# Gemiddeld aantal minuten vertraging
aantal_met_vertraging <- data$aantal - data$aantal_min_6
gemiddeld_min_vertraging <- round(data$totale_min_vertraging
                                  / aantal_met_vertraging, 2)

# Stiptheidsverschil
stiptheidsveschil <- data$stiptheid_neutr - data$stiptheid
mediaan_stiptheidsverschil <- median(stiptheidsveschil)
maanden_met_externe_factoren <- data$maand[stiptheidsveschil
                                           >= 2 * mediaan_stiptheidsverschil]