Onderstaande reeks is één van de eerste oneindige reeksen die bepaald werd in de geschiedenis van de wiskunde. De Griekse wiskundige Archimedes bepaalde de som hiervan reeds in 200 voor Christus.

$$
\dfrac{1}{3} = \sum_{n=1}^\infty \dfrac{1}{4^n}
$$

Er bestaat een *ontroerend* mooi meetkundig argument voor deze reekssom. In onderstaand vierkant stelt het oranje deel deze oneindige som voor, eerst één vierde, daarna één zestiende, enz... De groene en blauwe oppervlaktes werden echter net op dezelfde manier opgebouwd. Alles samen krijg je dus de oppervlakte van het volledige vierkant. Dat betekent dat één kleur één derde van het volledige vierkant vormt.

![De som van Archimedes](media/image.png "De som van Archimedes"){:data-caption="De som van Archimedes" .light-only width="20%"}

![De som van Archimedes](media/image_dark.png "De som van Archimedes"){:data-caption="De som van Archimedes" .dark-only width="20%"}

## Gevraagd

- Maak een functie `archimedes(aantal)` waarbij `aantal` het aantal termen uit de som voorstelt. Zo geldt dat `archimedes(3)` overeenkomt met 

$$
\sum_{n=1}^3 \dfrac{1}{4^n} = \dfrac{1}{4} + \dfrac{1}{16} + \dfrac{1}{64} \approx 0,328\ldots
$$

- Laat R het resultaat van de som afronden op **9 cijfers na de komma**.

#### Voorbeelden

De eerste `3` termen van de som optellen resulteert in:

```R
> archimedes(3)
[1] 0.328125
```

De eerste `10` termen van de som optellen resulteert in:

```R
> archimedes(10)
[1] 0.333333
```
