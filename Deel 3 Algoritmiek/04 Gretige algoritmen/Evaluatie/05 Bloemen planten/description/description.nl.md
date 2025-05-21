Je hebt een lang bloemenperk, waar sommige stukken beplant zijn, en andere niet. Er is maar één regel, er mogen **geen** bloemen net **naast elkaar** geplant worden.

![Foto door Wu Yi op Unsplash.](media/wu-yi.jpg "Foto door Wu Yi op Unsplash."){:data-caption="Foto door Wu Yi op Unsplash." width="35%"}

Gegeven een bloemenperk als een lijst met `0`  en `1`, waarbij `0` leeg betekent en `1` beplant, bepaal dan of een gegeven aantal bloemen geplant kan worden in dit bloemenperk.

## Gevraagd
Programmeer een functie `bloemenperk(lijst, aantal)` die gegeven zo'n lijst en een getal `aantal` bepaalt of het mogelijk is dat aantal bloemen in het perk te planten. De lijst is bevat plaats voor minstens 2 bloemen.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> bloemenperk([1, 0, 0, 0, 1], 1)
True
```

Het is inderdaad mogelijk om 1 bloem te planten, in het midden tussen de anderen, zodat er geen bloemen aangrenzend zijn.


```python
>>> bloemenperk([1, 0, 0, 0, 1], 2)
False
```

Hier lukt het niet om 2 bloemen te planten in het bloemenperk, zodat er geen 2 aangrenzend zijn.