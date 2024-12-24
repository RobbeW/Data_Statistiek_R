<a href="https://en.wikipedia.org/wiki/Lights_Out_(game)" target="_blank">Lights Out</a> is een spel bedacht in 1995. Ongetwijfeld heb je dit al eens gespeeld. Bij de start van het spel worden een willekeurig aantal lichten in een rooster aangezet. Telkens je op één van de lichten drukt, wissel je de status van dit licht **en** alle omliggende lichten. Het doel van het spel is om alle lichten uit te schakelen.

<iframe height="300" style="width: 100%;" scrolling="no" title="Lights Out Game" src="https://codepen.io/pbogdan/embed/jbRMpN?default-tab=html%2Cresult&theme-id=dark" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true">
  See the Pen <a href="https://codepen.io/pbogdan/pen/jbRMpN">
  Lights Out Game</a> by Bogdan (<a href="https://codepen.io/pbogdan">@pbogdan</a>)
  on <a href="https://codepen.io">CodePen</a>.
</iframe>


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
