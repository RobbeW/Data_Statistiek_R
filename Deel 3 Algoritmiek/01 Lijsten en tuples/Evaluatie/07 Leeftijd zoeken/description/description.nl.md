Er is een dorpje in Bangladesh waar een bepaald spel populair is. Elk team bestaat uit een oneven aantal spelers, meer dan 1 en minder dan 10. De spelers moeten minstens 11 en hoogstens 20 jaar oud zijn en geen twee spelers binnen eenzelfde mogen dezelfde leeftijd hebben.

Elk team heeft een leider. Indien de leden van een team met de leider willen spreken dan moeten ze een aantal seconden wachten, hoe groter het leeftijdsverschil, hoe meer seconden ze moeten wachten. Vandaar men als leider de persoon kiest zodat er **evenveel spelers** jonger zijn als er ouder zijn dan de leider.

Als je alle leeftijden van de spelers van het team kent, bepaal dan de leeftijd van de leider.

## Gevraagd

Schrijf een functie `leider(leeftijden)` die gegeven een lijst met een oneven aantal leeftijden de leeftijd van de leider bepaalt. De leeftijden in de lijst werden reeds gesorteerd. Soms staan de leeftijden van laag naar hoog gesorteerd, soms van hoog naar laag. De functie retourneert de leeftijd van de leider.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> leider([19, 17, 16, 14, 12])
16
```

```python
>>> leider([13, 14, 16, 17, 19])
16
```

{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *Brick Game*, Universiteit van Valladolid (UVa). 
