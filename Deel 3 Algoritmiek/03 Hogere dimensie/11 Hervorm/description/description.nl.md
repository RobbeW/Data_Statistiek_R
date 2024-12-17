Een hervormde matrix bevat dezelfde elementen als de de oorspronkelijke matrix, maar de dimensies van de nieuwe matrix zijn anders.

Hieronder zie je een voorbeeld van een 2 × 2 matrix die hervormd werd naar een 1 × 4 matrix:

$$
\begin{pmatrix}\sf 1 & \sf 2 \\ \sf 3 & \sf 4\end{pmatrix} \qquad \Rightarrow \qquad \begin{pmatrix}\sf 1 & \sf 2 & \sf 3 & \sf 4\end{pmatrix}
$$

## Gevraagd
Schrijf een functie `hervorm(matrix, R, K)` die gegeven een matrix met gehele getallen deze hervormt naar een matrix met dimensies `R` × `K`.

Bestudeer nauwkeurig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> hervorm([[1, 2],
             [3, 4]], 1, 4)
[[1, 2, 3, 4]]
```

```python
>>> hervorm([[1, 2, 3, 4]], 2, 2)
[[1, 2],
 [3, 4]]
```

```python
>>> hervorm([[1, 2],
             [3, 4]], 2, 2)
[[1, 2],
 [3, 4]]
```