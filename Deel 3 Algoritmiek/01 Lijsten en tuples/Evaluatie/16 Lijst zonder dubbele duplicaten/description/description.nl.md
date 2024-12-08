Gegeven een lijst van gehele getallen, maak een nieuwe lijst aan die opeenvolgende duplicaten mag bevatten, maar **niet meer** dan twee naast elkaar. De volgorde van de getallen moet wel bewaard blijven.

## Gevraagd
Schrijf een functie `zonder_duplicaten(lijst)` dat gegeven een lijst met gehele getallen een nieuwe lijst maakt, waar er **niet meer** dan twee identieke elementen naast elkaar staan.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> zonder_duplicaten([1, 2, 2, 3, 4, 4, 4])
[1, 2, 2, 3, 4, 4]
```

```python
>>> zonder_duplicaten([3, 3, 3, 3, 3, 4])
[3, 3, 4]
```

```python
>>> zonder_duplicaten([1, 4, 4, 4, 5, 4, 4, 4, 3, 3, 3, 3])
[1, 4, 4, 5, 4, 4, 3, 3]
```



