Een **vierkante** matrix heet *diagonaal dominant* indien de absolute waarde van elk diagonaal element groter is dan de som van alle absolute waarden van alle andere elementen in de rij.

Deze matrix is bijvoorbeeld diagonaal dominant

$$
\begin{pmatrix}
\sf -4 & \sf 2 & \sf 1\\
\sf 1 & \sf 6 & \sf 2\\
\sf 1 & \sf -2 & \sf 5
\end{pmatrix}
$$

want:
- ∣-4∣ > ∣2∣ + ∣1∣|
- ∣6∣ > ∣1∣ + ∣2∣
- ∣5∣ > ∣1∣ + ∣-2∣


## Gevraagd
Schrijf een functie `is_diagonaal_dominant(matrix)` die gegeven een vierkante matrix retourneert of deze al dan niet diagonaal dominant is.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> is_diagonaal_dominant([[-4,  2,  1],
                           [ 1,  6,  2],
                           [ 1, -2,  5]])
True
```


```python
>>> is_diagonaal_dominant([[  3, -2,  1],
                           [  1,  3,  2],
                           [ -1,  2,  4]])
False
```
Want het tweede diagonaal element 3 is niet groter dan de soms van de (absolute waarden van de) andere elementen uit die rij. 