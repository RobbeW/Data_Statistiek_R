Bij het spelen van een computerspel over ruimtegevechten slaag je erin het verdedigingsplan van je tegenstander te bemachtigen.

![Afbeelding door robokoboto op Alpha Coders.](media/14919.gif "Afbeelding door robokoboto op Alpha Coders."){:data-caption="Afbeelding door robokoboto op Alpha Coders." width="400px"}

In de beginfase van het spel zijn alle ruimteschepen evenwaardig. Het doel van het spel is verschillende planetenstelsels te gaan veroveren. Als je meer ruimteschepen dan je tegenstander stuurt, dan is het planetenstelsel van jou. Stuur je er evenveel dan is er geen winnaar en stuur je er minder dan je tegenstander dan verlies het planetenstelsel.

## Gevraagd
Programmeer een functie `ruimte(schepen, plan)` die gegeven, `schepen`, het aantal ruimteschepen waarover je bezit en het verdedigingsplan, `plan`, van je tegenstander het **grootste aantal** planetenstelsel dat je kan winnen retourneert.

Het `plan` is een lijst met het aantal schepen dat je tegenstander bij elk planetenstelsel heeft.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> ruimte(6, [1, 2, 3])
2
```

Het eerste planetenstelsel wordt door één enkel schip verdedigd, het tweede planetenstelsel door 2 schepen en het laatste planetenstelsel door 3 schepen. Gezien jij over 6 ruimteschepen bezit kan je hier in het beste geval slechts twee planetenstelsels veroveren.

```python
>>> ruimte(8, [7, 0, 3, 5, 2])
3
```

Met de beste strategie kan je hier drie planetenstelsels veroveren.


{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op *Planetaris*, Lokakeppni TÖL607G HÍ 2019 
