# Een dataset over Starbucks
data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/ti",
                        "dytuesday/master/data/2021/2021-12-21/starbucks.csv"),
                 header = TRUE,
                 colClasses = c("character", rep("NULL", 3), rep("numeric", 3), rep("NULL",4), rep("numeric", 4)))

# Enkel de grote bekers
grote_beker <- data$serv_size_m_l == 473

# Hoeveel bevatten teveel caffeïne?
aantal_teveel_cafeine <- sum(data$caffeine_mg[grote_beker] > 200)

# Bepalen van de 'ongezonde' drankjes.
gem_sugar <- mean(data$sugar_g[grote_beker])
gem_cafeine <- mean(data$caffeine_mg[grote_beker])

producten_in_grote_beker <- data$product_name[grote_beker]
ongezonde_drank <- producten_in_grote_beker[data$sugar_g[grote_beker] > gem_sugar & data$caffeine_mg[grote_beker] > gem_cafeine]

ongezond_percentage <- round( length(ongezonde_drank)/sum(grote_beker) * 100, 2)
