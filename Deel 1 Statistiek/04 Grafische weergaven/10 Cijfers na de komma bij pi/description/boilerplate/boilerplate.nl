# needed library
library(readr)

# downloading 100 000 digits of pi
url <- "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/refs/heads/main/bronnen/100000.txt"
getalpi.raw <- readr::read_file(url)

# splitting string into single characters
getalpi <- data.frame(strsplit(getalpi.raw, "")[1])
# removing the "." i.e. 2nd row
getalpi <- data.frame(getalpi[-c(1,2),])
data <- as.data.frame(table(getalpi[,1], dnn = list("cijfer")), responseName = "aantal")

# Noteer hieronder je code
