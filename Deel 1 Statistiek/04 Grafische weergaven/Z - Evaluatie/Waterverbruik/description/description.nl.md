## Gegeven

De <a href="https://www.imdb.com/" target="_blank">Internet Movie Database</a> (IMDB) bevat van quasi alle films een veelheid aan informatie. Naast zelf punten kunnen toekennen aan een film, vind je er ook informatie over de speeltijd en hoeveel dollar de film heeft opgebracht.

![Een overzicht van video's uit 2014.](media/imdb.jpg "Een overzicht van video's uit 2014."){:data-caption="Een overzicht van video's uit 2014." width="40%"}

Je kan een hoeveelheid filmdata inladen via onderstaande code.

```R
# IMDB data inlezen
data <- read.csv2("https://raw.githubusercontent.com/LearnDataSci/articles/master/Python%20Pandas%20Tutorial%20A%20Complete%20Introduction%20for%20Beginners/IMDB-Movie-Data.csv",
                  sep=",",dec=".",
                  colClasses = c("NULL", "character", rep("NULL",4), "character", rep("numeric", 5)))
data <- na.omit(data)
colnames(data) <- c("title", "year", "runtime", "rating", "votes", "revenue_millions","metascore")
rownames(data) <- seq_len(nrow(data))
```

In de uiteindelijke dataframe vind je heel wat informatie, via `head(data)` bekomt men bijvoorbeeld als voorsmaakje:

```
                    title year runtime rating  votes revenue_millions metascore
1 Guardians of the Galaxy 2014     121    8.1 757074           333.13        76
2              Prometheus 2012     124    7.0 485820           126.46        65
3                   Split 2016     117    7.3 157606           138.12        62
4                    Sing 2016     108    7.2  60545           270.32        59
5           Suicide Squad 2016     123    6.2 393727           325.02        40
6          The Great Wall 2016     103    6.1  56036            45.13        42
```

Hierin merken we de titel `title`, het jaar van uitgave `year`, de speeltijd in minuten `runtime`, de score van het internetpubliek `rating`, het aantal stemmmen `votes`, de opbrengst in miljoen dollar `revenue_millions` en de beoordeling door een jury `metascore`.

## Gevraagd

In deze en de volgende oefening onderzoeken we of *goede* films een langere speeltijd hebben. Voordat we dit doen, onderzoeken we eerst welke speeltijden er voorkomen.

- We zullen die speeltijden voorstellen in een histogram, waarvan het aantal staven gelijk is aan $$\mathsf{\sqrt{n}}$$. Bepaal een variabele `n` waar je het aantal films in opslaat.

- Bereken vervolgens het aantal staven in `aantal_staven`.

- Maak onderstaande histogram na. Zorg ervoor dat de titel, zowel op de assen als de hoofdtitel juist zijn. Kies zelf een kleurtje.

![Luchtkwaliteit in en rondom Gent.](media/plot.png "Luchtkwaliteit in en rondom Gent."){:data-caption="Luchtkwaliteit in en rondom Gent." .light-only width="480px"}

![Luchtkwaliteit in en rondom Gent.](media/plot_dark.png "Luchtkwaliteit in en rondom Gent."){:data-caption="Luchtkwaliteit in en rondom Gent." .dark-only width="480px"}