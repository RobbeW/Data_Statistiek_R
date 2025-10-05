Ongetwijfeld ben je al één van de vele telpalen voorbij gefietst in Gent. Langs de Visserij is er bijvoorbeeld zo'n telpaal, via het <a href="https://data.stad.gent/explore" target="_blank">Open Data Portaal</a> van de stad Gent kan men de <a href="https://data.stad.gent/explore/dataset/fietstelpaal-visserij-2023-gent/table/?sort=datum" target="_blank">gegevens</a> rechtstreeks opvragen.

![Een fietstelpaal in Gent.](media/fietstelpaal.jpg "Een fietstelpaal in Gent."){:data-caption="Een fietstelpaal in Gent." width="55%"}

## Data frame ophalen
Gebruik onderstaande code om de gegevens op te halen.

```R
# Gegevens ophalen van GitHub: 
data <- read.csv(
  "https://raw.githubusercontent.com/RobbeW/Data_Statistiek_R/main/bronnen/fietstelpaal-visserij-2023-gent.csv",
  sep = ";", header = TRUE, stringsAsFactors = FALSE
)

# Totalen per dag berekenen
data <- data.frame(
  aggregate(totaal ~ datum, data, sum),
  tegenrichting = aggregate(tegenrichting ~ datum, data, sum)$tegenrichting,
  hoofdrichting = aggregate(hoofdrichting ~ datum, data, sum)$hoofdrichting
)
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

### A) Drukke dagen
* Bepaal eerst wat een drukke dag is. Gebruik een booleaanse vector. 
  ```
  is_druk <- data$totaal > 8500
  ```
* Gebruik die om nadien uit `data$datum` te **selecteren**. Zo behouden we enkel de drukke dagen. 
* Sla het resultaat op in variabelen `drukke_dagen`.
```
drukke_dagen <- data$datum[is_druk]
drukke_dagen
```

### Richting binnenstad
* De kolom **hoofdrichting** telde het aantal fietsers richting de Gentse binnenstad, **tegenrichting** is met andere woorden richting het Keizerspark. 
* Bepaal de dagen waarop **hoofdrichting minus tegenrichting ≥ 1000**. 
* Bepaal eerst een variabele `verschil` waar je dit verschil uitrekent:
```
verschil <- data$hoofdrichting - data$tegenrichting
```
* **Selecteer** vervolgens uit `data$datum` de dagen waarop vooral richting binnenstad gefietst werd. Geef deze dag(en) weer.
```
richting_binnenstad <- data$datum[...]
richting_binnenstad
```


{: .callout.callout-warning}
>#### Opgelet!
>
> Deze code uitvoeren kan een eindje in beslag nemen, de dataset is namelijk vrij groot.
