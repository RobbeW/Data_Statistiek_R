In 2020 waren er 15 481 overlijdens aan ziekten aan hart- of vaatstelsel, het is na kanker de grootste doodsoorzaak in Vlaanderen. Een eenvoudige wijziging qua levensstijl en betere screening zou heel wat steftes kunnen vermijden.

![Een didactisch model van een hart.](media/jesse-orrico.jpg "Foto door Jesse Orrico op Unsplash."){:data-caption="Een didactisch model van een hart." width="45%"}

Een van de bepalende factoren is de gemiddelde bloeddruk MAP, deze wordt geschat via onderstaande formule:

$$
    
    \text{MAP} \approx \text{DBP} + \dfrac{1}{2}\left(\text{SBP} - \text{DBP} \right)
$$

Waarbij DBP de diastolische en SBP de systolische bloeddruk voorstellen.

## Gegeven

INLEIDING

Je kan de data inlezen via het volgende commando:

```R
# Een dataset met patiëntgegevens
data <- read.csv("https://raw.githubusercontent.com/caravanuden/cardio/master/cardio_train.csv",
                 sep = ";",
                 header = TRUE)
# Cleanup van de dataset
flag <- 100 < data$ap_hi & data$ap_hi < 210 & data$ap_lo >60 & data$ap_lo < 1
data <- data[flag, ]
```

Gebruik `head(data)` om een **voorsmaakje** van de gegevens te verkrijgen.

## Gevraagd

- Nog niet af + Dataset inleiden