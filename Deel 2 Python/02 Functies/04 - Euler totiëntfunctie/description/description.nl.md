De <a href="https://nl.wikipedia.org/wiki/Indicator_(getaltheorie)" target="_blanc">Euler totiëntfunctie</a> is een belangrijke functie uit de getaltheorie.

{: .callout.callout-danger}
> #### Euler totiëntfunctie
> De totiënt $$\mathsf{\varphi(n)}$$ van een strikt positief natuurlijk getal $$\mathsf{n}$$ is het **aantal** positieve natuurlijke getallen kleiner dan $$\mathsf{n}$$ die onderling ondeelbaar zijn met $$\mathsf{n}$$.

## Opgave

Schrijf een functie `phi(getal)` dat de totiëntfunctie van het positieve natuurlijke getal bepaalt.

Vraag aan de gebruik vervolgens een strikt positief natuurlijk getal en bepaal de totiëntfunctie van dat getal.

#### Voorbeelden

Indien de gebruiker het getal `8` intikt.
```
Het totiënt van 8 is 4
```

De getallen die onderling ondeelbaar zijn met 8 zijn immers: 1, 3, 5 en 7. 


Indien de gebruiker het getal `15` intikt.
```
Het totiënt van 15 is 8
```

De getallen die onderling ondeelbaar zijn met 15 zijn immers: 1, 2, 4, 7, 8, 11, 13 en 14.

{: .callout.callout-info}
> #### Tip
> Getallen zijn onderling ondeelbaar indien hun grootste gemene deler 1 is. Gebruik dus de functie `ggd()` uit de vorige oefeningen.