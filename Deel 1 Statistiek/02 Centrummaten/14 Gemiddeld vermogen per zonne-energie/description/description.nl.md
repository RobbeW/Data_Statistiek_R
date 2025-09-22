## Gegeven
Fluvius houdt het vermogen en het aantal lokale productie-installaties bij per gemeente en publiceert deze data op hun open data portaal. 

![Lokale zonne-energie.](media/groene_stroom.jpg "Lokale zonne-energie."){:data-caption="Lokale zonne-energie." width="45%"}

Via onderstaande code kan je deze gegevens ophalen

```R
# Importeert de data van Fluvius
data <- read.csv2("https://data.opendatasoft.com/api/explore/v2.1/catalog/datasets/1_33-lp-open-data-fluvius@fluvius/exports/csv",
                  sep = ";",
                  colClasses = c("NULL", rep("character", 3), "numeric", "character") )
colnames(data) <- c("netbeheerder", "gemeente", "technologie", "aantal", "vermogen")
data <- data[data$netbeheerder != "Niet toegewezen" & data$gemeente != "Niet toegewezen",]
data$vermogen <- as.numeric(data$vermogen)
rownames(data) <- seq_len(nrow(data))
```

Het resultaat is onderstaande dataframe. Hier merken we bijvoorbeeld dat er in Gent 28 505 installaties van zonnepanelen zijn, met een totaal **vermogen** van 205083.1 kVA (kilo voltampère). Door deze getallen te delen kan je besluiten dat elke lokale productie in Gent een vermogen van ongeveer 7.19 kVA heeft.

```
   netbeheerder      gemeente      technologie       aantal    vermogen
1 FLUVIUS IMEWO      EEKLO         ZONNE-ENERGIE       3648     24918.8
2 FLUVIUS IMEWO      EVERGEM       WKK AARDGAS            4      9289.0
3 FLUVIUS IMEWO      GENT          DIESEL (GEEN WKK)      4     11650.0
4 FLUVIUS IMEWO      GENT          ZONNE-ENERGIE      28505    205083.1
5 FLUVIUS IMEWO      JABBEKE       WINDENERGIE            2        31.5
6 FLUVIUS IMEWO      JABBEKE       WKK AARDGAS            5      3574.2
```

## Gevraagd

Is er een groot verschil tussen deze gemiddelde vermogens in Gent en andere Gemeentes?

- Maak variabele `gemiddeld_vermogen` waar je voor alle technologieën het gemiddeld vermogen per individuele installatie berekent. **Rond** dit **af** op 2 cijfers na de komma.
- Bereken het gemiddelde van al deze **individuele** installaties over heel België. Sla dit resultaat op in de variabele `gemiddelde_belgie`
- Maak een **booleaanse** vector `gent` waar je enkel de installaties uit Gent in opslaat.
- Hoeveel installaties kan je in het totaal dan vinden in Gent? Sla dit resultaat op in de variabele `aantal_installaties_gent`
- Bereken nu het gemiddelde vermogen van alle **individuele** installaties in Gent bedraagt. Maak hierbij gebruik van de variabele `gemiddelde_gent`

{: .callout.callout-info}
>#### Ter info
> In Gent is IMEWO de distributienetbeheerder.