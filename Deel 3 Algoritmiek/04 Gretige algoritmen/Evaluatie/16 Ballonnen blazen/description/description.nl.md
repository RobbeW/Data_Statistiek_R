Om een feestje interessanter te maken koopt men ballonnen van verschillende groottes. Indien er 6 ballonnen gekocht worden, hebben deze als grootte: 1, 2, 3, 4, 5 en 6 dℓ.

Om niet alle ballonnen zelf te moeten opblazen werden evenveel bussen met helium gas gekocht. Elke bus helium kan maar gebruikt worden om één ballon op te blazen en wordt volledig geleegd binnen die ene ballon. Het is namelijk niet mogelijk de kan over te zetten naar een nieuwe ballon.

De bussen met helium werden tweedehands aangekocht en bevatten nog verschillende resthoeveelheden helium. Sommige zijn zelfs leeg! Om het beste van deze situatie te maken moet je het slim aanpakken.

![Ballonnen vol helium...](media/balloon.gif "Ballonnen vol helium..."){:data-caption="Ballonnen vol helium..." width="400px"}

Je wil elke bus helium aan een ballon koppelen zodat de ballon die het minst opgeblazen is, toch zoveel als mogelijk gevuld is.

Indien een ballon boven de capaciteit gevuld word, dan ontploft deze. En ontploffingen leiden tot onnodige stress en moeten vermeden worden.

## Gevraagd

Programmeer een functie `ballon(kannen)` dat gegeven een lijst met de hoeveelheden helium gus in een aantal kannen op zoek gaat naar hoeveel de minst opgeblazen ballon gevuld is. Dit retourneer je als een kommagetal met 6 decimalen.

Is het niet mogelijk alle ballonnen op te blazen zonder een ontploffing, dan retourneer je `"knal!"`.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> ballon([6, 1, 3, 2, 2, 3])
0.6
```

In dit geval zijn er 6 kannen (en dus ook 6 ballonnen). Als je elke ballon zoveel mogelijk opblaast dan zal de minst opgeblazen ballon voor 60% of `0.6` gevuld zijn.


```python
>>> ballon([2, 2])
knal!
```

De ballon met capaciteit van 1 dℓ zal je moeten opvullen met een kan die 2 dℓ helium bevat. Dat zal leiden tot een luide `"knal!"`.


```python
>>> ballon([4, 0, 2, 1, 2])
0.0
```

De vijf ballonnen wil je opvullen, maar sowieso zal één ballon leeg blijven...