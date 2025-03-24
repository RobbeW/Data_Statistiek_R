## Gevraagd
Gebruik het idee van de vorige oefening om gegeven een matrix het pad met de kleinste som (via een gretig algoritme) in deze matrix aan te duiden via het symbool `'X'`. Maak hiervoor een functie `teken_kleinste_pad(matrix)`.

#### Voorbeeld

```python
>>> kleinste_pad([[ -3,  7, -3, -6, -5, -4, -10], 
                  [  2, 10,  5, -4,  9,  1,  -9], 
                  [-10,  3, -4,  0, -6,  6,   4], 
                  [-10, 10, -1, -7, -7, -5,  -7]])
[[ 'X',   7,  -3,  -6,  -5,  -4, -10], 
 [ 'X',  10,   5,  -4,   9,   1,  -9], 
 [ 'X',   3,  -4,   0,  -6,   6,   4], 
 [ 'X', 'X', 'X', 'X', 'X', 'X', 'X']]
```
