Het was de Gentenaar <a hreft="https://nl.wikipedia.org/wiki/Adolphe_Quetelet" target="_blank">Adophle Quetelet</a> die in 1823 de toelating kreeg om in Brussel een sterrewacht op te richten. Later splitste het <a href="https://nl.wikipedia.org/wiki/Koninklijk_Meteorologisch_Instituut_van_Belgi%C3%AB" target="_blank">Koninklijk Meteorologisch Instituut van België</a> (KMI) zich van deze sterrewacht af.

![De KMI campus te Ukkel.](media/ukkel.jpg "De KMI campus te Ukkel."){:data-caption="De KMI campus te Ukkel." width="45%"}

## Data frame ophalen
Het weerstation staat ten dienst van de bevolking en via <a href="https://www.meteo.be/resources/climatology/uccle_month/Ukkel_waarnemingen.txt" target="_blank">deze link</a> kan je heel wat gegevens van de laatste 60 dagen raadplegen.

Het is mogelijk om dit automatisch te importeren naar R, via de volgende code:

```R
# Importeert de data, waarbij de eerste 5 rijen overgeslaan worden.
data <- read.table("https://www.meteo.be/resources/climatology/uccle_month/Ukkel_waarnemingen.txt",
                   header = FALSE, skip = 5)
# Geeft alle kolommen een mooie naam.
colnames(data) <- c("datum", "temp_max", "temp_min", "temp_gem", "neerslag",
                    "wind", "zonneschijn")
# Rekent de laatste kolom om naar minuten.
data$zonneschijn <- strtoi(as.difftime(data$zonneschijn,
                                       format = "%H:%M", units = "mins"))
```

Net zoals we vroeger al eens hebben uitgevoerd, werd hier een **data frame** aangemaakt.
Je kan een **voorsmaakje** van de variabele `data` opvragen via:

```R
head(data)
```

Dit resulteert in iets van de vorm:

```
       datum temp_max temp_min temp_gem neerslag wind zonneschijn
1 28-08-2023     20.3     11.6     15.9      0.0  2.1         329
2 27-08-2023     19.4     12.9     15.5      1.5  2.6         437
3 26-08-2023     20.8     13.0     16.1      5.7  3.4         478
4 25-08-2023     21.6     13.5     18.6     15.4  2.4          49
5 24-08-2023     23.0     18.0     20.2      6.3  3.0         130
6 23-08-2023     26.6     13.9     20.9      0.0  1.6         701
```

Deze dataset bestaat dus uit zeven vectoren, `data$datum`, `data$temp_max`, `data$temp_min`, `data$temp_gem`, `data$neerslag`, `data$wind` en `data$zonneschijn`. Met elk van deze vectoren kan je verder werken.

## Gegeven

Gebruik bovenstaande tabel (met de bijbehorende vectoren) om de volgende vragen te beantwoorden.

## Gevraagd

**Rond** de gemiddelden steeds **af** op 2 cijfers na de komma.

- Maak een variabele `gemiddelde_zonneschijn` die het gemiddelde van het aantal minuten zonneschijn bevat.

- Maak een variabele `veel_zon` die bestaat uit een vector met booleaanse waarden van de dagen waar een bovengemiddeld aantal minuten zon scheen.

- Selecteer nu de dagen met een bovengemiddeld aantal minuten zon met behulp van de vorige vector, sla het resultaat op in `zonnige_dagen`.

- Werk analoog voor de hoeveelheid neerslag. Maak dus een variabele `gemiddelde_neerslag`, daarna een variabele `weinig_neerslag` die bestaat uit een vector met booleaanse waarden van de dagen waar minder dan gemiddeld neerslag viel. En selecteer tot slot de geassocieerde dagen in `droge_dagen`.
