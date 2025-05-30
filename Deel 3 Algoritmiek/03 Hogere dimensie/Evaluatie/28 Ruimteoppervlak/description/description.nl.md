Een stapeling van blokken met zijde 1 kan in een rooster weergegeven worden. Elke waarde in het rooster stelt hierbij een toren, opgebouwd uit evenveel blokjes voor.

Zo stelt dit rooster nevenstaande stapeling voor.

![Een blokkentoren.](media/image1.png "Een blokkentoren."){:data-caption=Een blokkentoren." .light-only height="200px"}

![Een blokkentoren.](media/image1_dark.png "Een blokkentoren."){:data-caption=Een blokkentoren." .dark-only height="200px"}

Als de blokken aan elkaar worden gelijmd, wat is dan de totale oppervlakte van de zichtbare vlakken? Het grondvlak telt hierbij mee.

## Gevraagd
Schrijf een functie `oppervlakte(blokken)` die gegeven een rooster met hoogtes van de verschillende torens, de totale oppervlakte van de zichtbare vlakken bepaalt.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> oppervlakte([[3, 4],
                 [1, 2]])
34
```


```python
>>> oppervlakte([[1, 1, 1],
                 [1, 0, 1],
                 [1, 1, 1]])
32
```

Dit stelt deze constructie voor:

![Een blokkentoren.](media/image2.png "Een blokkentoren."){:data-caption=Een blokkentoren." .light-only height="150px"}

![Een blokkentoren.](media/image2_dark.png "Een blokkentoren."){:data-caption=Een blokkentoren." .dark-only height="150px"}
