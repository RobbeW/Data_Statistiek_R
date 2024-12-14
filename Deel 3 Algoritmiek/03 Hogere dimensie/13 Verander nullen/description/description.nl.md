Verander de rijen en kolommen met nullen door allemaal nullen.


## Gevraagd
Schrijf een functie `nullen(matrix)` die gegeven een vierkante matrix een rij retourneert waarbij de getallen spiraalgewijs doorlopen werden.

#### Voorbeeld

```python
>>> nullen([[1, 2, 3], 
            [4, 0, 6],
            [7, 8, 9]])
[[1, 0, 3],
 [0, 0, 0],
 [7, 0, 9]]
```

```python
>>> nullen([[0, 2, 3, 0], 
            [5, 6, 7, 8],
            [9, 1, 2, 3]])
[[0, 0, 0, 0],
 [0, 6, 7, 0],
 [0, 1, 2, 0]]
```