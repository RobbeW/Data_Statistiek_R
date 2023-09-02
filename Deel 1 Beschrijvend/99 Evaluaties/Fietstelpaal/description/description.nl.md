Ongetwijfeld ben je al één van de vele telpalen voorbij gefietst in Gent. Langs de Visserij is er bijvoorbeeld zo'n telpaal, via het <a href="https://data.stad.gent/explore" target="_blank">Open Data Portaal</a> van de stad Gent kan men de <a href="https://data.stad.gent/explore/dataset/fietstelpaal-visserij-2023-gent/table/?sort=datum" target="_blank">gegevens</a> rechtstreeks opvragen.

![Een fietstelpaal in Gent.](media/fietstelpaal.jpg "Een fietstelpaal in Gent."){:data-caption="Een fietstelpaal in Gent." width="55%"}

## Data frame ophalen
Gebruik onderstaande code om de gegevens op te halen.

```R
# Gegevens ophalen van het Open Data portaal
data <- read.csv("https://data.stad.gent/api/explore/v2.1/catalog/datasets/fietstelpaal-visserij-2023-gent/exports/csv",
                 sep = ";", header = TRUE)
# Het onderstaande bepaalt de totalen per dag
data <- data.frame(aggregate(totaal ~ datum, data, sum),
                   tegenrichting = aggregate(tegenrichting ~ datum, data, sum)$tegenrichting,
                   hoofdrichting = aggregate(hoofdrichting ~ datum, data, sum)$hoofdrichting)
```

## Gegeven

Via `head(data)` een **voorsmaakje** opvragen resulteert in:

```
       datum totaal tegenrichting hoofdrichting
1 2023-01-01   2432          1397          1035
2 2023-01-02   2719          1295          1424
3 2023-01-03   4135          1952          2183
4 2023-01-04   3344          1591          1753
5 2023-01-05   4140          1994          2146
6 2023-01-06   4319          1973          2346
```

Er zijn met dus **vier vectoren** terug te vinden in de data frame `data`.

## Gevraagd

Er zijn evemenenten in de Gentse binnenstad waar veel bezoekers met de fiets naar toe komen, kan je dit in deze data opmerken?

- Zoek de dagen waarop er meer dan 8500 fieters de telpaal passeerden. Bepaal dus eerst een booleaanse vector en gebruik die om nadien uit `data$datum` te **selecteren**. Sla het resultaat op als `drukke_dagen`. 

- De kolom **hoofdrichting** telde het aantal fietsers richting de Gentse binnenstad, **tegenrichting** is met andere woorden richting het Keizerspark. Zijn er dagen waarop het verschil tussen hoofdrichting en tegenrichting minimaal 1000 bedroeg? Bepaal eerst een variabele `verschil` waar je dit verschil uitrekent en **selecteer** vervolgens uit `data$datum` de dagen waarop vooral richting binnenstad gefietst werd. Sla deze selectie op in de variabele `richting_binnenstad`.


