# Importeert de data van Stad Gent
data <- read.csv2("Deel\ 1\ Statistiek/04\ Grafische\ weergaven/Z\ -\ Evaluatie/HIV\ diagnose/workdir/hiv.csv")
#read.csv2("hiv.csv") # if run a solution
colnames(data) <- c("jaar", "new_AIDS", "new_HIV")

# Plot
dagelijks <- round(data$new_HIV / 365.25, 1)
laatste_10 <- data$jaar > max(data$jaar)-10

barplot(dagelijks[laatste_10],
        main = "Dagelijks aantal nieuwe HIV besmettingen",
        col = "indianred",
        ylim = c(0,3),
        las = 2,
        names.arg = data$jaar[laatste_10])
