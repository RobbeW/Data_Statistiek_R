De lessentabellen van een school vind je meestal terug op hun website. Het is logisch dat in specifieke richtingen verschillende vakken een ander aantal uren toebedeeld krijgen. Op die manier ontstaat een onderscheid in de verschillende richtingen.

Op onze school kan je de lessentabellen voorstellen met een dictionary, deze zou er als volgt uitzien:

```python
richtingen = {"6EMT": [("NED", 4), ("FRA", 4), ("NAT", 2), ("ENG", 4), ("DUI", 3), ("ECO", 4), ("WIS", 3), ("AAR", 1), ("GES", 2), ("GOD", 2), ("EST", 1), ("LO", 2)],
              "6EWI6": [("WIS", 6), ("NED", 4), ("ECO", 4), ("ENG", 2), ("FYS", 2), ("FRA", 3), ("BIO", 1), ("GOD", 2), ("LO", 2), ("AAR", 1), ("GES", 2), ("EST", 1)],
              "6EWI8": [("WIS", 8), ("FRA", 3), ("GOD", 2), ("GES", 2), ("ECO", 4), ("CHE", 1), ("NED", 4), ("LO", 2), ("ENG", 2), ("GOD", 2), ("BIO", 1), ("FYS", 2)],
              ...}
```

Alle richtingen werden voorgesteld met de naam van de klas als sleutel en een lijst met tupels als waarde. Deze tupels bevatten telkens de naam van het vak en het aantal uren dat deze vakken toebedeeld kregen.


Een eerste stap bij het aanmaken van de uurroosters is het in kaart brengen van het totale aantal uren per vak dat gegeven zal moeten worden. Dit aantal uur wordt vervolgens verdeeld over een aantal leerkrachten en daarna begint het effectieve puzzelwerk

## Gevraagd
Schrijf een functie `aantal_uur(richtingen)` dat gegeven een dictionary van bovenstaande vorm telt hoeveel uur van elk vak er gegeven wordt. Bestudeer grondig het onderstaande voorbeeld.

#### Voorbeelden

Voor bovenstaande dictionary `richtingen` verschijnt er:

```python
>>> aantal_uur(richtingen)
{'NED': 12, 
 'FRA': 10, 
 'NAT': 2, 
 'ENG': 8, 
 'DUI': 3, 
 'ECO': 12, 
 'WIS': 17, 
 'AAR': 2, 
 'GES': 6, 
 'GOD': 8, 
 'EST': 2, 
 'LO': 6, 
 'FYS': 4, 
 'BIO': 2, 
 'CHE': 1}
```
