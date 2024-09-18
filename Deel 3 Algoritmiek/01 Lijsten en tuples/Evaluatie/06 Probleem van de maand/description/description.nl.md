De eerste graad krijgt **maandelijks** enkele wiskundige problemen voorgeschoteld, de "problemen van de maand" die ze moeten proberen op te lossen. Maar kunnen de leerkrachten wel voldoende problemen opstellen?

Stel dat je een lijst krijgt met het aantal problemen dat elke maand werd opgesteld en een lijst met hoeveel problemen er elke maand nodig zijn, waren er dan genoeg problemen beschikbaar om de leerlingen elke maand van het juiste aantal oefeningen te voorzien?

Een voorbeeld. Stel dat er bij de aanvang van het jaar `5` problemen klaar waren en een lijst met het aantal problemen dat elke maand extra gemaakt werd zie je hieronder:
```python
[3, 0, 3, 5, 8, 2, 1, 0, 3, 5, 6, 9]
```

Het aantal problemen dat elke maand **nodig** zijn om de opdracht te kunnen verdelen, zijn de volgende
```python
[6, 3, 5, 4, 1, 0, 0, 0, 1, 1, 2, 2]
```

In dit geval waren er in de eerste maand `6` problemen nodig terwijl er 8 (5 + 3) beschikbaar waren. Dit lukt dus en er blijven 2 problemen over voor de volgende maand. Die maand zijn er `3` problemen nodig, terwijl er maar 2 beschikbaar zijn... De opdracht wordt dan **niet** uitgeschreven en beide problemen blijven over voor een volgende maand. In die volgende maand zijn er `5` problemen nodig en worden er 3 problemen aangemaakt. Doordat er nog 2 problemen resteerden kan men deze maand de opdracht uitschrijven. Enz...

## Gevraagd

Schrijf een functie `problemen(startaantal, gemaakt, nodig)` die gegeven een startaantal, een lijst met het aantal gemaakte problemen en een lijst met benodigde problemen een **nieuwe lijst** maakt dat voor elke maand de tekst `"lukt"` of `"lukt niet"` bevat. `"lukt"` indien het die maand mogelijk is om de opdracht uit te delen en `"lukt niet"` indien dit mislukt.

Bestudeer grondig onderstaand voorbeeld.

#### Voorbeeld

```python
>>> problemen(5, [3, 0, 3, 5, 8, 2, 1, 0, 3, 5, 6, 9], [6, 3, 5, 4, 1, 0, 0, 0, 1, 1, 2, 2])
['lukt', 'lukt niet', 'lukt', 'lukt', 'lukt', 'lukt', 'lukt', 'lukt', 'lukt', 'lukt', 'lukt', 'lukt']
```

{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *No Problem*, Universiteit van Valladolid (UVa). 
