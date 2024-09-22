Een strategiespel wordt gespeeld met n personen rond de tafel. Er worden verschillende ronden gespeeld, speler 1 speelt eerst, daarna speler 2, enz... Nadat speler n speelt begint de volgende ronde.

Elke speler verdient een aantal punten (Victory Points) nadat hij of zij gespeeld heeft. Na alle ronden wordt het totale aantal punten berekend. In het geval van een gelijke score wint de speler die het laatst speelde.

![Victory Points scoren.](media/vp.png "Victory Points scoren."){:data-caption="Victory Points scoren." width="40%"}

Gegeven het aantal spelers en de verschillende punten die elke speler elke rond kon winnen, bepaal dan de winnaar.

## Gevraagd
Schrijf een functie `winnaar(n, puntenlijst)` dat dat gegeven een aantal spelers `n` en een lijst met punten `puntenlijst` (waarvan de lengte uiteraard een veelvoud van n is), bepaal dan de winnaar.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> winnaar(3, [1, 1, 1, 1, 2, 2, 2, 3, 3])
3
```

De eerste ronde waren de punten `1`, `1` en `1`. De tweede ronde `1`, `2` en `2` en de laatste ronde `2`, `3` en `3` punten. Dit leidt tot `4` punten voor speler één, `6` punten voor speler twee en tot slot `6` punten voor speler drie. Dit betekent gelijkspel tussen speler twee en drie. Gezien speler drie de laatste speler was die gespeeld heeft wint deze het spel. 


```python
>>> winnaar(2, [0, 0, 1, 0, 2, 0])
1
```
De scores in de ronden waren `0` en `0`, daarna `1` en `0` en tot slot `2` en `0`. Het is duidelijk dat speler één wint.


{: .callout.callout-info}
>#### Tip
> Gebruik de `%`-operator om het spelernummer te vinden...


{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *Strategy Game*, Universiteit van Valladolid (UVa). 
