# Gegevens van ANFR
merk <- c("OnePlus", "Asus", "OnePlus", "Xiaomi", "Xiaomi", "Xiaomi", "Sony",
          "Samsung", "Samsung", "Xiaomi", "Samsung", "Apple", "Apple",
          "Apple", "Samsung", "Nokia", "Xiaomi", "Motorola", "Xiaomi")
model <- c("7 Pro", "Zenfone 8", "9 Pro 5G", "Poco F3", "Mi 11i",
           "Redmi Note 10S", "Xperia 5III", "Galaxy Xcover 5 EE",
           "Galaxy A03S", "Poco X3", "Galaxy S20 FE", "iPhone 12 5G",
           "Galaxy Z Flip", "iPhone SE 2020", "iPhone 12 Pro Max", "4.2",
           "Poco F2 Pro", "Moto G10", "Redmi 9A")
sar_broek <- c(4.42, 2.73, 1.94, 1.261, 1.823, 1.38, 3.425, 2.28, 1.87,
               5.49, 2.31, 5.74, 1.882, 3.52, 3.395, 3.37, 1.86, 3.06, 2.28)
sar_jas <- c(1.43, 0.987, 1.79, 0.476, 0.646, 0.452, 1.816, 0.704, 0.715, 2.67,
             1.25, 1.178, 3.024, 1.04, 0.912, 1.37, 0.843, 1.24, 0.846)

# Geef hieronder een antwoord op de vragen
niet_conform <- sar_broek > 4 | sar_jas > 2

modellen_conform <- paste(merk[!niet_conform], model[!niet_conform])