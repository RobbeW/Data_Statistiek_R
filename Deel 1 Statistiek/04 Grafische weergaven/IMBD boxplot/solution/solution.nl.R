# Data inlezen van de IMDB
data <- read.csv2("https://raw.githubusercontent.com/LearnDataSci/articles/master/Python%20Pandas%20Tutorial%20A%20Complete%20Introduction%20for%20Beginners/IMDB-Movie-Data.csv",
                  sep=",",dec=".",
                  colClasses = c("NULL", "character", rep("NULL",4), "character", rep("numeric", 5)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "runtime", "rating", "votes", "revenue_millions","metascore")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
metascore_afgerond <- round(data$metascore / 10) * 10

boxplot(data$runtime~metascore_afgerond,
     col = "cadetblue",
     xlab = "Metascore",
     ylab = "Speeltijd (in minuten)",
     main = "Speeltijd versus Metascore")
