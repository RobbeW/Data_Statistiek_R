Een moestuin werd ingezaaid/beplant volgens bepaalde regels. De tomaten 🍅 mogen niet naast de knoflook 🧄 geplant worden, of de wortels 🥕 moeten naast de brocolli 🥦 staan, enz...

Stel dat je twee moestuinen inspecteert, controleer dan of beide volgens dezelfde regels ingezaaid of beplant werden.

## Gevraagd
Schrijf een functie `moestuin(tuin1, tuin2)` die gegeven twee moestuinen controleert of deze aan dezelfde regels voldoen.


#### Voorbeeld

```python
>>> moestuin([["🍅", "🥕", "🥕", "🥦"],
              ["🍅", "🥕", "🥕", "🥦"],
              ["🍅", "🍅", "🥕", "🧄"],
              ["🍅", "🍅", "🥕", "🧄"]],
             [["🥦", "🥕", "🍅"],
              ["🥦", "🥕", "🍅"],
              ["🧄", "🥕", "🍅"]])
True
```
Bij beide moestuinen merk je immers op dat de wortels met alle andere groenten in aanraking komen, maar dat de tomaten **niet** aan de brocolli en knoflook grenzen.

