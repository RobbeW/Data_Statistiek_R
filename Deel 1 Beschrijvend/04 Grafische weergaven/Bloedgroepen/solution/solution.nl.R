# Bloedgroepen
type <- c("A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-")
percentage <- c(34, 6, 8.5, 1.5, 38.25, 6.75, 4.25, 0.75)

# Labels aanmaken
bloedlabels <- paste0(type," (", percentage, "%)")

# Grafiek maken
pie(percentage,
    main = "Bloedgroepen in België",
    labels = bloedlabels,
    col = rainbow(length(type)))
