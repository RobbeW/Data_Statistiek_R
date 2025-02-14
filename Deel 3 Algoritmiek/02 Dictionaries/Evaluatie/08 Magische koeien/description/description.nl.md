De *Enlightened Dairy Co.* is een melkveebedrijf met magische koeien. Elke morgen wandelt de landbouwer naar buiten en merkt hij dat het aantal koeien verdubbeld is. Met dubbel zoveel koeien kan hij dubbel zoveel melk afleveren. Hoewel dat een mooi vooruitzicht is, dwingt de overheid hem om op één weiland **maximaal C koeien** te houden, wat voor een behoorlijke administratie zorgt.

![Afbeelding gegenereerd met behulp van Dall-E.](media/dalle.jpg "Afbeelding gegenereerd met behulp van Dall-E."){:data-caption="Afbeelding gegenereerd met behulp van Dall-E." width="35%"}

De *Enlightened Dairy Co.* heeft een onbeperkt aantal weilanden tot zijn beschikking, waarvan de maximale capaciteit telkens C is. Op elk weiland, om middernacht, verdubbelt het aantal koeien. Om te voldoen aan de regels van de overheid controleert de landbouwer 's ochtens elk weiland en onderneemt telkens één van de volgende acties:

- indien het aantal koeien in de wei nog steeds voldoet aan de regels, dan gebeurt er niets;
- indien het aantal koeien in de wei (voorgesteld door D) meer is dan de toegelaten capaciteit C, dan blijft de helft op het veld, terwijl de andere helft naar een nieuwe wei verhuizen.

Op een willekeurige dag kan de overheid langskomen voor een controle. Deze persoon wil op voorhand weten hoeveel weilanden er gecontroleerd moeten worden, dat zal jouw programma berekenen.

## Gevraagd
Schrijf een functie `koeien(C, weilanden, dagnummer)` dat gegeven de maximale capaciteit `C`, een **lijst** met het aantal koeien op elk weiland `weilanden` en het `dagnummer` waarom de controleur langskomt.

Je functie moet het aantal weilanden dat gebruikt wordt op het einde van het dagnummer retourneren.

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

{: .callout.callout-info}
>#### Tip
> **Efficiëntie** is zeer belangrijk voor dit probleem, er werd namelijk een tijdslimiet ingesteld. Gebruik in deze oefening een dictionary om de gegevens op te slaan, denk zelf goed na hoe deze dictionary eruit kan zien...


{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op het probleem *Magical Cows*, Mount Allison Programming Showdown (2020). 
