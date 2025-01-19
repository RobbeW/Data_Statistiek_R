Bij het werken met afbeeldingen moet men frequent de afbeelding horizontaal (of verticaal) spiegelen. Hieronder zie je een voorbeeld toegepast op een vereenvoudigde vorm van de *Mona Lisa*.

![Horizontaal spiegelen toegepast op de Mona Lisa.](media/monalisa.png "Horizontaal spiegelen toegepast op de Mona Lisa."){:data-caption="Horizontaal spiegelen toegepast op de Mona Lisa." .light-only width="45%"}

![Horizontaal spiegelen toegepast op de Mona Lisa.](media/monalisa_dark.png "Horizontaal spiegelen toegepast op de Mona Lisa."){:data-caption="Horizontaal spiegelen toegepast op de Mona Lisa." .dark-only width="45%"}

En gezien een afbeelding eigenlijk gewoon een rooster met verschillende getallen is, kan men dit eenvoudig programmeren.

## Gevraagd
Schrijf een functie `spiegel_horizontaal(rooster)` die gegeven een rooster het horizontale spiegelbeeld bepaalt. 

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> spiegel_horizontaal([[1, 2, 3, 5, 6],
                         [4, 5, 6, 7, 8],
                         [7, 8, 9, 0, 1]])
[[6, 5, 3, 2, 1],
 [8, 7, 6, 5, 4],
 [1, 0, 9, 8, 7]]
```

```python
>>> spiegel_horizontaal([[1, 2, 3, 6],
                         [4, 5, 6, 8],
                         [7, 8, 9, 1]])
[[6, 3, 2, 1],
 [8, 6, 5, 4],
 [1, 9, 8, 7]]
```