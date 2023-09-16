De elektrische wagen is overduidelijk de wagen van de toekomst. Meerdere producenten hebben al aangekondigd om hun wagenpark volledig naar elektrische wagens om te schakelen.

![Een elektrische wagen is aan het opladen.](media/michael-fousert.jpg "Foto door Michael Fousert op Unsplash."){:data-caption="Een elektrische wagen is aan het opladen." width="45%"}

## Gegeven

In <a href="https://github.com/sit-2021-int214/002-EVs---One-Electric-Vehicle-Dataset---Smaller/blob/main/ElectricCar_Clean.csv" target="_blank">deze tabel</a> vind je van verschillende elektrische auto's heel wat karakteristieken.

```R
# Gegevens ophalen en enkele manipulaties
data <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/002-EVs---One-Electric-Vehicle-Dataset---Smaller/main/ElectricCar_Clean.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 5), rep("NULL", 5), rep("numeric", 2) ))
names(data) <- tolower(names(data))
data$model <- paste(data$brand, data$model)
data <- subset(data, select = -c(brand))
data <- subset(data, fastcharge != 0)
rownames(data) <- seq_len(nrow(data))
```

Via `head(data)` een **voorsmaakje** opvragen resulteert in:

```
                 model accel topspeed range efficiency fastcharge seats priceeuro
1        Tesla Model 3   4.6      233   450        161        940     5     55480
2 Volkswagen ID.3 Pure  10.0      160   270        167        250     5     30000
3           Polestar 2   4.7      210   400        181        620     5     56440
4              BMW iX3   6.8      180   360        206        560     5     68040
5              Honda e   9.5      145   170        168        190     4     32997
6            Lucid Air   2.8      250   610        180        620     5    105000
```

Hier volgt wat uitleg over deze data frame met **acht vectoren**. 

`accel` stelt de tijd in seconden voor om van 0 tot 100 km/u te versnellen, `topspeed` de topsnelheid in km / u, `range` is de **actieradius** of het aantal km dat men kan afleggen met een volledig opgeladen wagen, `efficiency` het aantal Wh dat gebruikt wordt per km, `fastcharge` stelt het aantal km dat men kan rijden voor indien deze één uur opgeladen wordt aan een zogenaamde *snellaadpaal* (een oplaadpaal met een groot vermogen).

## Gevraagd

- Een elektrische wagen is een topmodel indien deze in 3 seconden of minder kan versnellen tot 100 km / u en indien deze een actieradius boven de 600 km heeft. Gebruik een booleaanse vector (kies zelf een naam) uit `data$model` de wagens te selecteren die hieraan voldoen. Sla dit op in de vector `topmodellen`.

- Gebruik dezelfde booleaanse vector om de prijzen van deze topmodellen op te slaan in de vector `topprijzen`.

- In koude wintermaanden presteren de batterijen van de elektrische wagens minder goed. Uit onderzoek blijkt dat de actieradius krimpt tot 85%. Bereken een vector `range_winter` met de actieradius in de wintermaanden. 

- 9 op de 10 verplaatsingen met de wagen zijn minder dan 200 km. Welke wagens hebben minimaal dit bereik tijdens de koude wintermaanden? **Selecteer** deze uit `data$model` en sla dit op in de vector `wagens_winter`.

- De kolom `fastcharge` geeft het aantal rijbare km dat *opgeladen* wordt in één uur. Bijvoorbeeld: voor de Tesla Model 3 merken we dat de actieradius 450 km, terwijl een uur opladen in 940 km rijbare km's zou resulteren. Hieruit kan je besluiten dat de Tesla Model 3 na een ongeveer half uur snelladen volledig opgeladen is. (Om exacter te zijn, na ca. 28 min)

  Bepaal een vector `laadtijd` waar je het **aantal minuten** berekent voordat de wagen volledig geladen is (via een snellader). Rond af op een aantal minuten (dus 0 cijfers na de komma)
