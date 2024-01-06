# Benodigde bibliotheken
library(dplyr)
library(lubridate)

# Importeert de data van Stad Gent en vormt om
src <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/sluikstort-meldingen-gent-2023/exports/csv",
                  sep = ";" )
src$datum <- as.Date(src$gemaakt_op)
data <- as.data.frame( src %>% group_by(jaar = year(datum), dag =wday(datum, week_start = 1, label= TRUE)) %>% count())
colnames(data) <- c("jaar","dag","aantal")

# Beantwoord hieronder de vragen
totaal <- sum(data$aantal)

percentages <- round( data$aantal / totaal * 100, 1)

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
barplot(percentages,
        names.arg = data$dag,
        main = "Meldingen sluikstort",
        ylab = "percentage",
        xlab = "dag van de week",
        col = "steelblue",
        ylim = c(0,20))
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
barplot(percentages,
        names.arg = data$dag,
        main = "Meldingen sluikstort",
        ylab = "percentage",
        xlab = "dag van de week",
        col = "steelblue",
        ylim = c(0,20),
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()

