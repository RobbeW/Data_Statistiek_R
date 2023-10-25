# Een dataset met gegevens Old Faithful
data <- read.csv("https://raw.githubusercontent.com/gchoi/Dataset/master/OldFaithful.csv",
                 header = TRUE)
colnames(data) <- c("time_eruption", "time_waiting")

# Bepaal hier een antwoord op de vragen
# Vraag 1
kort <- data$time_eruption < 3.5

# Vraag 2
wachttijd_kort <- data$time_waiting[kort]
wachttijd_lang <- data$time_waiting[!kort]
gem_wachttijd_kort <- mean(wachttijd_kort)
gem_wachttijd_lang <- mean(wachttijd_lang)

# Vraag 3
boolean <- data$time_waiting > gem_wachttijd_kort & data$time_waiting < gem_wachttijd_lang

percentage_wachttijd <- round(mean(boolean), 2)
