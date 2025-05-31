Gegeven een lijst met getallen, zoek dan naar het **minimaal aantal stappen** om alle getallen in de lijst tot 0 te verminderen.

In elke stap mag je een willekeurig getal kiezen, maar daarna moet je alle (niet 0) getallen in de lijst met dat gekozen getal verminderen.

## Gevraagd

Programmeer een functie `minimaal_naar_nul(lijst)` dat gegeven een lijst met getallen, het minimale aantal stappen dat de ganse lijst 0 maakt retourneert.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> minimaal_naar_nul([1, 5, 0, 3, 5])
3
```

- kies in de eerste stap voor `1` en verminder alle (niet 0) elementen met `1`, dan bekom je `[0, 4, 0, 2, 4]`;
- kies daarna voor `2`, zodat de lijst vermindert naar `[0, 2, 0, 0, 2]`;
- kies tot slot nogmaals voor `2`, zodat de lijst eindigt op `[0, 0, 0, 0, 0]`.

```python
>>> minimaal_naar_nul([0, 0])
0
```

Elk element is namelijk al gelijk aan `0`.