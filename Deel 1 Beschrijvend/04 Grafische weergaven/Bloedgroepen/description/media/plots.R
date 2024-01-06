# Bloedgroepen
type <- c("A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-")
percentage <- c(34, 6, 8.5, 1.5, 38.25, 6.75, 4.25, 0.75)

# Labels aanmaken
labels <- paste0(type," (", percentage, "%)")

res <- 300
# Plot
png("plot.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "black")
pie(percentage,
    main = "Bloedgroepen België",
    labels = labels,
    col = rainbow(length(type)))
dev.off()

# Plot
png("plot_dark.png",
    res = res,
    width = 480 / 72 * res,
    height = 480 / 72 * res,
    antialias = "none")
par(bg = NA)
par(fg = "white")
pie(percentage,
    main = "Bloedgroepen België",
    labels = labels,
    col = rainbow(length(type)),
    border = "white",
    col.main = "white",
    col.lab = "white",
    col.axis = "white" )
dev.off()