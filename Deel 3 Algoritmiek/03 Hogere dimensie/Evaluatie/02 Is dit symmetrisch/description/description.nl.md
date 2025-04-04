Een vierkante matrix is **symmetrisch** indien je deze kan spiegelen ten opzichte van de hoofdiagonaal. Onderstaande matrix is een voorbeeld van een symmetrische matrix.

![Een symmetrische matrix.](media/image.png "Een symmetrische matrix."){:data-caption="Een symmetrische matrix." .light-only height="100px"}

![Een symmetrische matrix.](media/image_dark.png "Een symmetrische matrix."){:data-caption="Een symmetrische matrix." .dark-only height="100px"}

## Gevraagd
Schrijf een functie `is_symmetrisch(matrix)` dat controleert of een gegeven matrix al dan niet symmetrisch is.

#### Voorbeelden

```python
>>> is_symmetrisch([[3, 0, 1], 
                    [0, 4, 5], 
                    [1, 5, 2]])
True
```

```python
>>> is_symmetrisch([[3, 9, 1], 
                    [0, 4, 5], 
                    [1, 7, 2]])
False
```