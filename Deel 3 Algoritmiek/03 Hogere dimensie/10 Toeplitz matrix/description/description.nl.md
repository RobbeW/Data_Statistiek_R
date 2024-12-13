Een matrix is een Toeplitz-matrix indien elke diagonaal van linksboven naar rechtsonder uit identieke elementen bestaat.

Onderstaande matrix is bijvoorbeeld een Toeplitz-matrix.
$$
\mathsf{\begin{pmatrix}\sf 1 & \sf 2 & \sf 3 & \sf 4\\ \sf 5 & \sf 1 & \sf 2& \sf 3\\ \sf 9& \sf 5& \sf 1 & \sf 2\end{pmatrix}}
$$

De diagonalen zijn hier `[9]`, `[5, 5]`, `[1, 1, 1]`, `[2, 2, 2]`, `[3, 3]`, `[4]`.

## Gevraagd
Schrijf een functie `is_toeplitz(matrix)` die gegeven een matrix met gehele getallen onderzoekt of deze al dan niet Toeplitz is. Retourneer `True` indien dit het geval is, en `False` anders.

#### Voorbeeld

```python
>>> is_toeplitz([[1, 2, 3, 4], 
                 [5, 1, 2, 3],
                 [9, 5, 1, 2]])
True
```

```python
>>> is_toeplitz([[1, 2, 3, 4], 
                 [5, 1, 2, 3],
                 [9, 4, 1, 2]])
False
```

```python
>>> is_toeplitz([[3, 3, 3, 3], 
                 [3, 1, 3, 3],
                 [3, 3, 3, 3]])
False
```