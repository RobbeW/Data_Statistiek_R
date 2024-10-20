Het illustere vermoeden van <a href="https://nl.wikipedia.org/wiki/Christian_Goldbach" target="_blank">Goldbach</a> luidt als volgt:

{: .callout.callout-success}
>#### Vermoeden van Goldbach
> Elk even getal groter dan 2 kan men schrijven als de som van twee priemgetallen.

Hoewel deze hypothese enorm eenvoudig klinkt is ze toch nog niet bewezen. Mogelijks is dit dus niet waar!

## Gevraagd
Schrijf een functie `goldbach()` (zonder argumenten) die voor alle even getallen kleiner dan 1 000 de verschillende priemgetallen bepaalt die samen het even getal opleveren. Zo geldt voor het getal 24 dat de koppels in deze lijst `[(5, 19), (7,17), (11,13)]` telkens het getal opleveren.

Gebruik in je programma de functie `is_priem()` die reeds werd geprogrammeerd.

#### Voorbeeld

```python
>>> goldbach()
{4 : [(2, 2)],
 6 : [(3, 3)],
 8 : [(3, 5)],
 10 : [(3, 7), (5, 5)],
 12 : [(5, 7)],
 14 : [(3, 11), (7, 7)],
 ...
} 
```