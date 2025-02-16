## Gevraagd

Gegeven een lijst met een aantal natuurlijke getallen, zoek dan naar het minimale aantal toevoegingen dat uitgevoerd moet worden om de lijst **strikt stijgend** te maken. Een toevoeging betekent dat je het getal met één verhoogt. Strikt stijgend betekent dat elk volgend element groter is dan het vorige element. (en dus niet gelijk aan)

Schrijf een functie `minimale_toevoegingen(getallen)` die gegeven een lijst met getallen dit minimale aantal toevoegen retourneert.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> minimale_toevoegingen([1, 1, 1])
3
```
De lijst kan je eerst aanpassen naar `[1, 2, 1]`, daarna `[1, 2, 2]` en tot slot `[1, 2, 3]`. Er werden dus drie aanpassingen uitgevoerd.


```python
>>> minimale_toevoegingen([1, 5, 2, 4, 1])
14
```


```python
>>> minimale_toevoegingen([8])
0
```
De lijst is hier *triviaal* strikt stijgend...

{: .callout.callout-info}
>#### Tip
> Het algoritme is gretig omdat je slechts één getal ver hoeft te kijken...