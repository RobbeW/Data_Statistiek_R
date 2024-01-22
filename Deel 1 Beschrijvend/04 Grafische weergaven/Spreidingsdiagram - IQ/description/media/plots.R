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
plot(data$VIQ~data$MRI,
     ylab = "Verbaal IQ",
     xlab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan",
     pch = 19)
dev.off()

# Plot
png("plot_dark_simple.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
plot(data$VIQ~data$MRI,
     ylab = "Verbaal IQ",
     xlab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan",
     pch = 19,
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
dev.off()

# Plot
png("plot1_simple.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
plot(data$VIQ~data$MRI,
     ylab = "Verbaal IQ",
     xlab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan",
     pch = 19)
abline(lm(data$VIQ~data$MRI),
       col = "red")
dev.off()

# Plot
png("plot2_dark_simple.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
plot(data$VIQ~data$MRI,
     ylab = "Verbaal IQ",
     xlab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan",
     pch = 19,
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
abline(lm(data$VIQ~data$MRI),
       col = "red")
dev.off()


vrouwen <- data$geslacht ==  "Female"

# Plot2
png("plot_female.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
plot(data$VIQ[vrouwen]~data$MRI[vrouwen],
     ylab = "Verbaal IQ",
     xlab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan bij vrouwen",
     xlim = c(800000, 1000000),
     pch = 19)
abline(lm(data$VIQ[vrouwen]~data$MRI[vrouwen]),
       col = "red")
dev.off()

# Plot
png("plot_dark_female.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
plot(data$VIQ[vrouwen]~data$MRI[vrouwen],
     ylab = "Verbaal IQ",
     xlab = "aantal pixels hersenen (MRI)",
     main = "Verbaal IQ versus MRI scan bij vrouwen",
     xlim = c(800000, 1000000),
     pch = 19,
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
abline(lm(data$VIQ[vrouwen]~data$MRI[vrouwen]),
       col = "red")
dev.off()
