Je kan gemakkelijk zelf een dictionary aanmaken in Python:

```python
woordenboek = {}
woordenboek["python"] = 1
woordenboek["python"] = woordenboek["python"] + 1

print(woordenboek[appel])    # Dit zou de waarde 2 afdrukken
```

Indien je een sleutel gebruikt die niet bestaat, dan verschijnt een foutmelding. Bijvoorbeeld:
```python
woordenboek = {"python": 5}
woordenboek["javascript"] = woordenboek["javascript"] + 1
```
resulteert in `KeyError: 'javascript'`. Logisch want de sleutel `"javascript"` bestaat nog niet.

Je kan dit gemakkelijk vermijden met het kernwoord `in`.

```python
woordenboek = {"python": 5}
if "javascript" in woordenboek:
    woordenboek["javascript"] = woordenboek["javascript"] + 1
else:
    woordenboek["javascript"] = 1    # Dit maakt een nieuwe sleutel aan.
```

## Gevraagd
Aan studenten wordt gevraagd met welke programmeertalen ze reeds ervaring hebben. Deze informatie werd bewaard in een lijst. Maak een functie `programmeertalen(lijst)` die een dictionary retourneert waarin je terugvindt hoe vaak een programmeertaal voorkwam.

Bestudeer grondig het volgende voorbeeld:

#### Voorbeeld

```python
>>> programmeertalen(["python", "javascript", "python", "C", "java", "python", "javascript", "python"])
{"python": 4, "javascript": 2, "C": 1, "java": 1}
```