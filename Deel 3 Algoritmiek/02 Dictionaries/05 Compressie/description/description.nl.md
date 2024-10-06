<a href="https://nl.wikipedia.org/wiki/Datacompressie" target="_blank">Compressie</a> is een techniek om digitale gegevens met minder bits op te slaan dan oorspronkelijk. 

Indien je een lijst hebt met veel indentieke waarden, dan kan deze soms met minder bits bewaard worden.

Beschouw bijvoorbeeld de volgende lijst:

```python
lijst = [0, 1, 0, 0, 0, 1, 2, 0, 0, 3, 1, 0, 0, 0]
```

Het is duidelijk dat deze lijst veel nullen bevat. Je zou deze lijst kunnen voorstellen door een *'standaardwaarde'* en een dictionary, bijvoorbeeld in een tupel.

```python
gecomprimeerde_lijst = (0, {1: 1, 5: 1, 6: 2, 9: 3, 10: 1})
```

In deze tupel zie je eerst de standaardwaarde `0`, en daarna een dictionary met als sleutels de posities waar iets anders staat dan de standaardwaarde met als waarde het getal dat er dan staat.


## Gevraagd
Schrijf een functie `comprimeer(lijst)` dat gegeven een lijst met getallen zo'n gecomprimeerde datastructuur bepaalt. Je retourneert dus een tupel met de standaardwaarde en een dictionary.

Bestudeerd grondig onderstaand voorbeeld:

#### Voorbeelden

```python
>>> comprimeer([0, 1, 0, 0, 0, 1, 2, 0, 0, 3, 1, 0, 0, 0])
(0, {1: 1, 5: 1, 6: 2, 9: 3, 10: 1})
```

```python
>>> comprimeer([1, -1, -1, -1, 2, 0, -1, -1, -1, -1, -1, -1])
(-1, {0: 1, 4: 2, 5: 0})
```