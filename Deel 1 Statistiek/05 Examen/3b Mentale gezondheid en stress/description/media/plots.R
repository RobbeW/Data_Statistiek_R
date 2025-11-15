colorslibrary(dplyr)
set.seed(19845)

# Data inlezen:
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/mental_health.csv",
  na.strings = c(".", "NA", ""),
  strip.white = TRUE,
  stringsAsFactors = FALSE
)

# Alleen gewenste kolommen:
data <- data[c("User_ID","Age","Stress_Level.1.10.","Social_Media_Platform","Happiness_Index.1.10.")]

# Kolommen hernoemen
names(data)[names(data)=="User_ID"] <- "user_id"
names(data)[names(data)=="Age"] <- "age"
names(data)[names(data)=="Stress_Level.1.10."]   <- "stress_level"
names(data)[names(data)=="Social_Media_Platform"] <- "social_media_platform"
names(data)[names(data)=="Happiness_Index.1.10."] <- "happiness_index"

# Scores omvormen naar integers
data$stress_level <- as.numeric(data$stress_level) + runif(length(data$user_id), -0.5, 0.5)
data$age <- as.numeric(data$age)
data$happiness_index <- as.numeric(data$happiness_index) + runif(length(data$user_id), -0.5, 0.5)

# Beantwoord hieronder de vragen
plus30 <- data$age >= 30
colors <- c("dodgerblue", "deeppink2", "deepskyblue4", "pink2", "black", "red")

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
plot(data$stress_level[plus30]~data$happiness_index[plus30],
     xlab = "Happiness Index",
     ylab = "Stress Level",
     main = "Stressniveau versus Mentale gezondheid bij sporters",
     col = colors[factor(data$social_media_platform)])
abline(lm(data$stress_level[plus30]~data$happiness_index[plus30]), col = "green")
legend("bottomleft", legend = levels(factor(data$social_media_platform)), col = colors, pch = 19)
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
plot(data$stress_level[plus30]~data$happiness_index[plus30],
     xlab = "Happiness Index",
     ylab = "Stress Level",
     main = "Stressniveau versus Mentale gezondheid bij sporters",
     col = colors[factor(data$social_media_platform)],
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white")
abline(lm(data$stress_level[plus30]~data$happiness_index[plus30]), col = "green")
legend("bottomleft", legend = levels(factor(data$social_media_platform)), col = colors, pch = 19)
dev.off()
