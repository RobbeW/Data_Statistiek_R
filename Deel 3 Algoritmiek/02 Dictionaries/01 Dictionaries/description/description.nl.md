## Dictionaries

Tuples en lijsten zijn geordende data structuren, dit betekent dat je ze via een index kan benaderen. Er geldt bijvoorbeeld onderstaande lijst met weektemperaturen:

```python
temperaturen = [21.5, 20.5, 22.0, 18.6, 21.1, 22.3, 21.8]
print(temperaturen[2])      # Er verschijnt 22.0
```
Index `2` bepaalt het derde element uit deze lijst.

Maar wat indien je de verschillende dagen hieraan wil koppelen? Je zou lijsten en tuples kunnen combineren als volgt:
```python
temperaturen = [("ma", 21.5), 
                ("di", 20.5), 
                ("wo", 22.0),
                ("do", 18.6),
                ("vr", 21.1), 
                ("za", 22.3), 
                ("zo", 21.8)]
print(temperaturen[2])      # Er verschijnt ("wo", 22.0)
```
Op zich is dit overzichtelijker, maar nog steeds kan je niet in één keer de temperatuur van een willekeurige dag ophalen. De computer moet door de ganse lijst bewegen om het ene element dat je zoekt op te halen.

Dictionaries maken dit gemakkelijker, het vorige concept omvormen naar een dictionary of *woordenboek* doe je als volgt:


```python
temperaturen = {"ma": 21.5, "di": 20.5, "wo": 22.0, "do": 18.6, "vr": 21.1, "za": 22.3, "zo": 21.8}
print(temperaturen["wo"])   # Er verschijnt 22.0
```

Een dictionary is opgebouwd uit **keys** (sleutels) en **values** (waarden) onder vorm `<key>:<value>` (of `<sleutel>:<waarde>`). De key hoeft geen text te zijn, maar elke sleutel **moet uniek** zijn.


Je kan **niet** itereren over een dictionary met behulp van een index maar je dient met een `for` loop alle keys te overlopen. Bijvoorbeeld als volgt:

```python
temperaturen = {"ma": 21.5, "di": 20.5, "wo": 22.0, "do": 18.6, "vr": 21.1, "za": 22.3, "zo": 21.8}
for dag in temperaturen:
    print(temperaturen[dag])
```
Hierbij neemt de variabele `dag` achtereenvolgend de waarden `"ma"`, `"di"`, `"wo"`, `"do"`, `"vr"`, ... aan.


## Gevraagd
Schrijf een functie `temperatuur(dict)` die gegeven een dictionary van de vorm `<stad>:<temperatuur>` alle temperaturen in de verschillende steden afdrukt. Je hoeft niets te retourneren.

#### Voorbeeld

```python
>>> temperatuur({"Oslo": 13.0,
                 "London": 15.4,
                 "Madrid": 26.0})
De temperatuur in Oslo is 13.0 graden.
De temperatuur in London is 15.4 graden.
De temperatuur in Madrid is 26.0 graden.
```