Gegeven een bepaalde lijst, zoek dan de kleinste deellijst zodat de som van de elementen in die deellijst **strikt groter** is dan de som van alle andere elementen uit de oorspronkelijke lijst.

Zorg ervoor dat de deellijst een zo groot mogelijke som bevat en rangschik je uitvoer van groot naar klein.

## Gevraagd

Programmeer een functie `kleinste_grote_deel(lijst)` die de kleinste deellijst retourneert, waarbij de som **strikt groter** is dan de som van de andere elementen.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> kleinste_grote_deel([4, 3, 10, 9, 8])
[10, 9]
```

De som van de andere elementen is dan immers `4 + 3 + 8 = 15`. Ook `[10, 8]` is een deellijst waarbij de som groter is dan de som van alle andere elementen, maar de som van de deellijst `[10, 9]` is groter.


```python
>>> kleinste_grote_deel([4, 4, 7, 6, 7])
[7, 7, 6]
```

De deellijst `[7, 7]` heeft als som 14, maar dat is niet **strikt groter** dan de som van de resterende elementen.