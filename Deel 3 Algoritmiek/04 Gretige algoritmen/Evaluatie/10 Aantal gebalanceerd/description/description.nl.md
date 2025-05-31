We noemen een lijst gebalanceerd indien deze evenveel keer `"L"` als `"R"` bevat.

## Gevraagd

Programmeer nu een functie `maximale_gebalanceerd(lijst)` die gegeven een lijst met `"L"` en `"R"` op zoek gaat naar het **maximale aantal deellijsten** die ook gebalanceerd zijn. De deellijsten vormen een opsplitings van de oorspronkelijke lijst, mag de elementen dus niet van plaats veranderen.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> maximale_gebalanceerd(["R", "L", "R", "R", "L", "L", "R", "L", "R", "L"])
4
```

Je kan de lijst namelijk maximaal splitsen in 4 deellijsten, die telkens gebalanceerd zijn: `["R", "L"]`, `["R", "R", "L", "L"]`, `["R", "L"]` en `["R", "L"]`.


```python
>>> maximale_gebalanceerd(["R", "L", "R", "R", "R", "L", "L", "R", "L", "L"])
5
```

Je kan de lijst namelijk maximaal splitsen in 2 deellijsten, die telkens gebalanceerd zijn: `["R", "L"]` en `["R", "R", "R", "L", "L", "R", "L", "L"]`.

