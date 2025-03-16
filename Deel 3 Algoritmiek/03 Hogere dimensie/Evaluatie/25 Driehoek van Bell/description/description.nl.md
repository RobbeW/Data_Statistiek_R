De driehoek van Bell is een driehoek, gelijkaardig aan die van Pascal. 

Deze driehoek wordt als volgt opgebouwd:

- start helemaal bovenaan met de waarde 1;
- start elke rij met de laatste waarde van de vorige rij;
- vul telkens de som van het vorige element en het daarbovenliggende element in.

Hieronder vind je een voorbeeld van range 4.

![De driehoek van Bell.](media/image.png "De driehoek van Bell."){:data-caption=De driehoek van Bell." .light-only width="300px"}

![De driehoek van Bell.](media/image_dark.png "De driehoek van Bell."){:data-caption=De driehoek van Bell." .dark-only width="300px"}


## Gevraagd
Schrijf een functie `driehoek(zijde)` die gegeven de horizontale (of vertical) zijde van de driehoek een twee-dimensionale lijst maakt met de getallen uit de driehoek van Bell. 

Bestudeer grondig onderstaand voorbeeld.

#### Voorbeeld

```python
>>> driehoek(5)
[[ 1],
 [ 1,  2],
 [ 2,  3,  5],
 [ 5,  7, 10, 15],
 [15, 20, 27, 37, 52]]
```
