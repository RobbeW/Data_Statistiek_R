# Gegevens
sigma <- 5.67 * 10^-8
oppervlakte <- 1.5
temperatuur_celcius <- 33

kledij <- c("Katoen", "Wol", "PET", "Polyamide PA", "PET / Katoen mix",
            "PET / Wol mix", "Linnen", "Naakte huid",
            "Aluminium reddingsdeken")

# Antwoorden
emissie <- c(0.68, 0.73, 0.79, 0.82, 0.77, 0.78, 0.69, 0.97, 0.05)

temperatuur_kelvin <- temperatuur_celcius + 273
warmtestraling_uit <- round(sigma * emissie * oppervlakte *
                              temperatuur_kelvin^4, 2)

warmtestraling_in <- round(sigma * emissie * oppervlakte * 293^4, 2)

verlies <- warmtestraling_uit - warmtestraling_in

zuinig <- verlies < 87
zuinige_stoffen <- kledij[zuinig]
