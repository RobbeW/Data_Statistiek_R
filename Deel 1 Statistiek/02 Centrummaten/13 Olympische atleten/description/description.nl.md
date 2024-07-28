Op de Olympische spelen bestaat de discipline <a href="https://nl.wikipedia.org/wiki/Atletiek" target="_blank">atletiek</a> uit verschillende onderdelen. Denk maar aan de 100 m of de 4 x 100 m estafette, maar ook sporten als hordelopen, hoogspringen, polsstokhoogspringen, verspringen, discuswerpen, kogelstoten enz. 

![De Olympische ringen.](media/bryan-turner.jpg "Foto door Bryan Turner op Unsplash."){:data-caption="De Olympische ringen." width="45%"}

Hoe zit het met de *verdeling* van <a href="https://www.gezondleven.be/themas/voeding/obesitas-en-overgewicht/body-mass-index-bmi" target="_blank">het BMI</a> van de Olympische atleten uit deze discipline?

## Gegeven

Importeer <a href="https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-07-27/olympics.csv" target="_blank">deze dataset</a> met behulp van de volgende code.

```R
# Een dataset met gegevens van Olympische atleten.
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-07-27/olympics.csv",
                 header = TRUE,
                 colClasses = c("NULL", rep("character", 2), rep("numeric", 3), "NULL", "character", "NULL",
                                "numeric", rep("character", 4), "NULL" ))
# Enkel de gegevens van de atleten worden geselecteer.
data <- data[data$sport == "Athletics" &
               !is.na(data$height) &
               !is.na(data$weight), ]
rownames(data) <- seq_len(nrow(data))
```

Via `head(data)` om een **voorsmaakje** van de gegevens te verkrijgen.

```
                                name sex age height weight noc year season      city     sport                                event
1               Timo Antero Aaltonen   M  31    189    130 FIN 2000 Summer    Sydney Athletics             Athletics Men's Shot Put
2                  Evald rma (rman-)   M  24    174     70 EST 1936 Summer    Berlin Athletics           Athletics Men's Pole Vault
3 Jamale (Djamel-) Aarrass (Ahrass-)   M  30    187     76 FRA 2012 Summer    London Athletics         Athletics Men's 1,500 metres
4               Erling Rudolf Aastad   M  22    177     74 NOR 1920 Summer Antwerpen Athletics Athletics Men's 4 x 100 metres Relay
5               Erling Rudolf Aastad   M  22    177     74 NOR 1920 Summer Antwerpen Athletics            Athletics Men's Long Jump
6               Erling Rudolf Aastad   M  26    177     74 NOR 1924 Summer     Paris Athletics            Athletics Men's Long Jump
```

## Gevraagd

- In deze dataset vind je de lengte en de massa van heel wat atleten. De lengte vind je terug in `data$height` en de massa in `data$weight`. Van **hoeveel atleten** staan er gegevens in de databank? Sla dit op in de variabele `aantal_atleten`.

- Maak een vector `bmi` aan waar je het BMI van de atleten bepaalt. Rond dit af op **2 cijfers na de komma**. Gebruik hiervoor de `round()` functie.

- Bereken het `gemiddelde_bmi`, hoeveel procent van de atleten heeft een bmi lager dan dit gemiddelde? Sla dit op in de variabele `percentage_lager_gemiddelde`. (Rond af op 2 cijfers)

- Bereken nu `mediaan_bmi`, hoeveel procent van de atleten heeft een bmi lager dan deze mediaan? Sla dit op in de variabele `percentage_lager_mediaan`. (Rond af op 2 cijfers)

{: .callout.callout-warning}
>#### Denkvragen
> - Hoe blijkt uit dit gemiddelde dat er atleten zijn met een *veel hoger* of *veel lager* BMI? Welke van de twee is het, hoger of lager?
> - De mediaan is per definitie het middelste getal uit de vrij gegevens, waarom is het antwoord op de laatste vraag dan toch geen 50%?