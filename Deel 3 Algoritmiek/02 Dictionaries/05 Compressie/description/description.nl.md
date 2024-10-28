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
Schrijf eerst een functie `modus(lijst)` die gegeven een lijst van getallen het getal dat het meest voorkomt retourneert. Je mag er in deze oefening van uitgaan dat er steeds één getal is dat het meeste voorkomt.

Schrijf daarna de functie `comprimeer(lijst)` die gegeven een lijst met getallen zo'n gecomprimeerde datastructuur bepaalt. Je retourneert dus een **tupel** met de standaardwaarde en een dictionary.

Bestudeerd grondig onderstaand voorbeeld:

#### Voorbeelden

```python
>>> comprimeer([0, 1, 0, 0, 0, 1, 2, 0, 0, 3, 1, 0, 0, 0])
(0, {1: 1, 5: 1, 6: 2, 9: 3, 10: 1})
```

Immers het getal `0` komt het meeste voor. Daarnaast staat op index 1 het getal `1`, op index 5 staat het getal `1`, op index 6 staat het getal `2`, op index 9 staat het getal `3` en op index 10 staat het getal `1`.

```python
>>> comprimeer([1, -1, -1, -1, 2, 0, -1, -1, -1, -1, -1, -1])
(-1, {0: 1, 4: 2, 5: 0})
```

Het getal `-1` komt immers het meeste voor. Op index 0 staat het getal `1`, op index 4 staat het getal `2` en op index 5 staat het getal `0`.