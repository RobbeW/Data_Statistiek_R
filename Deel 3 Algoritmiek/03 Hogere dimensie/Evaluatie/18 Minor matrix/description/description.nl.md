Door bij een matrix een rij en een kolom te verwijderen bekomt men een **minor matrix**.

Stel bijvoorbeeld dat:

$$
\sf A = \begin{pmatrix}
\sf 1 & \sf 2 & \sf 3 & \sf 4\\
\sf 5 & \sf 6 & \sf 7 & \sf 8\\
\sf 9 & \sf 10 & \sf 11 & \sf 12
\end{pmatrix} 
$$

Dan is de minor matrix $$\mathsf{A_{1,2}}$$ waarbij de eerste rij en twee kolom verwijderd worden, de volgende:

$$
\sf A_{1,2} = \begin{pmatrix}
\sf 5 & \sf 7 & \sf 8\\
\sf 9 & \sf 11 & \sf 12
\end{pmatrix} 
$$

## Gevraagd

Schrijf een functie `minor_matrix(matrix, rij, kolom)` die de minor matrix bepaalt na het verwijderen van de rij met nummer `rij` en de kolom met nummer `kolom`.

#### Voorbeeld

```python
>>> minor_matrix([[1,  2,  3,  4],
                  [5,  6,  7,  8],
                  [9, 10, 11, 12]], 1, 2)
[[5,  7,  8],
 [9, 11, 12]]
```
