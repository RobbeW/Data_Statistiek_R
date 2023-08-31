Op de Olympische spelen bestaat het onderdeel <a href="https://nl.wikipedia.org/wiki/Atletiek" target="_blank">atletik</a> uit verschillende onderdelen. Denk maar aan de 100 m of de 4 x 100 m estafette, maar ook sporten als hordelopen, hoogspringen, polsstokhoogspringen, verspringen, discuswerpen, kogelstoten enz. 

![De Olympische ringen.](media/bryan-turner.jpg "Foto door Bryan Turner op Unsplash."){:data-caption="De Olympische ringen." width="45%"}

Hoe zit het met de *verdeling* van het BMI van de Olympische atleten uit deze discipline.

## Gegeven

Importeer <a href="https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-07-27/olympics.csv" target="_blank">deze dataset</a> met behulp van de volgende code.

```R
# Een dataset met gegevens van Olympische atleten.
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv",
                 header = TRUE)
# Enkel de gegevens van de atleten worden geselecteer.
data <- data[data$sport == "Athletics" &
               !is.na(data$height) &
               !is.na(data$weight), ]
```

Gebruik `head(data)` om een **voorsmaakje** van de gegevens te verkrijgen.

## Gevraagd

- In deze dataset vind je de lengte en de massa van heel wat atleten. De lengte vind je terug in `data$height` en de massa in `data$weight`. Van **hoeveel atleten** staan er gegevens in de databank? Sla dit op in de variabele `aantal_atleten`.

- Maak een vector `bmi` aan waar je het BMI van de atleten bepaalt.

- Bereken de mediaan en het gemiddelde BMI, sla deze gegevens op in `mediaan_bmi` en `gemiddelde_bmi`. Je merkt een relatief groot verschil tussen deze BMI's, kan je dit verklaren?