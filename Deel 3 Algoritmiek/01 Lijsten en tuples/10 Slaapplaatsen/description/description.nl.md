Elke jongere die op zijn/haar/hun budget wil letten tijdens het reizen, maakt best gebruik van een jeugdherberg. Daar zijn meestal goedkope slaapzalen, waar je met medereizigers naast elkaar slaapt.

Het juiste bed kiezen kan het verschil maken tussen een goede nachtrust of nauwelijks een oog te kunnen sluiten. De afstand tot de dichtste medereiziger blijkt hiervoor cruciaal. Naast iemand slapen die snurkt is immers nefast voor je humeur.

![Foto door Buddy Photo op Unsplash.](media/buddy-photo.jpg "Foto door Buddy Photo op Unsplash."){:data-caption="Foto door Buddy Photo op Unsplash." width="40%"}

Als je in zo'n gezamelijke slaapzaal komt is het doel dus een bed te vinden dat de afstand tot de dichtste slaper maximaliseert. (aan beide kanten)

## Gevraagd
Schrijf een functie `slaapplaats(slaapplekken)` dat gegeven een lijst van slaapplekken het maximale aantal lege bedden bepaalt dat je kan hebben tussen een gekozen bed en de dichtste buur. De slaapplekken worden voorgesteld door `"X"` indien het bed bezet is, en `.` indien dit leeg is.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> slaapplaats([".", "X", ".", "X", "."])
0
```

```python
>>> slaapplaats([".", "X", ".", ".", ".", "X", "."])
1
```

```python
>>> slaapplaats([".", "X", ".", ".", ".", ".", "X"])
1
```

```python
>>> slaapplaats([".", ".", ".", "X"])
2
```

{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *Sleeping in hostels*, Universiteit van Valladolid (UVa). 
