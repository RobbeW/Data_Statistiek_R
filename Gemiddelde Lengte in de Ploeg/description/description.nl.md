## Gegeven

Nu je de gegevens hebt opgeslagen via een `vector` in de variabele `lengte`, is het tijd om verder te gaan en het `gemiddelde` (of de gemiddelde waarde) van deze lengtes te berekenen. Het gemiddelde is een centrale maatstaf die aangeeft waar het midden van een reeks gegevens ligt. In R kunnen we de mean functie gebruiken om het gemiddelde van een vector te berekenen.

## Invoer
In de vorige oefening maakten we reeds een variabele lengte aan om de gegevens in te bewaren. 
```
lengte <- c(188, 192, 185, 190, 187)
```

## Berekenen van het gemiddelde in R
Om het gemiddelde van de lengtes van de basketbalspelers te berekenen, gebruik je de volgende code:
```
gemiddelde_lengte <- mean(lengte)
```

Dit zal de gemiddelde waarde van alle lengtes in de lengte vector berekenen en opslaan in de `gemiddelde_lengte` variabele.

## Uitvoer
Net als eerder willen we het resultaat tonen aan de eindgebruiker. Dit doen we weer met de `print-functie`.
```
print(gemiddelde_lengte)
```

{: .callout.callout-info}
>## Gevraagd:
>* Bereken het gemiddelde van de lengtes die zijn opgeslagen in de lengte variabele.
>* Sla dit gemiddelde op in een nieuwe variabele genaamd gemiddelde_lengte.
>* Print de gemiddelde_lengte variabele naar het scherm met behulp van de print-functie.

