# Importeert de data van Fluvius
data <- read.csv2("https://data.opendatasoft.com/api/explore/v2.1/catalog/datasets/1_33-lp-open-data-fluvius@fluvius/exports/csv",
                  sep = ";",
                  colClasses = c("NULL", rep("character", 3), "numeric", "character") )
colnames(data) <- c("netbeheerder", "gemeente", "technologie", "aantal", "vermogen")
data <- data[data$netbeheerder != "Niet toegewezen" & data$gemeente != "Niet toegewezen",]
data$vermogen <- as.numeric(data$vermogen)
rownames(data) <- seq_len(nrow(data))

# Plot
gemiddeld_vermogen <- round( data$vermogen/data$aantal, 2)
zon <- data$technologie == "ZONNE-ENERGIE"

res <- 150
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
par(mar=c(13,4,4,4))
boxplot(gemiddeld_vermogen[zon]~data$netbeheerder[zon],
        main = "Zonne-energie per netbeheerder",
        ylab = "Gemiddeld vermogen per gemeente",
        col = "gold2",
        xlab = "",
        las = 2)
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
par(mar=c(13,4,4,4))
boxplot(gemiddeld_vermogen[zon]~data$netbeheerder[zon],
        main = "Zonne-energie per netbeheerder",
        ylab = "Gemiddeld vermogen per gemeente",
        col = "gold2",
        xlab = "",
        las = 2,
        border = "white",
        col.main = "white",
        col.lab = "white",
        col.axis = "white"
)

dev.off()


