Stel dat je een 2D rechthoekig rooster hebt, sommige cellen bevatten een 'appel' `a`, anderen zijn leeg `" "`. De grond wordt voorgesteld via een `#`, er is altijd een laag *grond* onderaan in het rooster.

Implementeer een simulatie van de zwaartekracht, zodat alle appels recht naar beneden vallen, mogelijks op elkaar gestapeld.

![Vallende appels.](media/apples_anim.png "Vallende appels."){:data-caption=Vallende appels." height="200px"}

## Gevraagd
Schrijf een functie `appels(rooster)` die gegeven een ingevuld `rooster` de uiteindelijke situatie bepaalt.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeeld

```python
>>> appels([[" ", " ", " ", "a", "a"],
            ["a", " ", "a", " ", " "],
            ["a", " ", "a", "a", " "],
            [" ", " ", "a", " ", " "],
            [" ", " ", " ", "a", "#"],
            [" ", "#", "#", " ", "#"],
            ["#", "#", "#", "#", "#"]])
[[" ", " ", " ", " ", " "],
 [" ", " ", " ", " ", " "],
 [" ", " ", "a", " ", " "],
 [" ", " ", "a", "a", "a"],
 ["a", " ", "a", "a", "#"],
 ["a", "#", "#", "a", "#"],
 ["#", "#", "#", "#", "#"]]
```

{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *Falling apples*, ICPC Mid-Central Regional (2016).
