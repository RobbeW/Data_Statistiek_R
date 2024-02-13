Stad Gent deelt via het <a href="https://data.stad.gent/explore/dataset/bezetting-parkeergarages-real-time" target="_blank">Open Data Portaal</a> de bezettingsgraad van zijn verschillende parkeermogelijkheden.

![Een parkeergarage waar zeker nog plaats is.](media/adrien-fu.jpg "Foto door Adrien Fu op Unsplash."){:data-caption="Een parkeergarage waar zeker nog plaats is." width="45%"}

## Meerdere vectoren in één data frame

Het is mogelijk om deze data automatisch te importeren naar R, via de volgende code:

```R
# Importeert data data van Stad Gent, waarbij slechts bepaalde kolommen geslecteerd worden
data <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/bezetting-parkeergarages-real-time/exports/csv",
                  sep = ";",
                  colClasses = c("character", "character", "NULL", "numeric", "numeric", rep("NULL", 14)) )
# Geeft de kolommen een beter naam
colnames(data) <- c("naam", "laatste_update", "capaciteit", "percentage_bezet")
# Herrekent de laatste kolom naar een percentage
data$percentage_bezet <- data$percentage_bezet / 100
```
De precieze details van het bovenstaande stukje code zijn niet zo belangrijk. Belangrijker is dat er een zogenaamd **data frame** werd aangemaakt.
Je kan een **voorsmaakje** van de variabele `data` opvragen via:

```R
head(data)
```

Dit resulteert in iets van de vorm:

```
               naam            laatste_update capaciteit percentage_bezet
1 Sint-Pietersplein 2023-08-29T21:35:38+02:00        505             0.26
2           Tolhuis 2023-08-29T21:35:38+02:00        102             0.32
3   B-Park Dampoort 2023-08-29T21:21:59+02:00        181             0.00
4         Dok noord 2023-08-29T20:34:22+02:00        188             0.65
5      Vrijdagmarkt 2023-08-29T21:35:38+02:00        299             0.50
6     Sint-Michiels 2023-08-29T21:35:38+02:00        259             0.42
```

Je merkt dat een data frame *ruw gesproken* een combinatie is van verschillende vectoren. Je kan de vectoren apart opvragen via de **accessor** `$`.

```R
data$capaciteit
# Dit resulteert in een vector met enkel de verschillende capaciteiten
```

De dataset bestaat hier dus uit vier vectoren, `data$naam`, `data$laatste_update`, `data$capaciteit` en `data$percentage_bezet`. Met elk van deze vectoren kan je verder werken.

## Gegeven

Gebruik deze dataset (met de bijbehorende vectoren) om de volgende vragen te beantwoorden.

## Gevraagd

- Maak een variabele `vrije_plaatsen` waarin je voor elke parking uitrekent hoeveel plaatsen er nog vrij zijn. Gebruik de functie `floor()` om het aantal vrije plaatsen **naar beneden af te ronden**. Indien er uit je berekening volgt dat er `77.52` plaatsen vrij zijn, betekent dit dat er eigenlijk slechts `77` plaatsen vrij zijn.

- Maak een variabele `veel_plaats` die bestaat uit een vector met **booleaanse waarden** van de parkings waar nog minstens 75% van de plaatsen vrij zijn.

- **Selecteer** nu de parkings waar veel plaats is en sla dit op in de variabele `parking_met_veel_plaats`.