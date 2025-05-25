Stel dat je een aantal tassen meeneemt op een bergwandeling. Na een eindje heb je in de verschillende tassen een aantal stenen verzamelt. Een bevriende geoloog geeft je nu enkele extra stenen. Hoe kan je deze stenen verdelen over de tassen zodat een maximaal aantal tassen helemaal vol stenen zit?

![Foto door Jack Harbieh op Unsplash.](media/jack-harbieh.jpg "Foto door Jack Harbieh op Unsplash."){:data-caption="Foto door Jack Harbieh op Unsplash." width="40%"}


In deze situatie krijg je twee lijsten, de `capaciteit` van de tassen en het aantal `stenen` dat reeds in elke tas zit. Daarnaast krijg je ook het aantal `extra` stenen. Zoek het maximale aantal tassen dat je vol kan krijgen.

## Gevraagd

Programmeer een functie `maximale_tassen(capaciteit, stenen, extra)` die gegeven twee lijsten en één natuurlijk getal het maximale aantal tassen retourneert dat je volledig vol kan laden met stenen.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> maximale_tassen([2, 3, 4, 5], [1, 2, 4, 4], 2)
3
```
Plaats bijvoorbeeld:

- één steen in de eerste tas, deze zit dan vol geladen met 2 stenen;
- één steen in de tweede tas, deze zit dan vol geladen met 3 stenen;
- de derde tas is sowieso al volgeladen (met 4 stenen).



```python
>>> maximale_tassen([10, 2, 2], [2, 2, 0], 100)
3
```

Hier kan je 8 stenen in de eerste tas plaatsen en daarna 2 stenen in de laatste tas. Daarna zitten alle tassen vol en blijven er zelfs nog stenen over. (die niet allemaal gebruikt zijn.)