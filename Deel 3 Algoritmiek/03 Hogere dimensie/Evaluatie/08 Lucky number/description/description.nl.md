Gegeven een m × n matrix opgebouwd uit verschillende getallen, bepaal dan alle **gelukstgetallen** in deze matrix.

Een **geluksgetal** is een element van de matrix dat het kleinste element in zijn rij en het grootste in zijn kolom is.

## Gevraagd
Schrijf een functie `geluksgetal(matrix)` dat gegeven een matrix het eventuele geluksgetal retourneert. Als er een geluksgetal is, dan is dit immers uniek. (Waarom?)

Bestudeer zorgvuldig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> geluksgetal([[ 3,  7,  8], 
                 [ 9, 11, 13], 
                 [15, 16, 17]])
15
```
15 is immers het kleinste getal in zijn rij en het grootste getal in zijn kolom.

```python
>>> geluksgetal([[ 1, 10,  4,  2], 
                 [ 9,  3,  8,  7], 
                 [15, 16, 17, 12]])
12
```
12 is immers het kleinste getal in zijn rij en het grootste getal in zijn kolom.

```python
>>> geluksgetal([[8, 7], 
                 [2, 9]])
Geen geluksgetal
```
Noch 7, noch 2 voldoen immers aan de voorwaarden.