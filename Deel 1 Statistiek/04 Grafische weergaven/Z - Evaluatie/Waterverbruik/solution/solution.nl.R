library(tidyverse)
library(readxl)

data <- read_excel("https://www.vmm.be/data/gemiddeld-leidingwaterverbruik-gezinnen/leidingwaterverbruik-per-gemeente-per-type-gezin-in-2019.xlsx", 2)
# Data inlezen van de IMDB
data <- read.csv2("https://www.vmm.be/data/gemiddeld-leidingwaterverbruik-gezinnen/leidingwaterverbruik-per-gemeente-per-type-gezin-in-2019.xlsx",
                  sep=",",dec=".",
                  colClasses = c("NULL", "character", rep("NULL",4), "character", rep("numeric", 5)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "runtime", "rating", "votes", "revenue_millions","metascore")
rownames(data) <- seq_len(nrow(data))

# Beantwoord hieronder de vragen
n = length(data$runtime)
aantal_staven = sqrt(n)

hist(data$runtime,
     breaks = aantal_staven,
     main = "Histogram van de speeltijd",
     xlab = "Speeltijd in minuten",
     ylab = "Aantal films",
     col = "cadetblue")
