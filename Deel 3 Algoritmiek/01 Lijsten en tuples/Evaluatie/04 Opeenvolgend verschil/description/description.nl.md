## Gevraagd

Schrijf een functie `opeenvolgend_verschil(lijst)` die gegeven een lijst een nieuw lijst aanmaakt met de opeenvolgende verschillen. 

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> opeenvolgend_verschil([1, 1, 3, 4, 4, 5, 6, 7])
[0, 2, 1, 0, 1, 1, 1]
```
Het verschil tussen `1` en `1` is immers `0`. Het volgende verschil tussen `3` en `1` is immers `2`, enz...


```python
>>> opeenvolgend_verschil([4, 5, 8, 9, 6, 10])
[1, 3, 1, -3, 4]
```
