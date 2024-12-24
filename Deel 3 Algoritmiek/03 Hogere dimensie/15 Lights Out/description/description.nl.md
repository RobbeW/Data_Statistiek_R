<a href="https://en.wikipedia.org/wiki/Lights_Out_(game)" target="_blank">Lights Out</a> is een spel bedacht in 1995. Ongetwijfeld heb je dit al eens gespeeld. Bij de start van het spel worden een willekeurig aantal lichten in een rooster aangezet. Telkens je op één van de lichten drukt, wissel je de status van dit licht **en** alle omliggende lichten. Het doel van het spel is om alle lichten uit te schakelen.

<iframe width="279" height="449" src="https://www.puzzle-binairo.com/binairo-6x6-easy/?e=MDo2NjksNDkw" frameborder="0" />

## Gevraagd
Schrijf een functie `lights(rooster)` die gegeven een uiteindelijk oxo speelveld bepaalt wie de winnaar (of geen winnaar) is.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> lights([[1, 0, 0, 1, 0], 
            [0, 1, 1, 0, 0],
            [1, 0 ,0 ,0, 0],
            [1, 1 ,0 ,1, 0],
            [1, 1 ,1 ,1, 1]])
"Speler X wint."
```
