De *Enlightened Dairy Co.* is een melkveebedrijf met magische koeien. Elke morgen wandelt de landbouwer naar buiten en merkt hij dat het aantal koeien verdubbeld is. Met dubbel zoveel koeien kan hij dubbel zoveel melk afleveren. Hoewel dat een mooi vooruitzicht is, dwingt de overheid hem om op één weiland **maximaal C koeien** te houden. 

![Afbeelding gegenereerd met behulp van Dall-E.](media/dalle.jpg "Afbeelding gegenereerd met behulp van Dall-E."){:data-caption="Afbeelding gegenereerd met behulp van Dall-E." width="35%"}

De *Enlightened Dairy Co.* heeft een onbeperkt aantal weilanden tot zijn beschikking, waarvan de maximale capaciteit telkens C is. Op elk weiland, om middernacht, verdubbelt het aantal koeien. Om te voldoen aan de regels van de overheid controleert de landbouwer 's ochtens elk weiland en onderneemt telkens één van de volgende acties:

- indien het aantal koeien in de wei nog steeds voldoet aan de regels, dan gebeurt er niets
- indien het aantal koeien in de wei (voorgesteld door D) meer is dan de toegelaten capaciteit C, dan blijven $$\mathsf{\left \lceil \frac{d}{/2} \right \rceil}$$ op het veld, terwijl $$\mathsf{\left \lfloor \frac{d}{/2} \rfloor \ceil}$$ naar een nieuwe wei verhuizen. Hierbij stellen $$\lceil \quad\rceil$$ en $$\lfloor\quad \rfloor$$ de `math.ceil()` en `math.floor()` operatoren voor. (afronden naar boven en naar beneden)

Op een willekeurige dag kan de overheid langskomen voor een controle. Deze persoon wil op voorhand het aantal weilanden dat gecontroleerd moet worden weten. 

## Gevraagd
Schrijf een functie `koeien(C, weilanden, dagnummer)` dat gegeven de maximale capaciteit `C`, een **lijst** met weilanden en het aantal koeien op elk weiland en het dagnummer waarom de controleur langskomt.

Je functie moet het aantal weilanden dat gebruikt worden op het einde van het dagnummer retourneren.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> koeien(1, [1, 1, 1, 1, 1], 1)
10
```

```python
>>> koeien(1, [1, 1, 1, 1, 1], 3)
40
```

```python
>>> koeien(1, [1, 1, 1, 1, 1], 0)
5
```

```python
>>> koeien(2, [1, 2, 1, 2, 1], 1)
7
```

```python
>>> koeien(2, [1, 2, 1, 2, 1], 2)
14
```


{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op het probleem *Magical Cows*, Mount Allison Programming Showdown (2020). 
