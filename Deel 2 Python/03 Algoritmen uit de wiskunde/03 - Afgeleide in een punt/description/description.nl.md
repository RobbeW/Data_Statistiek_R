## Opgave

Schrijf een functie `afgeleide(a, f, delta)` dat van een functie `f` de afgeleide in het punt met x-coördinaat `a` tot op **nauwkeurigheid** `delta` bepaalt. 

Je geeft de benaderende waarde telkens weer op het scherm, afgerond op **15 cijfers na de komma**. Uiteindelijk `return` je de laatste waarde. Indien het algoritme na 50 waarden nog **steeds** niet convergeert `return` je de tekst `Niet afleidbaar in dit punt`.

#### Voorbeeld 1

Stel bijvoorbeeld dat `f(x)` de volgende functie is:

```python
def f(x):
    return x**3 - 2
```

Het uitvoeren van `afgeleide(1, f, 0.01)` leidt tot:
```
In iteratie 1 is de benadering: 7.0
In iteratie 2 is de benadering: 4.75
In iteratie 3 is de benadering: 3.8125
In iteratie 4 is de benadering: 3.390625
In iteratie 5 is de benadering: 3.19140625
In iteratie 6 is de benadering: 3.0947265625
In iteratie 7 is de benadering: 3.047119140625
In iteratie 8 is de benadering: 3.02349853515625
In iteratie 9 is de benadering: 3.011734008789062
In iteratie 10 is de benadering: 3.005863189697266
```

De uiteindelijke `return` waarde bedraagt:
```
>>> afgeleide(1, f, 0.01)
3.000005722045898
```

#### Voorbeeld 2

Stel bijvoorbeeld dat `f(x)` de volgende functie is:

```python
def f(x):
    return x**(1/3)
```

Het uitvoeren van `afgeleide(0, f, 0.0001)` leidt tot:
```
In iteratie 1 is de benadering: 1.0
In iteratie 2 is de benadering: 1.5874010519682
In iteratie 3 is de benadering: 2.519842099789746
...
In iteratie 48 is de benadering: 2705659852.4202337
In iteratie 49 is de benadering: 4294967296.000003
In iteratie 50 is de benadering: 6817835603.839417
```

De uiteindelijke `return` waarde bedraagt:
```
>>> afgeleide(0, f, 0.0001)
Niet afleidbaar in dit punt
```

