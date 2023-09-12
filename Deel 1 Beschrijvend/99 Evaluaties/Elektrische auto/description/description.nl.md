De elektrische wagen is overduidelijk de wagen van de toekomst. Meerdere producten hebben al aangekondigd om hun wagenpark volledig naar elektrische wagens om te schakelen.

![Een elektrische wagen is aan het opladen.](media/michael-fousert.jpg "Foto door Michael Fousert op Unsplash."){:data-caption="Een elektrische wagen is aan het opladen." width="45%"}

## Gegeven

In <a href="https://github.com/sit-2021-int214/002-EVs---One-Electric-Vehicle-Dataset---Smaller/blob/main/ElectricCar_Clean.csv" target="_blank">deze tabel</a> vind je van verschillende elektrische auto's heel wat karakteristieken.

```R
# Gegevens ophalen
data <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/002-EVs---One-Electric-Vehicle-Dataset---Smaller/main/ElectricCar_Clean.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("character", 3), rep("NULL", 2), rep("numeric", 2) ))
```

Via `head(data)` een **voorsmaakje** opvragen resulteert in:

```
       Brand                         Model Accel TopSpeed Range Efficiency FastCharge             RapidCharge       PowerTrain   PlugType Seats PriceEuro
1      Tesla Model 3 Long Range Dual Motor   4.6      233   450        161        940 Rapid charging possible  All Wheel Drive Type 2 CCS     5     55480
2 Volkswagen                     ID.3 Pure  10.0      160   270        167        250 Rapid charging possible Rear Wheel Drive Type 2 CCS     5     30000
3   Polestar                             2   4.7      210   400        181        620 Rapid charging possible  All Wheel Drive Type 2 CCS     5     56440
4        BMW                           iX3   6.8      180   360        206        560 Rapid charging possible Rear Wheel Drive Type 2 CCS     5     68040
5      Honda                             e   9.5      145   170        168        190 Rapid charging possible Rear Wheel Drive Type 2 CCS     4     32997
6      Lucid                           Air   2.8      250   610        180        620 Rapid charging possible  All Wheel Drive Type 2 CCS     5    105000
```

Dit is een data frame met **twaalf vectoren**.

## Gevraagd

- VRAGEN OPSTELLEN, misschien een met efficientie ofzo...