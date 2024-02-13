## Gegeven

Bodemverzadiging

```R
# Data inlezen van de IMDB
data <- read.csv2("https://download.waterinfo.be/tsmdownload/KiWIS/KiWIS?datasource=1&type=queryServices&service=kisters&request=getTimeseriesValueLayer&timeseriesgroup_id=192929&metadata=true&md_returnfields=station_name,station_no,stationparameter_name&format=csv",
                  sep=";",dec=".",
                  colClasses = c("NULL", "character", "NULL", "numeric",  rep("NULL",2), "character", "NULL", "character") )
data <- data[data$stationparameter_name == "Bodemverzadiging(0-10cm)",c(1,2,3)]
data$timestamp <- as.Date(data$timestamp)
data$station_name <- gsub('.{2}$', '', data$station_name)
data <- data[data$timestamp > "2024-01-01",]
colnames(data) <- c("datum", "verzadiging", "locatie")
rownames(data) <- seq_len(nrow(data))
```

In de uiteindelijke dataframe vind je heel wat informatie, via `head(data)` vindt men bijvoorbeeld:

```
       datum verzadiging     locatie
1 2024-02-13        77.9 Vinderhoute
2 2024-02-12        90.4     Melsele
3 2024-02-13        40.0   Vosselaar
4 2024-02-13        79.1  Klemskerke
5 2024-02-13        63.0    Loenhout
6 2024-02-13       100.0   Poperinge
```

## Gevraagd

In deze en de volgende oefening onderzoeken we of *goede* films een langere speeltijd hebben. Voordat we dit doen, onderzoeken we eerst welke speeltijden er voorkomen.

- We zullen die speeltijden voorstellen in een histogram, waarvan het aantal staven gelijk is aan $$\mathsf{\sqrt{n}}$$. Bepaal een variabele `n` waar je het aantal films in opslaat.

- Bereken vervolgens het aantal staven in `aantal_staven`.

- Maak onderstaande histogram na. Zorg ervoor dat de titel, zowel op de assen als de hoofdtitel juist zijn. Kies zelf een kleurtje.

![Luchtkwaliteit in en rondom Gent.](media/plot.png "Luchtkwaliteit in en rondom Gent."){:data-caption="Luchtkwaliteit in en rondom Gent." .light-only width="480px"}

![Luchtkwaliteit in en rondom Gent.](media/plot_dark.png "Luchtkwaliteit in en rondom Gent."){:data-caption="Luchtkwaliteit in en rondom Gent." .dark-only width="480px"}