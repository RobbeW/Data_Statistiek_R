<a href="https://en.wikipedia.org/wiki/Lights_Out_(game)" target="_blank">Lights Out</a> is een spel bedacht in 1995.
Ongetwijfeld heb je dit al eens gespeeld. Bij de start van het spel worden een willekeurig aantal lichten in een rooster aangezet.
Telkens je op één van de lichten drukt, wissel je de status van dit licht **en** alle omliggende lichten. Het doel van het spel is om alle lichten uit te schakelen.

<iframe width="100%" height="210" src="https://dieterpi.github.io/dodona-lights-out/" frameborder="0" ></iframe>

## Gevraagd
Schrijf een functie `lights(rooster, kliks)` die gegeven een rooster en een **lijst** met coordinaten van lichten die in deze volgorde aangeklikt worden, het uiteindelijke rooster bepaalt.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> lights([[0, 0, 1, 0], 
            [0, 1, 1, 1],
            [0, 0 ,1 ,0],
            [0, 0 ,0 ,0]], [(1, 2)])
[[0, 0, 0, 0], 
 [0, 0, 0, 0],
 [0, 0 ,0 ,0],
 [0, 0 ,0 ,0]]
```


```python
>>> lights([[1, 0, 0, 1, 0], 
            [0, 1, 1, 0, 0],
            [1, 0 ,0 ,0, 0],
            [1, 1 ,0 ,1, 0],
            [1, 1 ,1 ,1, 1]], [(0, 1), (4, 2)])
[[0, 1, 1, 1, 0], 
 [0, 0, 1, 0, 0],
 [1, 0 ,0 ,0, 0],
 [1, 1 ,1 ,1, 0],
 [1, 0 ,0 ,0, 1]]
```
