# Data inlezen van STEAM
data <- read.csv2("https://tinyurl.com/4cv3hk2w",
                  sep=",",dec=".",
                  colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("NULL",2)))
# if run a solution
# data <- read.csv2("dataset.csv",
#                   sep=",",dec=".",
#                   colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("NULL",2)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "metascore", "rating", "positivity_ratio", "time_to_beat","time_to_beat_extra")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
lang <- data$time_to_beat >= 24

boxplot(data$metascore~lang,
     col = c("cadetblue", "coral"),
     ylab = "Metascore",
     xlab = "Uitspeeltijd",
     names = c("Kort (< 24 uur)", "Lang (>= 24 uur)"),
     main = "Metascore versus speeltijd")


