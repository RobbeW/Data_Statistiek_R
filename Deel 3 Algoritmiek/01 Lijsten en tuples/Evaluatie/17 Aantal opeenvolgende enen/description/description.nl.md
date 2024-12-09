Een binair getal is een opeenvolging van 0'en en 1'en.

Er wordt een binair getal gegeven waarvan het maximaal aantal opeenvolgende enen bepaald moet worden.

## Gevraagd
Schrijf een functie `zoek_max_aantal_enen(binair)` dat gegeven een binair getal (als een lijst) het maximale aantal **opeenvolgende** enen bepaalt.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> zoek_max_aantal_enen([0, 1, 1, 0, 0, 1])
2
```
Er is namelijk een groepje van twee opeenvolgende enen.


```python
>>> zoek_max_aantal_enen([1, 1, 0, 0, 1, 1, 1])
3
```
Er is immers een groepje van twee opeenvolgende enen en eentje van drie opeenvolgende enen.


```python
>>> zoek_max_aantal_enen([0, 0, 0, 0])
0
```
Er zijn geen enen!


