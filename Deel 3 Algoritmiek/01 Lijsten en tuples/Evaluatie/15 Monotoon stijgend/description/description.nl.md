Een rij noemt men monotoon indien deze ofwel monotoon stijgend of monotoon dalend is.

Men noemt een rij monotoon dalend indien elk volgend element **kleiner dan of gelijk aan** het vorige element is. Een lijst is monotoon stijgend indien elk volgend element **groter dan of gelijk aan** het vorige element is.

$$
\mathsf{1, \quad 2, \quad 2, \quad 3, \quad 4, \quad 4, \quad 4}
$$

is bijvoorbeeld monotoon, want deze is monotoon stijgend.

## Gevraagd
Schrijf een functie `is_monotoon(lijst)` dat gegeven een lijst met gehele getallen bepaalt of deze monotoon is. 

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> is_monotoon([1, 2, 2, 3, 4, 4, 4])
True
```

```python
>>> is_monotoon([6, 5, 4, 4])
True
```

```python
>>> is_monotoon([1, 1, 3, 2])
False
```

```python
>>> is_monotoon([3, 3, 3, 3, 3, 4])
True
```



