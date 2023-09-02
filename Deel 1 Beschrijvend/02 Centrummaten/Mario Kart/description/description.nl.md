Mario Kart is een populair racespel ontwikkeld door Nintendo. De versie <a href="https://nl.wikipedia.org/wiki/Mario_Kart_8" target="_blank">Mario Kart 8 Deluxe</a> is het best verkochte spel voor de Nintendo Switch met maar liefst 46,82 miljoen verkochte exemplaren.

![Mario Kart Deluxe 8 voor de Nintendo Switch.](media/jacob-spaccavento.jpg "Foto door Jacob Spaccavento op Unsplash."){:data-caption="Mario Kart Deluxe 8 voor de Nintendo Switch." width="45%"}

## Data frame ophalen
Ook <a href="https://nl.wikipedia.org/wiki/Mario_Kart_64" target="_blank">Mario Kart 64</a> wordt nog vaak gespeeld. Deze <a href="https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-05-25/records.csv" target="_blank">dataset</a> bevat een overzicht van de recordtijden voor de verschillende circuits.

Met onderstaande code kan je deze recordtijden ophalen, dit voor de aparte circuits, het aantal rondjes, het nemen van shortcuts, enz...

```R
# Gegevens ophalen
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-05-25/records.csv",
                 header = TRUE)
# Aanpassen naar de recordtijden en wijzing kolomnamen
data <- aggregate(data$time, by = list(track = data$track, type = data$type,
                                       shortcut = data$shortcut), FUN = min)
colnames(data) <- c("track", "type", "shortcut", "record_time")
data <- data[order(data$track, data$type, data$shortcut), ]
```

## Gegeven

Een **voorsmaakje** opvragen van de data kan via:

```R
head(data)
               track       type shortcut record_time
1  Banshee Boardwalk Single Lap       No       40.78
17 Banshee Boardwalk  Three Lap       No      124.09
2    Bowser's Castle Single Lap       No       43.15
18   Bowser's Castle  Three Lap       No      132.00
3     Choco Mountain Single Lap       No       38.02
33    Choco Mountain Single Lap      Yes       38.02
```

Er zijn met dus **vier vectoren** terug te vinden in de data frame `data`.

## Gevraagd

Je merkt dat de recordtijd van zowel **Single laps** als **Three laps** gegeven wordt, eventueel met of zonder **shortcut**. Verschilt de recordtijd op de **Three laps** veel van het drievoud van de recordtijd op de **Single laps**?

- Maak twee **booleaanse** vectoren `single_lap_no_shortcut` en `three_lap_no_shortcut` aan, waarbij je respectievelijk de tijden op **Single lap** of **Three lap** en dit **zonder shortcut** selecteert.

- Maak nu twee vectoren `record_single_lap_no_shortcut` en `record_three_lap_no_shortcut` aan, met enkel de recordtijden.

- Bereken het **verschil** de recordtijd op de drie rondjes en het **drievoud** van de recordtijd op één enkel rondje. Sla dit op in de variabele `verschil`.
