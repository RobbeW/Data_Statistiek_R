Er is een dorpje in Bangladesh waar een bepaald spel populair is. Dit spel wordt gespeeld in teams, gevormd uit een oneven aantal spelers. De spelers moeten minstens 11 en hoogstens 20 jaar oud zijn en binnen een team heeft elke speler een andere leeftijd.

Elk team heeft een leider. Indien de leden van een team met de leider willen spreken dan moeten ze een aantal seconden wachten, hoe groter het leeftijdsverschil, hoe meer seconden ze moeten wachten. Vandaar men als leider de persoon kiest zodat er **evenveel spelers** jonger zijn als er ouder zijn dan de leider.

Als je alle leeftijden van de spelers van het team kent, bepaal dan de leeftijd van de leider.

## Gevraagd

Schrijf een functie `leider(leeftijden)` die gegeven een lijst met een oneven aantal leeftijden, de leeftijd van de leider bepaalt. De leeftijden in de lijst werden reeds gesorteerd. Soms staan de leeftijden van laag naar hoog gesorteerd, soms van hoog naar laag. 

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> leider([19, 17, 16, 14, 12])
16
```
Er zijn immers telkens twee spelers met een leeftijd groter en lager dan de leider.

```python
>>> leider([13, 14, 15, 17, 19])
15
```

{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *Brick Game*, Universiteit van Valladolid (UVa). 
