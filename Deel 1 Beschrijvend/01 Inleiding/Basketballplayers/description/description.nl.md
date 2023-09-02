De programmeertaal R is **geoptimaliseerd** om met verschillende gegevens tegelijkertijd te werken. Hiervoor moeten we de gegevens opslaan binnen een **vector**. Hieronder zie je hoe een vector opgeslagen wordt in de variabele `lengte`.

```R
lengte <- c(waarde_1, waarde_2, ..., waarde_n)
```

Dit **lijkt** wat op een lijst die je kent vanuit Python, doch zijn er subtiele verschillen.

```python
lengte = [waarde_1, waarde_2, ..., waarde_n]
```

{: .callout.callout-warning}
>#### Opgelet!
>
> Net als in Python kan je de aparte elementen ophalen. Het **grote** verschil met Python (en veel andere programmeertalen) is dat de indexen in R **niet** vertrekken van 0, maar vanaf 1!
> 
> Het **eerste element** uit een vector `lengte` met lengte `n` selecteer je dus via `lengte[1]` en het **laatste element** via `lengte[n]`.

{: .callout.callout-info}
>#### Tip
>
> Waarom wordt `c` gebruikt en niet `v` van vector? 
> Dit komt omdat `c` staat voor **combine**. In R kan je gemakkelijk vectoren combineren, zo geldt er dat `c(c(1, 2), 3)` gelijk is aan `c(1, 2, 3)`. 

## Gegeven

De lengtes van de Belgische basketballspelers uit de <a href="https://www.basketballbelgium.be/nl/team/3x3-lions-3" target="_blank">3x3 Lions</a> en de <a href="https://www.basketballbelgium.be/nl/team/3x3-cats-3" target="_blank">3x3 Cats</a> staan in onderstaande tabel.

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

## Gevraagd
Maak een variabele genaamd `lengtes` aan en ken de gegevens uit de tabel hieraan toe.

Gebruik de **indexering** om de lengte van de 4e speler op te slaan in een variabele `lengte_speler4`.
