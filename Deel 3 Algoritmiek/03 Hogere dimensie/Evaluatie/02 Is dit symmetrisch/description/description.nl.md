Een vierkante matrix is **symmetrisch** indien je deze kan spiegelen ten opzichte van de hoofdiagonaal. Onderstaande matrix is een voorbeeld van een symmetrische matrix.

$$
    \mathsf{\begin{pmatrix}\sf 3 & \sf 0 & \sf 1 \\ \sf 0 & \sf 4 & \sf 5 \\\sf 1 & \sf 5 & \sf 2\end{pmatrix}}
$$

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