# Een dataset over Starbucks
data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/ti",
                        "dytuesday/master/data/2021/2021-12-21/starbucks.csv"),
                 header = TRUE)

# Aantal soorten drankjes
aantal_soorten <- length(data$product_name)

# Selectie van suikerhoudende dranken
veel_suiker <- data$sugar_g > 20
suikerrijke_dranken <- data$caffeine_mg[veel_suiker]

weinig_suiker <- data$sugar_g <= 20
suikerarme_dranken <- data$caffeine_mg[weinig_suiker]

# Berekening centrummaten
gemiddelde_suikerrijk <- mean(data$caffeine_mg[suikerrijke_dranken])
mediaan_suikerarm <- median(data$caffeine_mg[suikerrijke_dranken])

gemiddelde_suikerarm <- mean(data$caffeine_mg[suikerarme_dranken])
mediaan_suikerarm <- median(data$caffeine_mg[suikerarme_dranken])