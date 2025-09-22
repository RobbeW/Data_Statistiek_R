# Importeert de data van Fluvius
data <- read.csv2("https://data.opendatasoft.com/api/explore/v2.1/catalog/datasets/1_33-lp-open-data-fluvius@fluvius/exports/csv",
                  sep = ";",
                  colClasses = c("NULL", rep("character", 3), "numeric", "character") )
colnames(data) <- c("netbeheerder", "gemeente", "technologie", "aantal", "vermogen")
data <- data[data$netbeheerder != "Niet toegewezen" & data$gemeente != "Niet toegewezen",]
data$vermogen <- as.numeric(data$vermogen)
rownames(data) <- seq_len(nrow(data))

# Plot
gemiddeld_vermogen <- round(data$vermogen / data$aantal, 2)
gent <- data$gemeente == "GENT"
aantal_installaties_gent <- sum(data$aantal[gent])
gemiddelde_gent <- mean(gemiddeld_vermogen[gent])