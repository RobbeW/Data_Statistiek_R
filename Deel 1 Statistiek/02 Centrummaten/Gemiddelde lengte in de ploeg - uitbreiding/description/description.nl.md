In de vorige oefening heb je de **som van de lengtes** bepaald met behulp van een `for`-lus.

```R
lengtes <- c(198, 195, 193, 202, 185, 186, 172, 185)
som <- 0
for (lengte in lengtes){
  som <- som + lengte
}
gemiddelde_lengte <- som / length(lengtes)
```

Sommen zijn echter van dermate **groot belang** in de statistiek dat dit eenvoudiger kan met behulp van de `sum()` functie.

```R
lengtes <- c(198, 195, 193, 202, 185, 186, 172, 185)
gemiddelde_lengte <- sum(lengtes) / length(lengtes)
# sum() is best handig!
```

## Gegeven
Herneem je oplossing van de vorige oefening.

## Gevraagd:
Vereenvoudig deze met behulp van de `sum()` functie. Je hebt **geen** aparte variabele `som` meer nodig! 
Sla de resultaten opnieuw in `gemiddelde_mannen` en `gemiddelde_vrouwen`.
