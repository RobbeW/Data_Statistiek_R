Gegeven een n × m matrix, draai deze over een hoek van 90° zodat je een m × n matrix bekomt.

$$
\begin{pmatrix}\sf 1 & \sf 2 & \sf 3\\ \sf 4 & \sf 5 & \sf 6\end{pmatrix} \qquad \Rightarrow \qquad \begin{pmatrix}\sf 4 & \sf 1 \\ \sf 5 & \sf 2 \\ \sf 6& \sf 3\end{pmatrix}
$$

## Gevraagd
Schrijf een functie `draai(matrix)` dat een matrix draait over een hoek van 90°.

Bestudeer grondig onderstaande voorbeelden:

#### Voorbeelden

```python
>>> draai([[1, 2, 3],
           [4, 5, 6]])
[[4, 1],
 [5, 2],
 [6, 3]]
```

```python
>>> draai([[1, 2, 3],
           [4, 5, 6],
           [7, 8, 9]])
[[7, 4, 1],
 [8, 5, 2],
 [9, 6, 3]]
```
