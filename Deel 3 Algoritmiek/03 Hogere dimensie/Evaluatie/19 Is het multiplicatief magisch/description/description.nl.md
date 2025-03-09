Vergelijkbaar met de gewone magische vierkanten bestaan er ook **multiplicatieve magische vierkanten**. Hierbij is het product van de elementen op elke rij, elke kolom en elke diagonaal steeds aan elkaar gelijk.

$$
\begin{pmatrix}
\sf 128 & \sf 1 & \sf 32\\
\sf 4 & \sf 16 & \sf 64\\
\sf 8 & \sf 256 & \sf 2
\end{pmatrix}
$$

is zo'n multiplicatief magisch vierkant. Het magisch product is hier steeds 4096.

## Gevraagd
Schrijf een functie `is_magisch(rooster)` die gegeven een vierkant rooster controleert of dit voldoet aan de voorwaarden van een **multiplicatief magisch** vierkant.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> is_magisch([[ 1, 15, 24, 14],
                [12, 28,  3,  5],
                [21,  6, 10,  4],
                [20,  2,  7, 18]])
True
```
Het product is namelijk telkens 5040.

```python
>>> is_magisch([[128,   1,  32],
                [  4,  16,  64],
                [  8, 256,   2]])
True
```
De product op elke rij, elke kolom en elke diagonaal is steeds 4096.

```python
>>> is_magisch([[128,   1,  32],
                [  8, 256,   2],
                [  4,  16,  64]])
False
```
De hoofddiagonaal is hier bijvoorbeeld afwijkend.