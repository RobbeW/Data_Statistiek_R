# Importeert de data van OpenFoodFacts en vormt om
data <- read.csv2("https://mirabelle.openfoodfacts.org/products.csv?sql=select+last_updated_datetime%2C+product_name%2C+nutriscore_score%2C+nutriscore_grade%2C+nova_group%2C+ecoscore_score%2C+ecoscore_grade%2C+%5Benergy-kcal_100g%5D%2C+fat_100g%2C+%5Bsaturated-fat_100g%5D%2C+carbohydrates_100g%2C+sugars_100g%2C+fiber_100g%2C+proteins_100g%2C+salt_100g++from+%5Ball%5D+where+%22countries_en%22+like+%3Ap0+and+%22ecoscore_score%22+is+not+null+and+%22nova_group%22+is+not+null+and+%5Benergy-kcal_100g%5D+is+not+null+and+%22nutriscore_score%22+is+not+null+and+%22stores%22+like+%3Ap1&p0=%25Belgium%25&p1=%25Delhaize%25&_size=max",
                  sep = ",", dec=".")
colnames(data) <- c("update", "naam", "nutriscore", "nutri", "nova", "ecoscore", "eco", "kcal", "vet", "verz_vet", 
                    "koolhydr", "suiker", "vezels", "eiwit", "zout")
data$update <- as.Date(data$update)
data$nutri <- toupper(data$nutri)
data$eco <- toupper(data$eco)

# Antwoord op de vragen
ecologisch <- data$eco == "A" | data$eco == "B"

# Plot
boxplot(data$kcal[ecologisch]~data$nutri[ecologisch],
        main = "Energie per nutriscore (voor ecologische producten)",
        col = c("green4", "chartreuse3", "gold2", "darkorange2", "firebrick2"),
        xlab = "",
        ylab = "Aantal kilocalorieën")
