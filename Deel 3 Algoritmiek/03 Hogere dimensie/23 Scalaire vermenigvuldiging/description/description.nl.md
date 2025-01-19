De <a href="https://nl.wikipedia.org/wiki/Matrix_(wiskunde)#Scalaire_vermenigvuldiging" target="_blank">scalaire vermenigvuldiging</a> van een matrix A en een scalair k wordt elementsgewijs gedefinieërd.

Er geldt bijvoorbeeld:

$$
\sf 2\cdot \begin{pmatrix}
\sf 1 & \sf 0 & \sf -3\\
\sf 4 & \sf -2 & \sf 5
\end{pmatrix} = \begin{pmatrix}
\sf 2 & \sf 0 & \sf -6\\
\sf 8 & \sf -4 & \sf 10
\end{pmatrix}$$

## Gevraagd
Schrijf een functie `scalair_product(matrix, k)` die een matrix gaat vermenigvuldigen met het getal `k`.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> scalair_product([[1, 0, -3],
                     [4, -2, 5]], 2)
[[2,  0, -6],
 [8, -4, 10]]
```


```python
>>> scalair_product([[1, 2, 3],
                     [4, 5, 6],
                     [7, 8, 9]], 0)
[[0, 0, 0],
 [0, 0, 0],
 [0, 0, 0]]
```
