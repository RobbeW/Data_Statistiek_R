Je kan een matrix spiraalsgewijs doorlopen.

Hieronder zie je een voorbeeld van een 3 × 3 matrix:

$$
\begin{pmatrix}\sf 1 & \sf 2 & \sf 3\\ \sf 4 & \sf 5 & \sf 6\\ \sf 7 & \sf 8 & \sf 9\end{pmatrix}
$$

Dit levert in dit geval `[1, 2, 3, 6, 9, 8, 7, 4, 5]`

## Gevraagd
Schrijf een functie `spiraal(matrix)` die gegeven een vierkante matrix een rij retourneert waarbij de getallen spiraalgewijs doorlopen werden.

#### Voorbeeld

```python
>>> spiraal([[1, 2, 3], 
             [4, 5, 6],
             [7, 8, 9]])
[1, 2, 3, 6, 9, 8, 7, 4, 5]
```