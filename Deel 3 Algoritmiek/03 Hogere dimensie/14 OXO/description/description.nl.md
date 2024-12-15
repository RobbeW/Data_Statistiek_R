OXO is een spel dat door twee spelers gespeeld wordt in een 3 op 3 rooster. De regels zijn:

- De eerste speler plaatst steeds een `X`, terwijl de tweede speler een `O` plaatst 
- Spelers plaatsen om de beurt telkens een symbool in een leeg vak.
- De eerste speler die drie dezelfde telkens naast elkaar, onder elkaar of diagonaal kan plaatsen wint het spel. 
- Als er geen lege vakjes meer zijn, maar geen enkele speler is gewonnen, dan spreekt men over gelijkspel.


## Gevraagd
Schrijf een functie `oxo(rooster)` die gegeven een uiteindelijk oxo speelveld bepaalt wie de winnaar (of er gelijkspel) is.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> oxo([["X", " ", " "], 
         [" ", "X", " "],
         ["O", "O", "X"]])
Speler X wint.
```

```python
>>> oxo([["X", "X", "O"], 
         ["O", "O", "X"],
         ["X", "O", "X"]])
Gelijkspel.
```