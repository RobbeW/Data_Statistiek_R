Je kreeg de opdracht om enkele dozen op een truck te laden. Gegeven het maximale aantal dozen dat de truck kan vervoeren, maximimaliseer dan het aantal items dat de truck kan meenemen.

![Een truck volladen.](media/truck.gif "Een truck volladen."){:data-caption="Een truck volladen." width="400px"}

Gegeven is een `lijst` met tupels van de vorm `(aantal_dozen, aantal_items)`. Dit stelt voor hoeveel items in elke doos zitten en hoeveel dozen er beschikbaar zijn. Bijvoorbeeld `(2, 5)` betekent dat er twee dozen beschikbaar zijn, met telkens vijf items per doos.

Deze `lijst` werd reeds gesorteerd volgens dalend aantal items en stijgend aantal beschikbare dozen.

## Gevraagd

Programmeer een functie `truck_laden(lijst, maximaal_aantal_dozen)` dat gegeven dergelijke lijst en een maximaal aantal dozen dat de truck kan vervoeren het maximale aantal items dat de truck kan vervoeren retourneert.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> truck_laden([(1, 3), (2, 2), (3, 1)], 4)
8
```

In dit geval kan je de ene doos met 3 items inladen, daarna twee dozen met telkens 2 items en tot slot nog één van de drie dozen met één item. In het totaal vervoer je dus `(1 * 3) + (2 * 2) + (1 * 1) = 8` items.

```python
>>> truck_laden([(5, 10), (3, 9), (4, 7), (2, 5)], 10)
91
```

Denk zelf na hoe je hier aan het maximale aantal van 91 komt.