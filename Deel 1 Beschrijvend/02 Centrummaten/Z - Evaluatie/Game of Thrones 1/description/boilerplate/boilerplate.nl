# Dataset Game of Thrones
data <- read.csv(paste0("https://raw.githubusercontent.com/MuazmaZ/got-data-analysis/master/got_csv_full_clean.csv"),
                 sep = ",", header = TRUE,
                 colClasses = c("numeric", "NULL", "numeric", rep("character",2), rep("NULL", 2), rep("numeric", 2), "NULL", rep("numeric",3)))
# De kolommen hernoemen
colnames(data) <- c("season", "episode", "name", "director",
                    "US_viewers_million", "runtime_mins", "IMDB_votes", "IMDB_score", "notable_deaths")

# Bepaal hier een antwoord op de vragen
