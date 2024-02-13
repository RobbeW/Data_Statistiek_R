# Een dataset met gegevens van Olympische atleten.
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 3), "NULL", "character", "NULL", "numeric", rep("character", 4), "NULL" ))
# Enkel de gegevens van de atleten worden geselecteerd.
data <- data[data$sport == "Athletics" &
               !is.na(data$height) &
               !is.na(data$weight), ]
rownames(data) <- seq_len(nrow(data))

# Bereken het BMI
bmi <- round(data$weight / (data$height / 100)^2, 2)

# Rice rule
n <- length(bmi)
aantal_staven <- floor( 2 * n^(1/3) )

res <- 300
# Simpele plot
# Plot
png("plot_simple.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
hist(bmi)
dev.off()

# Plot
png("plot_dark_simple.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
hist(bmi,
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
dev.off()


# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
hist(bmi, 
     breaks = aantal_staven,
     main = "Olympische atleten",
     xlab = "BMI",
     ylab = "Aantal atleten",
     col = "cadetblue")
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
hist(bmi, 
     breaks = aantal_staven,
     main = "Olympische atleten",
     xlab = "BMI",
     ylab = "Aantal atleten",
     col = "cadetblue",
     border = "white",
     col.main = "white",
     col.lab = "white",
     col.axis = "white"
)
dev.off()
