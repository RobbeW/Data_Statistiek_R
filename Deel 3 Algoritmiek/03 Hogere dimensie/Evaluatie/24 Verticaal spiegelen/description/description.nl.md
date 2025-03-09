Bij het werken met afbeeldingen moet men frequent een afbeelding verticaal spiegelen. Hieronder zie je een voorbeeld toegepast op een vereenvoudigde vorm van de *Mona Lisa*.

![Verticaal spiegelen toegepast op de Mona Lisa.](media/monalisa.png "Verticaal spiegelen toegepast op de Mona Lisa."){:data-caption="Verticaal spiegelen toegepast op de Mona Lisa." .light-only width="45%"}

![Verticaal spiegelen toegepast op de Mona Lisa.](media/monalisa_dark.png "Verticaal spiegelen toegepast op de Mona Lisa."){:data-caption="Verticaal spiegelen toegepast op de Mona Lisa." .dark-only width="45%"}

En gezien een afbeelding eigenlijk gewoon een rooster met verschillende getallen is, kan men dit eenvoudig programmeren.

## Gevraagd
Schrijf een functie `spiegel_verticaal(rooster)` die gegeven een rooster het verticale spiegelbeeld bepaalt. 

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> spiegel_verticaal([[1, 2, 3, 5, 6],
                       [4, 5, 6, 7, 8],
                       [7, 8, 9, 0, 1]])
[[7, 8, 9, 0, 1],
 [4, 5, 6, 7, 8],
 [1, 2, 3, 5, 6]]
```

```python
>>> spiegel_verticaal([[1, 2, 3, 6],
                       [4, 5, 6, 8],
                       [7, 8, 9, 1],
                       [2, 1, 5, 4]])
[[2, 1, 5, 4],
 [7, 8, 9, 1],
 [4, 5, 6, 8],
 [1, 2, 3, 6]]
```