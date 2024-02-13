# Gegevens ophalen en enkele manipulaties
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-04-07/tdf_winners.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), "NULL", rep("numeric", 8), rep("NULL", 7)) )
data <- na.omit(data)
colnames(data)[1] <- "year"
data$year <- substr(data$year, 1, 4)
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
