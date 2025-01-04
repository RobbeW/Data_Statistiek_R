OXO is een spel dat door twee spelers gespeeld wordt in een 3 op 3 rooster. De regels zijn:

- De eerste speler plaatst steeds een `X`, terwijl de tweede speler een `O` plaatst 
- Spelers plaatsen om de beurt telkens een symbool in een leeg vak.
- De eerste speler die drie dezelfde telkens naast elkaar, onder elkaar of diagonaal kan plaatsen wint het spel. 
- Het kan ook zijn dat er geen winnaar is.

![Deze robot denkt buiten de lijntjes.](media/tic-tac-toe-robot.gif "Deze robot denkt buiten de lijntjes."){:data-caption=Deze robot denkt buiten de lijntjes." .light-only height="35%"}

## Gevraagd
Schrijf een functie `oxo(rooster)` die gegeven een oxo speelveld bepaalt of er een winnaar is.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> oxo([["X", " ", " "], 
         [" ", "X", " "],
         ["O", "O", "X"]])
"Speler X wint."
```

```python
>>> oxo([["X", "X", "O"], 
         ["O", "O", "X"],
         ["X", "O", "X"]])
"Geen winnaar."
```