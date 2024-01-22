library(dplyr)  
# Data inlezen
data <- read.csv2("http://bcs.whfreeman.com/WebPub/Statistics/shared_resources/EESEE/BrainSize/Data_Files/BRAINSZE.TXT",
                  sep="\t")
data <- data %>% mutate(across(where(is.character), ~na_if(., ".")))
data <- as.data.frame(data)
data$Weight <- as.numeric(data$Weight)*0.45359237
data$Height <- as.numeric(data$Height)*2.54
colnames(data) <- c("geslacht", "FSIQ", "VIQ", "PIQ", "massa", "lengte", "MRI")

# Beantwoord hieronder de vragen


res <- 300
# Plot
png("plot_simple.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
plot(data$MRI~data$VIQ,
     ylab = "Verbaal IQ",
     xlab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan",
     pch = 19)
abline(lm(data$MRI~data$VIQ),
       col = "red")
dev.off()

# Plot
png("plot_dark_simple.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
plot(data$MRI~data$VIQ,
     ylab = "Verbaal IQ",
     xlab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan",
     pch = 19,
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
abline(lm(data$MRI~data$VIQ),
       col = "red")
dev.off()

# Plot2
png("plot_geslacht.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
boxplot(data$VIQ~data$geslacht,
        col = rainbow(2))
dev.off()

# Plot
png("plot_dark_geslacht.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
boxplot(data$VIQ~data$geslacht,
        col = rainbow(2),
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)
dev.off()


# Plot3
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
boxplot(data$VIQ~bovengemiddeld_MRI,
        main = "VIQ versus hersengrootte",
        names = c("kleiner", "groter"),
        ylab = "Verbaal IQ",
        xlab = "Hersengrootte",
        col = rainbow(2))
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
boxplot(data$VIQ~bovengemiddeld_MRI,
        main = "VIQ versus hersengrootte",
        names = c("kleiner", "groter"),
        ylab = "Verbaal IQ",
        xlab = "Hersengrootte",
        col = rainbow(2),
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)
dev.off()