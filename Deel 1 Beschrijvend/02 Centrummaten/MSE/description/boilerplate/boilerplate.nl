



### Enkele testen ###
echte_gegevens <- c(1000.02, 1000.96, 1001.82, 1002.75)
voorspelde_gegevens <- c(999.96, 1001.00, 1002.04, 1002.56)
mse(echte_gegevens, voorspelde_gegevens)  # 0.022, dit is klein, dus de voorspelling is goed!

echte_gegevens <- c(1000.02, 1000.96, 1001.82, 1002.75)
voorspelde_gegevens <- c(950.34, 987.15, 1011.71, 1034.18)
mse(echte_gegevens, voorspelde_gegevens)  # 936.119, hier is de voorspelling duidelijk slechter!