In verschillende opleidingen van het hoger onderwijs kan je meestal enkele vakken kiezen.

Stel bijvoorbeeld dat een student talen als keuzevakken voor `"Spaans"` en `"Filosofie en Ethiek"` kiest, terwijl een andere student `"Spaans"` en `"Kunstgeschiedenis"` kiest. Dan werd het keuzevak `"Spaans"` twee keer gekozen.

De keuzes van de verschillende studenten kunnen als volgt in een dictionary opgeslagen worden:

```python
keuzes = {"Student 1": ["Spaans", "Filosofie en Ethiek"],
          "Student 2": ["Spaans", "Kunstgeschiedenis"]}
```

## Gevraagd
Schrijf een functie `aantal_studenten(keuzes)` dat gegeven een gelijkaardige dictionary het aantal studenten per keuzevak bepaalt.

Bestudeerd grondig onderstaand voorbeeld:

#### Voorbeeld

```python
>>> aantal_studenten({"Student 1": ["Spaans", "Filosofie en Ethiek"],
                      "Student 2": ["Spaans", "Kunstgeschiedenis"]})
{"Spaans": 2,
 "Filosofie en Ethiek": 1
 "Kunstgeschiedenis": 1}
```