In de gravure **Melencolia I** (1514) van <a href="https://nl.wikipedia.org/wiki/Albrecht_D%C3%BCrer" target="_blank">Albrecht Dürer</a> vindt men een <a href="https://nl.wikipedia.org/wiki/Magisch_vierkant" target="_blank">magisch vierkant</a> terug.

![Melencolia I (1514) - Albrecht Dürer.](media/Melancholia_I.jpeg "Melencolia I (1514) - Albrecht Dürer."){:data-caption=Melencolia I (1514) - Albrecht Dürer." widht="50%"}

Een magisch vierkant is opgebouwd uit getallen met de bijzondere eigenschap dat de som op elke rij, elke kolom en elke diagonaal hetzelfde is. Dit getal noemt men de **magische constante**.

## Gevraagd
Schrijf een functie `is_magisch(rooster)` die gegeven een vierkant rooster controleert of dit voldoet aan de voorwaarden van een magisch vierkant.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

Voor het vierkant uit de gravure van Dürer geldt:

```python
>>> is_magisch([[16,  3,  2, 13],
                [ 5, 10, 11,  8],
                [ 9,  6,  7, 12],
                [ 4, 15, 14,  1]])
True
```
De som op elke rij, elke kolom en elke diagonaal is steeds 34.

```python
>>> is_magisch([[8, 3, 4],
                [1, 5, 9],
                [6, 7, 2]])
True
```
De som op elke rij, elke kolom en elke diagonaal is steeds 15.

```python
>>> is_magisch([[8, 3, 4],
                [6, 5, 9],
                [1, 7, 2]])
False
```
De laatste rij heeft bijvoorbeeld een afwijkende som.