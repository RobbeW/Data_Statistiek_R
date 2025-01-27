## Gevraagd
Schrijf een functie `diagonalen(matrix)` die gegeven een **vierkante** `matrix` een **tupel** bepaalt **met twee lijsten**. De eerste lijst bevat alle elementen van de hoofddiagonaal (in volgorde), de tweede lijst bevat alle elementen van de nevendiagonaal (in volgorde).

Probeer dit uit te voeren met één enkele `for` lus.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> diagonalen([[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]])
([1, 5, 9], [7, 5, 3])
```

```python
>>> diagonalen([[1, 2],
                [3, 4]])
([1, 4], [3, 2])
```