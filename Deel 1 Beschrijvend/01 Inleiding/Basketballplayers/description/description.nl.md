De programmeertaal R is **geoptimaliseerd** om met verschillende gegevens tegelijkertijd te werken. Hiervoor moeten we de gegevens opslaan binnen een **vector**. Hieronder zie je hoe een vector opgeslagen wordt in de variabele `lengte`.

```R
lengte <- c(waarde_1, waarde_2, ..., waarde_n)
```

Dit **lijkt** wat op een lijst die je kent vanuit Python, doch zijn er subtiele verschilen.

```python
lengte = [waarde_1, waarde_2, ..., waarde_n]
```

{: .callout.callout-warning}
>#### Opgelet!
>
> Net als in Python kan je de aparte elementen ophalen. Het **grote** verschil met Python (en veel andere programmeertalen) is dat de indexen in R **niet** vertrekken van 0, maar vanaf 1!
> 
> Het **eerste element** uit een vector `lengte` met lengte `n` selecteer je dus via `lengte[1]` en het **laatste element** via `lengte[n]`.

## Gegeven

Je hebt gegevens gekregen over de lengte van spelers van een plaatselijk basketbalteam. Het is jouw taak om deze lengtes te analyseren met behulp van R.

| Naam speler | Lengte (in cm) |
|:--------:|:-------------:|
| John Smith | 188 |
| Alex Brown | 192 |
| Mia Turner | 185 |
| Lucas White | 190 |
| Zoe Davis | 187 |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gevraagd
Maak een variabele genaamd `lengte` aan en ken de gegevens uit de tabel hieraan toe.

Gebruik de **indexering** om de lengte van de 3e speler op te slaan in een variabele `lengte_speler3`.
