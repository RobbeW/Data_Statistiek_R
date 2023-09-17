# Gegevens ophalen en enkele manipulaties
data <- read.csv(paste0("https://raw.githubusercontent.com/rfordatascience/ti",
                        "dytuesday/master/data/2020/2020-04-07/tdf_winners.cs",
                        "v"),
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), "NULL",
                                rep("numeric", 8), rep("NULL", 7)))
data <- na.omit(data)
colnames(data)[1:2] <- c("year", "winner")
data$year <- substr(data$year, 1, 4)
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
avg_speed <- round(data$distance / data$time_overall, 2)

# Hoeveel minuten verschil?
marge_minuten <- round(data$time_margin * 60, 2)

# Spannende edities
spannende_jaren <- data$year[marge_minuten < 1]
spannende_marge_seconden <- marge_minuten[marge_minuten < 1] * 60

# Meer ritten gewonnen dan in het geel rijden
speciale_winnaars <- data$winner_name[data$stage_wins > data$stages_led]

# Amerikaanse winnaars
jaren_amerika <- data$year[data$winner == "Greg LeMond" |
                             data$winner == "Lance Armstrong"]