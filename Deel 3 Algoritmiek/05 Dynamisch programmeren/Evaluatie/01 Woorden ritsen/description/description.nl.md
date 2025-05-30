Gegeven zijn twee aparte woorden en een doelwoord. Er wordt gevraagd naar het **aantal mogelijkheden** om het doelwoord te vormen door de aparte stukken uit de twee aparte woorden te ritsen.

Hieronder zie je hoe het woord `"ballast"` gevormd kan worden uit de woorden `"bas"` en `"llat"`.

![Woorden ritsen.](media/image.png "Woorden ritsen."){:data-caption="Woorden ritsen." .light-only height="160px"}

![Woorden ritsen.](media/image_dark.png "Woorden ritsen."){:data-caption="Woorden ritsen." .dark-only height="160px"}

Het is hierbij **niet toegestaan** om de volgorde van de letters in de aparte woorden te wijzigen.

Soms kan je het woord op verschillende manieren vormen. Zo kan je met de aparte tekens `"aanna"` en `"geam"` op twee verschillende manieren het woord `"aangenaam"` vormen.

![Woorden ritsen.](media/image_2.png "Woorden ritsen."){:data-caption="Woorden ritsen." .light-only height="160px"}

![Woorden ritsen.](media/image_2_dark.png "Woorden ritsen."){:data-caption="Woorden ritsen." .dark-only height="160px"}

## Gevraagd
Schrijf een functie `woorden_ritsen(woord1, woord2, doelwoord)` dat gegeven de twee oorspronkelijke woorden `woord1` en `woord2` het aantal mogelijkheden bepaalt om het `doelwoord` te kunnen vormen.

Je mag ervan uitgaan dat het `doelwoord` evenveel letters bevat als de som van het aantal letters in `woord1` en `woord2`.

#### Voorbeelden

```python
>>> woorden_ritsen("bas", "llat", "ballast")
1
```

```python
>>> woorden_ritsen("bsa", "llat", "ballast")
0
```

```python
>>> woorden_ritsen("aanna", "geam", "aangenaam")
2
```

