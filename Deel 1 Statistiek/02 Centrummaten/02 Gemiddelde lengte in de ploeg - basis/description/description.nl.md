De lengtes van de spelers uit de <a href="https://www.basketballbelgium.be/nl/teams/3x3/" target="_blank">Belgische 3x3 basketbalploeg</a> in 2023 werden gegeven in onderstaande tabel.

| Naam speler | Geslacht | Lengte (in cm) |
|:---------------------:|:--:|:---:|
| Thibaut Vervoort      | M  | 198 |
| Bryan De Valck        | M  | 195 |
| Dennis Donkor         | M  | 193 |
| Casper Augustijnen    | M  | 202 |
| Laure Resimont        | F  | 185 |
| Becky Massey          | F  | 186 |
| Julie Vanloo          | F  | 172 |
| Ine Joris             | F  | 185 |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

Wat is de gemiddelde lengte van deze spelers?

In Python zou je dit als volgt berekenen:

```python
lengtes = [198, 195, 193, 202, 185, 186, 172, 185]
som = 0
for lengte in lengtes:
    som = som + lengte # of korter som += lengte
gemiddelde_lengte = som / len(lengtes)
```

In R kan dit analoog:

```R
lengtes <- c(198, 195, 193, 202, 185, 186, 172, 185)
som <- 0
for (lengte in lengtes) {
  som <- som + lengte
}
gemiddelde_lengte <- som / length(lengtes)
```

{: .callout.callout-warning}
>#### Opgelet!
>
> De syntax van de `for`-lus verschilt met die uit Python. Zeer belangrijk zijn de **haakje** `()` en de **accolades** `{}`. Bij R speelt indentatie geen rol, maar wordt de *scope* van de lus tussen accolades geplaatst.

## Gegeven
Gegeven zijn de lengtes van de mannelijke en vrouwelijke leden uit de Belgische 3x3 ploegen.

## Gevraagd:
Bereken nu gemiddelde lengte van de mannelijke en vrouwelijke ploeg. Sla de resultaten op in `gemiddelde_mannen` en `gemiddelde_vrouwen`.
