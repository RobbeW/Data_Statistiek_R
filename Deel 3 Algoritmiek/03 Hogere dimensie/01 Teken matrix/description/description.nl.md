Lijsten laten zich gemakkelijk combineren tot hogere dimensies. Beschouw bijvoorbeeld de volgende lijst:

```python
matrix = [[1, 2], [3, 4]]
```

Dit is een lijst die bestaat uit twee andere lijsten, namelijk `[1, 2]` en `[3, 4]`, vaak wordt deze op een andere manier genoteerd.

```python
matrix = [[1, 2], 
          [3, 4]]
```
In deze weergave zie je meteen dat dit deze matrix is:

$$
    \begin{pmatrix}
    \sf 1 & \sf 2\\
    \sf 3 & \sf 4
    \end{pmatrix}
$$

## Gevraagd
Schrijf een functie `print_matrix(matrix)` die gegeven een tweedimensionale lijst met enkel cijfers van 0 tot en met 9 een betere weergave afdrukt. Je functie zal dus niets te `return`'en.

#### Voorbeeld

```python
>>> print_matrix([[6, 2, 0], [2, 3, 3], [8, 6, 7], [2, 8, 9], [7, 0, 5]])
6 2 0
2 3 3 
8 6 7
2 8 9
7 0 5
```

{: .callout.callout-info}
>#### Tip
> Concateneer elk element tot een volledige regel en print die daarna af. De eerste regel van het voorbeeld komt bijvoorbeeld overeen met `str(6) + " " + str(2) + " " + str(0) + " "`.
