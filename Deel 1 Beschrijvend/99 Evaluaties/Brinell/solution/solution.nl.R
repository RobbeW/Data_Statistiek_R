# Gegevens
diameter_D <- 10
kracht_F <- 29500
materialen <- c("Mild staal", "Gehardend staal", "Gehardend aluminium",
                "Koper", "Zachte messing", "Gietijzer")
diameter_d <- c(5.6082, 4.0982, 6.7124, 8.8425, 7.2415, 3.0014)

# Berekeningen
brinell <- 0.102 * 2 * krachtF /
  (pi * diameter_D * (diameter_D - sqrt(diameter_D^2 - diameter_d^2)))
