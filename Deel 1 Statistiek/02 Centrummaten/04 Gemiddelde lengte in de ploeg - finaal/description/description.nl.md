In de vorige oefening heb je de **som van de lengtes** bepaald met behulp van de `sum()` functie.

```R
lengtes <- c(198, 195, 193, 202, 185, 186, 172, 185)
gemiddelde_lengte <- sum(lengtes) / length(lengtes)
```

Rekenkundige gemiddeldes berekenen is echter zo belangrijk in de statistiek dat R hier een functie voor bezit, genaamd `mean()`.

```R
lengtes <- c(198, 195, 193, 202, 185, 186, 172, 185)
gemiddelde_lengte <- mean(lengtes)
# Superkort!
```

## Gegeven
Kopieer je oplossing van de vorige oefening.

## Gevraagd:
Vereenvoudig deze met behulp van de `mean()` functie. Sla de resultaten opnieuw in `gemiddelde_mannen` en `gemiddelde_vrouwen`.
