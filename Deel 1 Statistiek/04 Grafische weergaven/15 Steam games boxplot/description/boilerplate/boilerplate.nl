# Data inlezen van STEAM
data <- read.csv2("https://tinyurl.com/4cv3hk2w",
                  sep=",",dec=".",
                  colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("NULL",2)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "metascore", "rating", "positivity_ratio", "time_to_beat","time_to_beat_extra")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
