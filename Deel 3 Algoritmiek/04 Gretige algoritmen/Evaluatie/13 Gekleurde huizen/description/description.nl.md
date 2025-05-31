Er staan een aantal huizen naast elkaar en elk huis is mooi geschilderd. Er wordt gevraagd naar de maximale afstand tussen twee huizen van een verschillende kleur.

![Foto door Christian Holzinger op Unsplash.](media/christian-holzinger.jpg "Foto door Christian Holzinger op Unsplash."){:data-caption="Foto door Christian Holzinger op Unsplash." width="35%"}

De kleuren van `n` huizen worden weergegeven met behulp van een natuurlijk getallen in een lijst.

## Gevraagd

Programmeer een functie `maximale_afstand(huizen)` dat gegeven zo'n lijst met de kleuren van de verschillende huizen, de maximale afstand tussen twee huizen met een verschillende kleur bepaalt.

Er zijn altijd **minstens** twee verschillende kleuren aanwezig.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeeld 1

```python
>>> maximale_afstand([1, 1, 1, 7, 1, 1, 1])
3
```

![Een lijst met 7 huizen.](media/image1.png "Een lijst met 7 huizen."){:data-caption="Een lijst met 7 huizen." .light-only height="45px"}

![Een lijst met 7 huizen.](media/image1_dark.png "Een lijst met 7 huizen."){:data-caption="Een lijst met 7 huizen." .dark-only height="45px"}

Bovenstaande lijst kan je beschouwen als een lijst met zeven huizen waarvan de middelste een andere kleur heeft. De afstand tussen het eerste huis, met index `0`, en het huis op index `3` bedraagt 3. Je zou ook de afstand tussen het laatste huis, met index `6` en het middelste huis, met index `3` kunnen beschouwen.


### Voorbeeld 2

```python
>>> maximale_afstand([4, 1, 7, 1, 7])
4
```

![Een lijst met 5 huizen.](media/image2.png "Een lijst met 5 huizen."){:data-caption="Een lijst met 5 huizen." .light-only height="45px"}

![Een lijst met 5 huizen.](media/image2_dark.png "Een lijst met 5 huizen."){:data-caption="Een lijst met 5 huizen." .dark-only height="45px"}

Het huis op index `0` en het huis op index `4` zijn van een verschillende kleur en de afstand tussen deze bedraagt 4.

