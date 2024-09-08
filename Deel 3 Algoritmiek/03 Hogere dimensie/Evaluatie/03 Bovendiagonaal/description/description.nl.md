Een bovendriehoeksmatrix is een vierkante matrix waarbij alle elementen **onder** de hoofdiagonaal nul zijn. Hieronder vind je een voorbeeld van zo'n matrix.

$$
    \mathsf{\begin{pmatrix}\sf 1 & \sf 4 & \sf 2 \\ \sf 0 & \sf 3 & \sf 4 \\ \sf 0 & \sf 0 & \sf 1\end{pmatrix}}
$$

## Gevraagd
Schrijf een functie `is_bovendriehoek(matrix)` dat controleert of een gegeven matrix al dan niet een bovendriehoekmatrix is.

#### Voorbeelden

```python
>>> is_bovendriehoek([[1, 4, 2], 
                      [0, 3, 4], 
                      [0, 0, 1]])
True
```

```python
>>> is_bovendriehoek([[1, 0, 2], 
                      [0, 3, 4], 
                      [1, 0, 1]])
False
```