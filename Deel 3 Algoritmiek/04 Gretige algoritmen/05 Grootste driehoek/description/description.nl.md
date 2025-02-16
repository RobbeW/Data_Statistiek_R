
## Gevraagd
Gegeven een lijst met mogelijke zijden van een driehoek, zoek dan de omtrek van de grootste driehoek die je kan vormen met deze zijden.

Schrijf een functie `grootste_omtrek(zijden)` die gegeven een lijst met (niet gesorteerde) zijden, de grootst mogelijk omtrek retourneert. Is het niet mogelijk om een driehoek te vormen, dan retourneer je `0`.

#### Voorbeelden

```python
>>> grootste_omtrek([2, 1, 2])
5
```
Je kan immers een driehoek maken met zijden 1, 2 en 2 en deze heeft als omtrek 5.


```python
>>> grootste_omtrek([1, 2, 1, 10])
0
```
Met deze zijden kan je nooit een driehoek vormen. De zijden 1, 2 en 1 vormen geen driehoek. De zijden 1, 1 en 10 ook niet. En de zijden 1, 2 en 10 ook niet.


{: .callout.callout-info}
>#### Tip
> Je zal de **driehoeksongelijkheid** nodig hebben. 
>
> Drie zijden a, b en c vormen enkel een driehoek indien a + b > c, a + c > b en b + c > a.