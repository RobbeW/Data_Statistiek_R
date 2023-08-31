De internationale keten van koffiehuizen <a href="https://nl.wikipedia.org/wiki/Starbucks" target="_blank">Starbucks</a> is aanwezig in minsten 76 landen. Men verkoopt er een zeer grote hoeveelheid aan koffiemixen en dranken op koffiebasis.

![De Starbucks keten](media/june-andrei-george.jpg "Foto door June Andrei George op Unsplash."){:data-caption="De Starbucks keten." width="45%"}

Bevatten de *suikerarme* of *suikerrijke* drankjes het meeste cafeïne?

## Gegeven

Deze <a href="https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-12-21/starbucks.csv" target="_blank">dataset</a> bevat van de verschillende drankjes het aantal calorien, het aantal gram suiker, de hoeveelheid cafeïne enz...

Je kan de data inlezen via het volgende commando:

```R
# Een dataset over Starbucks
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-12-21/starbucks.csv", header = TRUE)
```

Gebruik `head(data)` om een **voorsmaakje** van de gegevens te verkrijgen.

## Gevraagd

- Gebruik de vector `data$product_name` om het **aantal** verschillende drankjes te bepalen. Sla dit op in de variabele `aantal_drankjes`.

- Het **doel** is nu om de *suikerrijke* en *suikerarme* drankjes te **selecteren**. Maak met behulp van `data$sugar_g` een booleaanse vector `veel_suiker` aan, die aangeeft welke drankjes **meer dan 20 g** suiker bevatten.

- Selecteer nu uit `data$caffeine_mg` de drankjes met veel suiker. Sla dit op in de variabele `suikerrijke_dranken`.

- Bereken vervolgens het gemiddelde en de mediaan van deze dranken. Sla dit op in de respectievelijke variabelen `gemiddelde_suikerrijk` en `mediaan_suikerrijk`.

- Herhaal dit voor de *suikerarme* dranken met minder dan of exact 20 g suiker. Maak de booleaanse variabele `weinig_suiker`, daarna de vector `suikerarme_dranken` met de cafeïne waarden en bereken nadien analoog de variabelen `gemiddelde_suikerarm` en `mediaan_suikerarm`. 